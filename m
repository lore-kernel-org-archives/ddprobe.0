Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD4C2EBDFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757371795; cv=none; b=nUah9gqAu6MfYdEXDLqOt/wfgipRFtMYxp4ZDbCMFWyn0JPcbTdntFcOlnGLB5zhLbxe/e6s0/2Xks5mAaSmZvPDXMWCx++y4x/T8494BwYgumZg3YevCdqKiF8UqQ9/9admflvQD+rdycK5znkLwUKvu785sNHgCW2J4VQd0+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757371795; c=relaxed/simple;
	bh=bDVY4OUVHFxG9865ecxJexf7u5PPAWL9qjY/wHH1ysI=;
	h=To:Subject:From:Message-Id:Date; b=W1BcNDrtElVWedMvClYFo9LLcABRD1r+12ii3XmhdLlUDNNvU8J1B20KtzkuHF3P24JXTpAnq1cPwgSIIPPtXYflNlvixF4e2K7XL3eQiL6D4Dj+HmVY0tZ6UogMQPRa6wQR8wo0oZKi4CkxDn57tvGyBSw6Pe1WDL3viyfUybU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvZSR1kB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvZSR1kB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3193C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757371793;
	bh=bDVY4OUVHFxG9865ecxJexf7u5PPAWL9qjY/wHH1ysI=;
	h=To:Subject:From:Date:From;
	b=OvZSR1kBG2+l0pHXwbuM7cyZRLi+19mhU+fBWeHE2hGkYqyn55QEJJPVKfEZHdt9O
	 g2FnKCgAcN/YpmT+zT9+VT5P5onQWqxOsM8NAzDg7wFhlp6XR7vgrrf4iAuf7KATre
	 7NLx75J7EYP0vA2ykI9Ny3eSUBoj4emrTCLYUfJW6FDUehTN9AGms7Zl1T76BNt46G
	 9NhqmxrpO8n8CAYtSYTF2Dt7xyTG2JttBhDMEAuy+tZCAa5XJv50Utek8dyFdEb7iL
	 mWrneQe20PYMpz8AbbkMh146mVovM/JcplywUTpZQllaskd1imFokiMXpYyTH76Bki
	 s+mqgEVSF7A9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F37CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737179357.10760.8897760322653054129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c2603cbe6a5b37d12af79221190d9a2da35febe506d9550598f3d48f0b5d3c
Date: Mon, 08 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757371793
