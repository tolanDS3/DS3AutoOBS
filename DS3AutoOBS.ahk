#NoEnv
#SingleInstance Force

Global Recording := False
Loop
{
	PlayerCount := GetActivePlayers().Count()
	OutputDebug, % "Players in session: " PlayerCount "`nRecording: " Recording "`n"
	
	if(Recording && !PlayerCount)
	{
		OutputDebug, % "No players found, ending recording.`n"
		Send,{F9 down}
		Sleep,32
		Send,{F9 up}
		Recording := False				
	}
	
	if(!Recording && PlayerCount)
	{
		OutputDebug, % "Players found, starting recording.`n"
		Send,{F8 down}
		Sleep,32
		Send,{F8 up}
		Recording := True
	}

	Sleep,16
}
