Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A97E3594F
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763890314; cv=none; b=SDsq53T4VQaEdqrjzbBmaKUiCWBAa006fy4FMBRCNC6QV3Q9bPy8umpoMfN1JTSMmz69R8FIh2TAY1cq4YhDpRjfdjBiOV47CW8k/BycUIVNkGv7YLF7ph+Z1snxwdCgx1bREvkuZY42csnGFihjBwOglIjZnVd8BjRbKeRRaew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763890314; c=relaxed/simple;
	bh=vQndOAEmnPKdZ1wPiSTtIuHVFr2Tt8eFpySkvWJJo10=;
	h=To:Subject:From:Message-Id:Date; b=Lvdh1042MYW6akR39s3PWJAL5iC4PADEKor/e+1fbYA6pDxSBsnlpRySJ98daqfYfefY65n4xWLB0s04CLUMl+3exDeNAWMMQBYX+hX2Q9aTxOjwBnqVUqtngkkTB8zp5nWbzrF2x0gckwzNUTZchPWFgfIZDj0FDGg7Qy85v+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcoZjnun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcoZjnun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26C6C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763890313;
	bh=vQndOAEmnPKdZ1wPiSTtIuHVFr2Tt8eFpySkvWJJo10=;
	h=To:Subject:From:Date:From;
	b=PcoZjnunEWWIFBGcJr5ci8wqbI+D8ONW4aJN2nXRBgSEh6mwo/O+EDXPCN/NH1xzr
	 389zQgli3n3EAl1xskUyzIRLMPirORt0SaIAYng48F02xebE/8+fQcFNEf8Yvf/XBo
	 AiwitHEE2iX2WR+HIjBCIAjVqyHoUEx1QsmweJvMevm6Xhv/3B5uEN83g8jCsqnBzW
	 NXPZRKRvthK2f3GkimvADz+MwbSAPN6Kc+DBAAUTTIc47lmCGBv870oUMNzzFE0dXe
	 6CQN06ujLwh4K0bebsLHQFWWD+cQCNAx3j6F6D8vP6uhXClwBR0YDhlGnIYjdPbQxr
	 FUfREkQ1dxTtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B90CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389031358.31144.10889350737480043551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aed614eb0d8323632d504cff113499421a62466445a7a38f67365e0212d79de
Date: Sun, 23 Nov 2025 09:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763890313
