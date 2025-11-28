Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20989243956
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764294174; cv=none; b=KOSfZNdvEAUtx0W0t5Absl5oC/i06Oe7mklo31022rzKDs1rVtXQolz0eTrWYyLXrGs16QvCN7TGJV+z7a5r14eUMaCvEmCnchiOHk5WMY/4jb5c4oYU3LptH79DOiWKtaTXFG6OsJVJJDRsJ4YDvAp004EQRvaDDCO17nmJJo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764294174; c=relaxed/simple;
	bh=xXGfGdbIppQeuX8gNqQOUGBON2+7mSwl1h2KZ5Dx1sU=;
	h=To:Subject:From:Message-Id:Date; b=PNTE0NOPc8TQIctt2x0dvF5HlQ5yhzch2Rly8GxAn/METudS5DAdrG91X/FA9VSMWoOYbNpUTgQxAzxVyxx1A6jXWip1hUp/0HG1ZY4cgG+4n5y50Pw947AlgD7kjEZ8BcpwYis74Kfdhc6I3uMLmzkCKjHLPJ9OT7IBCEZOFlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHg9w81J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHg9w81J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A330FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764294173;
	bh=xXGfGdbIppQeuX8gNqQOUGBON2+7mSwl1h2KZ5Dx1sU=;
	h=To:Subject:From:Date:From;
	b=VHg9w81JTYy9yoI1JXn1yJTnx0D0T5w4iDNp/VT44Oun1cF6R/2y/evhWoDNQIGmA
	 N12OBgTQoKy1AzbL8sps+5Tx5OOPnoexhyN10hI8X0vYtj3xbqqD8DSAU5meT8wpNC
	 1Oa2xIVWOKouxJSxYg/R5L82O/a6uIIUvG1g2c9Zf1SlJxA+AJnHir2qSHv+GBXIp6
	 hTU0pVf+nmKwzysscB/GaiyxQKm5kLCRKGrY2Ri0OfaCKeYo41w2jPYp8MldOVV03D
	 xrKTMQkhCozUhJaFxJf7HKjU8OYe24WN6DIktUHZ50Jg6mdYOsIlV3G2lcihIbk3mz
	 SNFi2kpeT2ZWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA2D111A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429417358.2382.11573226007707807317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1550c9b4dd3f49e68eaf58c7523bba47a283e29883ceac3e0ef74cc4e0873e2
Date: Fri, 28 Nov 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764294173
