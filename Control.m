% This script sets the controller parameters for the SLS 3-D Printer

%============================================%
% 			Controller Gains                 %
%============================================%

% PID Values
% ----------------------
% No more than 3 significant figures per gain value.

Ku0 = 7.17*10^(-2);
Ku1 = 1.83*10^(-3);
Kp0 = (1.95)*(Ku0);
Kp1 = (49.17)*(Ku1);
Ki0 = (96.77)*(Ku0);
Ki1 = (0)*(Ku1);
Kd0 = (Ku0);
Kd1 = (Ku1);

PID0 = [Kp0 Ki0 Kd0];
PID1 = [Kp1 Ki1 Kd1];

% Feedback Sensor Values
% ----------------------
% The saturation voltage of the sensors is 5V. 
% The sensor angles will be in the range of +/- 180 degrees -> +/- pi radians.
% In th Jnt Controller, the sensor gain block converts the actual angle in radians
% into a voltage by mulitplying the angle by SensV/(SensAng*RadPerDeg) which is 5 Volts/pi radians
% Since unity gain is desired, the feedback gains will be the inverse of the sensor gains.
FB0 = 1/Sens0; 
FB1 = 1/Sens1;

%============================================%
% 			Set-Point Time Vector            %
%============================================%

% The Time Vector is stored in a variable called "Time".
% It's initial value is equally spaced for all samples and is
% set in TRAJECTORY.M
%
% Redefine this vector here to optimize the build time of the part.
% You can define it analytically or type in the elements manually but
% you must not change the length because it must contain one value for
% each Xd/Yd position pair.
% In the Matlab window, enter "length(Time)" to see how big it is.

% The Time vector must range from 0 to TotalTime

%Time       = 0:SampleTime:TotalTime;       % DO NOT CHANGE TotalTime
