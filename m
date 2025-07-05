Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A532E36FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751696394; cv=none; b=H+MvPQf1thynniwUzKISyeYAx1qshSlODSMf5YwPM6k785jRtQ/s972sLzKp9cVEB0N+TYcDHhZk7HUBIkRMegHPT7DASkxf0MMnYOT+UbNQ4CVJCUP8h0f3LqeHNl5vAozB2yiDZoMjuwWZA3qgmTypsN5AJnW2oYgEq/hyfbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751696394; c=relaxed/simple;
	bh=ZBGPNfAZw17KqTAV2Wai8Eh8X0bin2uAfNsGAeSsJU4=;
	h=To:Subject:From:Message-Id:Date; b=JRjq0pFnu0EI3+PEqKfgL7PVRyHMmrNkclXX+uDa4O9N5BUgyxgtUK2Z44fSOGNRnLT+1WW8ncDYVOcSPyp5LyUqYqUfeTm/GC9+Xd2AQYH80Xk8Cfn1kzRWraLu0voDZ9BsuEASPzbY8lY34ILGnNNoRujaePjiTZunuff+fIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shECKtOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shECKtOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEC4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751696393;
	bh=ZBGPNfAZw17KqTAV2Wai8Eh8X0bin2uAfNsGAeSsJU4=;
	h=To:Subject:From:Date:From;
	b=shECKtOPSiBcIyz7wXCMOD701J+31hLprEemqjNDFLNy1gcHjCGXR6Qq0t6q3D/bY
	 D0vr6g5sh0kvmOvGk9Sm6gStES2YLrZP91K00Ohn6LbCc+MZyQBcrdn9k7isLSbO+a
	 uMKU90EZgFY3ZTtKJVsUjOKMr65pwQECQpZ4+DDrDpTjrLCReJIJ6dh+uyh0U8Dzdh
	 KMmVMJZLGKzL7Jdv0aC0LuWT9JwKofA0iFLbm7uuScwKD23QCM02ZVDbuF7PBO/g/w
	 YU6x/OGM/MaJQV0zzlQ22oju1YLAQOtnioNN/flsjeo7EMVkJT4mlkQogOoXyAhJ3k
	 NeD87GW/G4iXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFAC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169639357.27421.5985474840010106621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc3b8e25b5f1553980ec8f82220a97da3166e9cc150d022c3cb2b77ef8e2f316
Date: Sat, 05 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751696393
