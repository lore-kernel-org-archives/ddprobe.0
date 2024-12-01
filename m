Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536F38BE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733031954; cv=none; b=NnP7HsKVK0GgZDIw9q7Ss2BBvUACv6dAT44pKVWaC9M/sF66h4WSoY1A2Jx4042B1Zfz2WwiuzX6tMP8d7yglrKP2O4tlNzusumEhTVaj26NIo/ySYarrltX5G29pVM3/qsanVmRnxl9STOc0XuVdMLagaq9d2tQmDXYMpchOnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733031954; c=relaxed/simple;
	bh=PoKMyR19yh0nSWHEUkG3FvrUxgMuXVKGCFGOwaCT8BA=;
	h=To:Subject:From:Message-Id:Date; b=OEpV5J2PJYHDXyHwlBFUpkKj07aRFyZqpWJBrEguhn8Xi88WCO3RtAdq8DS3nDEPm/BB/2t8/ePAq5PprDy73BLAPiIzXkilyOoxollODQ8KOSbytKNqdGC50L778tF3Rxs5a/r6eoLlQwL7qXPLQJ13Ck+3CmmqMG1gnw5mEiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZ0mGkr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZ0mGkr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7D0C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733031953;
	bh=PoKMyR19yh0nSWHEUkG3FvrUxgMuXVKGCFGOwaCT8BA=;
	h=To:Subject:From:Date:From;
	b=eZ0mGkr4hv/cJ6BrYqYKRVMy3rtcuaz/RE070tr8bHGvXQX4Z+bue68ovwgvvNy+Z
	 QIWVq3dw7MbMHfxv43NSGRsRLaY+n5ehbgoM+mSwd+sdffTl9It2ADw8U3JYb6ofIY
	 sHfbFwduJJQZtVItnxRPH6v4/hxo3d1GeSfGwoMrLFlVw2Km8XFb9UOWEIOs/HD+vp
	 fGEN4Xvt184UOtr68oi4mTaa4/MXE1Qp6GPUSPB19YS2W18okRdoA7qLNsQUkKG4JI
	 zhyL2qv2yfS5uGsx8QN1hrevzrWCCqrzg9FlT3/llpGWBdDrPCU5XtSo3R8ebrsH3K
	 omXXq2Y1VeKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5F2D735F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303195362.8650.12351553466512729490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39069408db957e17a94b71507e3264f5c054c4676a72457fa6bea5f07d1808fe
Date: Sun, 01 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733031953
