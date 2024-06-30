Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0DF2B9A2
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719750263; cv=none; b=DPP3zaZNZTzD9ynd9+dhHN1dFyzaiV+YOuybrjl7xyK8rydKF0QYE65TIWoKcpJXplcv31vsHXemrLZyBM4dsuaDCGcSko8MJHclY+aa/S2XSNUH0CT1BxEl6+BVy62u2r0rRofbBjsjbcwF/6oHzDUIOnVyaJzZaxG2p9JoFQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719750263; c=relaxed/simple;
	bh=eymbd7tZizbIzmiGTwgeyV11U1jFnrvO1UaDFZ9FXF4=;
	h=To:Subject:From:Message-Id:Date; b=kvpsbDt4uN6BEkGebGNEErdC74ofLGxtF9vdx1sKEG5fj9fC6klEDnvLOy0E+opWOu1ivrdCukMJmiwminKrRHLgEuLX5DrcynZk+noegOhwQEXGJ4md2mmUrSuy/BM/KQImClDIm5Xx0fQs1J01NJf5/Qe0qtSCsBsFZDNCibk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiFAz1Oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiFAz1Oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD87BC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719750262;
	bh=eymbd7tZizbIzmiGTwgeyV11U1jFnrvO1UaDFZ9FXF4=;
	h=To:Subject:From:Date:From;
	b=uiFAz1Ohj5DIe2SDbBBFgr9ZTXvG9VjNB8tv32gKetRZ/WCP7BNzzm6N1iivkIMZ1
	 V4AJW3bQm7XTZJRJnuxs8AIKg+xK02l6almghviqaOyNSRpTjmm864zIxu4RrVcIvD
	 BVAxKGxlqDwNmr1hsyULbLOmCuEIWfV6aSJCFH4LKaEUora0GxcfQN/ylWrujH/xhK
	 kyeH8qHyKnR4EjejQLQXhEtIOzlXFZpRtBG6pzURelr3T5r1m3mSabvS45pDyJEPLl
	 302E52sqtRArYHCHHGbJDm8frzo86SVQrG5JZMSSQ3gAtMQtAwx5YPzJot6kEY7o/A
	 cE8gR5vn88/Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AB5C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975026281.20089.7653468293696562749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b2cf6b031fa428ce647409afb0ea6ff1e0771d703deea3cb8b842204c93837
Date: Sun, 30 Jun 2024 12:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719750262
