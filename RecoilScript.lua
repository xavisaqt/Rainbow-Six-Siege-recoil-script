EnablePrimaryMouseButtonEvents(true);
function OnEvent(event, arg)
    local capsOnRecoilX = 1       -- different depending on ur sensitivity and fov
    local capsOnRecoilY = 1       -- different depending on ur sensitivity and fov
    local capsOffRecoilX = 1      -- different depending on ur sensitivity and fov
    local capsOffRecoilY = 1      -- different depending on ur sensitivity and fov

    if IsKeyLockOn("capslock") then
        if IsMouseButtonPressed(3) then
            repeat
                if IsMouseButtonPressed(1) then
                    repeat
                        MoveMouseRelative(capsOnRecoilX, capsOnRecoilY);
                        Sleep(9);
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
    else
        if IsMouseButtonPressed(3) then
            repeat
                if IsMouseButtonPressed(1) then
                    repeat
                        MoveMouseRelative(capsOffRecoilX, capsOffRecoilY);
                        Sleep(9);
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
    end
end
