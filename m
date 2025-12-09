Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD6C32D0CC
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765302174; cv=none; b=Cp+RDMTeG/x5aqD+AJzNY4CF/v38C7Bxstuaox013v1Cd+UHbNZWTZWln9ygG6Hv4NmEnmgWgjVpxiS1ok/Vyt/fP4mAELAoRAJMo1QWrj2sDjVwJiCS2tNkcwMyL3zcvlIU9BlZZTVOz6vnVTx0Xs9c3AoTae1KptL4r18akrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765302174; c=relaxed/simple;
	bh=CgkfgTorb93v81AEc3Gxkw84dRONICIUZ+fQp4gHMIc=;
	h=To:Subject:From:Message-Id:Date; b=sVJ12fekBzlKvnh+k4uzTs6ROVjDYYB9XC+sUnBUJUYUj2KxVX/J1aUmzgrhdv61ZNq1pdceug2sod+cDfXPmmDeIfpPtnetyKcv44xgyfjrYnVp8ljTcdqfM/vWReut7H4ORazq6Mzu+oJE+3rTH5utnor8+uVBS4XadlNBM9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlp8T7S/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlp8T7S/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B98C19422
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765302173;
	bh=CgkfgTorb93v81AEc3Gxkw84dRONICIUZ+fQp4gHMIc=;
	h=To:Subject:From:Date:From;
	b=dlp8T7S/6wMcJSCDClAx4keo639fnWYRHGSpwG0nltwXeaUslz6Lhe65t33Mn/Wnt
	 qrrtA2hqDDZgL84QH1WNE4JYS9/lAwFpTjUNwY+/ZueMld0Xo3wfYBpwH2ERgPl9Ec
	 4GhU86uJgxOfvuR9MIEcExsG5E+pbnNe0SPmU29tz2STOpt99QSlIvw3be+JzpXB6M
	 skFhYX19UXl660bt2C3HiHHm8e3dNlsyo8ljMytnql8VCnWiVPPkm3F74XCp0N18PM
	 wq8GDLG0L4gbcR8aqMMbvaS4bQnnyAEjbjqa6hxm8laGV412CdEOCxGTHr+QqDoHjn
	 vLzz4ewWY62og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93071D3B98A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530217359.20508.13308626560150293484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8241bdc93d91717b866d5b904daad4c4e6752accc7d111c427173a89571c7618
Date: Tue, 09 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765302173
