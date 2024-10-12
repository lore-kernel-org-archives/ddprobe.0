Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494D538B
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728708355; cv=none; b=JJESZTd3ytr+ovpIgMxOuwLYuKgRDn/0HxEqk5ThIdvkcLi/OKjEHav6xENUiegekbuCovbHEb+wHJhlQQehCeZZRWCgufAM8psES7Vr0Y9pi/8uwrsNu7AuOj+jqmeAZzCG+wFPvBmKfk/t9TjETV/QZl3SYzzbGKcmCJoI5ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728708355; c=relaxed/simple;
	bh=dcH628Xo/G2FQdE2aR4WCpS5v9NiKpHVqoMfyJ0nPtg=;
	h=To:Subject:From:Message-Id:Date; b=BXg8GN0OtM5WomBWc26uu/z+lceRTk+29ZkeEo5u+/IdlIxJgeXriWRPoBNj+RMDQu91BFVIEsqa6KjzUrrLs1Id4z/h8vjxyhbrCsHbqMKcaIFpFFWfoQxRoatnDWRLpi2H53UbXFYnd1YicbTBUHlznP2qYLMCJ5mmeXAY1Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBpDcvwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBpDcvwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EACC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728708354;
	bh=dcH628Xo/G2FQdE2aR4WCpS5v9NiKpHVqoMfyJ0nPtg=;
	h=To:Subject:From:Date:From;
	b=iBpDcvwxRlNvwnKC8lsVtHxyWntQNPPEPasNCXzs5ri9w+z7Qdwl+pSCLJvDD+EFS
	 4WXPnQ25cGzIwVrQ7fMnfYthO+zWlHdoU77G6HMNxjuv2vh8rQBT2kpsqu1Cq78gIm
	 4NOaTBMMbKKWqqPZTRYwyzVimWe+yXhQCa6BTaQ73wTO669uOQUhP0aYYMh2bDxx11
	 Y/ijxPWKrfUOVUxraLOm4fS4FZT4efCfv0DNSX5/3Msta+v//FBdViI0HT+Wd+qvWW
	 jShCdNVd7eVHzpOZL1trk67S0GbTyeK0I62g+VU7Jx3xrkWi9F4Z0GPh0fB8kXp7qB
	 T1UEC8TxG5BGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAC8D1A431
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172870835360.23174.12547596222942367225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22e3cb7ce178b72bdae0b5db34aa0ed5fc0c00f2c5910dff2f7a4b648eae01a
Date: Sat, 12 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728708353
