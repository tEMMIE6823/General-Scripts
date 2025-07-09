local z = Instance.new
local model = z("Model")
local head = z("Part", model)
local torso = z("Part", model)
local leg1 = z("Part", model)
local leg2 = z("Part", model)
local arm1 = z("Part", model)
local arm2 = z("Part", model)
local root = z("Part", model)
local headmesh = z("SpecialMesh")
local face = z("Decal")
local hum = z("Humanoid", model)
local shirt = z("Shirt", model)
local pants = z("Pants", model)
local att = z("Attachment", head)
local att2 = z("Attachment", head)
local att3 = z("Attachment", head)
local att4 = z("Attachment", head)
local att5 = z("Attachment", torso)
local att6 = z("Attachment", torso)
local att7 = z("Attachment", torso)
local att8 = z("Attachment", torso)
local att9 = z("Attachment", torso)
local att10 = z("Attachment", torso)
local att11 = z("Attachment", torso)
local att12 = z("Attachment", torso)
local att13 = z("Attachment", leg1)
local att14 = z("Attachment", leg2)
local att15 = z("Attachment", arm1)
local att16 = z("Attachment", arm1)
local att17 = z("Attachment", arm2)
local att18 = z("Attachment", arm2)
local att19 = z("Attachment", root)
local mot1 = z("Motor6D",torso)
local mot2 = z("Motor6D",torso)
local mot3 = z("Motor6D",torso)
local mot4 = z("Motor6D",torso)
local mot5 = z("Motor6D",torso)
local mot6 = z("Motor6D",root)
local wel1 = z("Weld",torso)
local wel2 = z("Weld",torso)
local wel3 = z("Weld",torso)
local wel4 = z("Weld",leg1)
local wel5 = z("Weld",leg2)

local function InsertAsset(assetId, model, attachPartName, cframeOffset, sizeScale)
    local success, asset = pcall(game.GetObjects, game, "rbxassetid://" .. assetId)
    if not success or not asset or #asset == 0 then return end
    asset = asset[1]

    local targetPart = model:FindFirstChild(attachPartName)
    if not targetPart then return end

    if asset:IsA("Accessory") then
        local handle = asset:FindFirstChild("Handle")
        if not handle then return end
        
        local mesh = handle:FindFirstChildWhichIsA("SpecialMesh") or handle:FindFirstChildWhichIsA("Mesh")
        if mesh and sizeScale then
            mesh.Scale = mesh.Scale * sizeScale
        else
            warn("No mesh found inside Handle to resize")
        end
        if attachPartName == "Head" and not handle:FindFirstChild("HatAttachment") then
            local att = Instance.new("Attachment")
            att.Name = "HatAttachment"
            att.Position = Vector3.new(0, 0.5, 0)
            att.Parent = handle
            if not targetPart:FindFirstChild("HatAttachment") then
                Instance.new("Attachment", targetPart).Name = "HatAttachment"
            end
        end

        asset.Parent = model
        local ImWeldingitImWeldingitSoGoodOurghhh = Instance.new("Weld")
        ImWeldingitImWeldingitSoGoodOurghhh.Part0 = handle
        ImWeldingitImWeldingitSoGoodOurghhh.Part1 = targetPart
        ImWeldingitImWeldingitSoGoodOurghhh.C0 = cframeOffset or CFrame.new()
        ImWeldingitImWeldingitSoGoodOurghhh.Parent = handle
        handle.CanCollide = false
    end
end

for i,v in next,{head,torso,leg1,leg2,arm1,arm2,root,headmesh,face,hum,shirt,pants} do 
    v.Parent = model 
end
for i,v in next,{head,torso,leg1,leg2,arm1,arm2,root} do 
    v.Anchored = false
    v.CanCollide = true 
	v.Color = Color3.fromRGB(255, 255, 255)
end

local cf = CFrame.new -- i am not typing allat
model.Name = "DummyCharacter1"
torso.Name = "Torso"
torso.Size = Vector3.new(2, 2, 1)
att5.CFrame = cf(0, 0, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att5.Name = "BodyBackAttachment"
att6.CFrame = cf(0, 0, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att6.Name = "BodyFrontAttachment"
att7.CFrame = cf(-1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att7.Name = "LeftCollarAttachment"
att8.CFrame = cf(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att8.Name = "NeckAttachment"
att9.CFrame = cf(1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att9.Name = "RightCollarAttachment"
att10.CFrame = cf(0, -1, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att10.Name = "WaistBackAttachment"
att11.CFrame = cf(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att11.Name = "WaistCenterAttachment"
att12.CFrame = cf(0, -1, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att12.Name = "WaistFrontAttachment"
mot1.Name = "Left Hip"
mot2.Name = "Left Shoulder"
mot3.Name = "Neck"
mot4.Name = "Right Hip"
mot5.Name = "Right Shoulder"
mot1.C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
mot2.C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
mot3.C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
mot4.C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
mot5.C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
mot1.C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
mot2.C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
mot3.C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
mot4.C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
mot5.C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
mot1.Part0 = torso
mot2.Part0 = torso
mot3.Part0 = torso
mot4.Part0 = torso
mot5.Part0 = torso
mot1.Part1 = leg1
mot2.Part1 = arm1
mot3.Part1 = head
mot4.Part1 = leg2
mot5.Part1 = arm2
wel1.C0 = cf(-1, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
wel2.C0 = cf(-1, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
wel3.C0 = cf(1, 0, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
wel1.C1 = cf(0.5, 0.850000381, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
wel2.C1 = cf(0.5, -0.300001144, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
wel3.C1 = cf(-0.5, -0.300001144, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
head.Name = "Head"
head.Size = Vector3.new(2, 1, 1)
att.CFrame = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att.Name = "FaceCenterAttachment"
att2.CFrame = cf(0, 0, -0.6, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att2.Name = "FaceFrontAttachment"
att3.CFrame = cf(0, 0.6, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att3.Name = "HairAttachment"
att4.CFrame = cf(0, 0.6, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att4.Name = "HatAttachment"
leg1.Name = "Left Leg"
leg1.Size = Vector3.new(1, 2, 1)
att13.CFrame = cf(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att13.Name = "LeftFootAttachment"
wel4.Name = "Snap"
wel4.C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
wel4.C1 = cf(-0.5, -1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
leg2.Name = "Right Leg"
leg2.Size = Vector3.new(1, 2, 1)
att14.CFrame = cf(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att14.Name = "RightFootAttachment"
wel5.Name = "Snap"
wel5.C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
wel5.C1 = cf(0.5, -1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
arm1.Name = "Left Arm"
arm1.Size = Vector3.new(1, 2, 1)
att15.CFrame = cf(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att15.Name = "LeftGripAttachment"
att16.CFrame = cf(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att16.Name = "LeftShoulderAttachment"
arm2.Name = "Right Arm"
arm2.Size = Vector3.new(1, 2, 1)
att17.CFrame = cf(0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att17.Name = "RightGripAttachment"
att18.CFrame = cf(0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
att18.Name = "RightShoulderAttachment"
root.Name = "HumanoidRootPart"
root.Size = Vector3.new(2, 2, 1)
root.Transparency = 1
att19.Name = "RootAttachment"
att19.CFrame = cf(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
mot6.Name = "RootJoint"
mot6.C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
mot6.C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
mot6.Part0 = root
mot6.Part1 = torso
mot6.Parent = root
headmesh.MeshType = Enum.MeshType.Head
headmesh.Scale = Vector3.new(1.25, 1.25, 1.25)
headmesh.Parent = head
face.Texture = "rbxasset://textures/face.png"
face.Face = Enum.NormalId.Front
face.Parent = head
hum.Name = "Humanoid"
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=8231083597"
pants.PantsTemplate = "http://www.roblox.com/asset/?id=8231088930"
model.PrimaryPart = root
model.Parent = workspace
root.Anchored = false

model:SetPrimaryPartCFrame(CFrame.new(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(10,0,0)))



--InsertAsset(
--    id here,
--    model,
--    "Head",
--    cf(0, -0.2, 0.1) * CFrame.Angles(0, math.rad(180), 0),
--    Vector3.new(1.2,1.2,1.2)
--)
