local uniqueid = {}

function uniqueid.UUID(Seed: number?, LengthArray: {number}, Hypen: boolean) : string
    if Seed then
        math.randomseed(Seed)
    end

    local UUID = ""

    for Length in LengthArray do
        for _ = 1, Length do
            UUID += string.format('%x', math.random(0, 0xf))
        end
        
        if Hypen then
            UUID += "-"
        end
    end

    if uniqueid[UUID] == nil then
        uniqueid[UUID] = true
    end

    return UUID
end

return uniqueid
