Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF3817A2F0
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751839794; cv=none; b=hedILD2YeeTJ32ULHQJvrmS3if9/UccW28m7EuckwOSRu8YlX9O+0K5lyrpEm52udjNRxAG/OULu9LDn9FzIr9agK4kEPd5l+fw8LMzv4lu/ewAgYEvvMosyjDad8AoG4tp8ZpLgMEAYXj4WpaavzXrVo5zeVA3Xkruk3+mGTZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751839794; c=relaxed/simple;
	bh=uD/hIL+CJOjfBTqPvfoo7PaRYBpPtA2OwlVlJPT180I=;
	h=To:Subject:From:Message-Id:Date; b=smu5pH/x8RiAZOY7D5DOTuqu2xTqbCV46tgQE+RvD52UGVBdGP8hrMBmwvXUXb8kPa7izTWiXf+y8rZAjCe/ES1MEWSbg8rV8WbYusLRKZ3dEnJx4e3FQjg1wgzRN+HGg7gXUJ59lNeTqWLahiIQ+laRcTvBXhH4iBq43ITzI20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeSjCI5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeSjCI5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5948C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751839793;
	bh=uD/hIL+CJOjfBTqPvfoo7PaRYBpPtA2OwlVlJPT180I=;
	h=To:Subject:From:Date:From;
	b=PeSjCI5UIjS8BsBLrgHJtEgFAZQ0sjPKaRLtWdv8PjCSP9hTft/tARghpVlZ9hOpz
	 BAS/3g6ijVD8RmCbEmifkimQrByEDVT0XPWMVab0jlClgxuAm8TgrPXYGnM47zIY5z
	 Tev6npcKR4p0rmxoPdh2ofjPnDVoVWdebhJPVH4qRkwJwJlep08+x3fkI9Ho95V7Di
	 6UNJ6umj63QdfhE3js1O+37HBwumJvujCGXZ+EO3zt+AmxsypO/rCMi2SdLRWU6ueP
	 fln+eWxoigFT6/siR5XRXV2bEOUJinGv79SNlNuyuLNwqXvkXbJ5AGfpJJSzhlbu12
	 CDDSvzf/90Ohg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA0C83F07
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183979357.29328.13414428311090020611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5cf86c51a3a0b7484142268720868149f58ccefa8ae290d9da8707599003b3
Date: Sun, 06 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751839793
