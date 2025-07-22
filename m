Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C792F32
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753169994; cv=none; b=ZuRH/PTwapsSFmB/BMin8t+PTTkyvHhJXRAyAo6qLaVP7FDzCAaqqZABFg4HUZIHaiD36aJV6JA1TNnhhDPDk4hAiTG7C23Cbo+pTuMVcli8qA46BK5ZdqkFt2Y1cgIHceHNmj8WCD0dcXXHHRtHZcS5MsJKNGO073szu/AJyEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753169994; c=relaxed/simple;
	bh=EzxLE03EtkOmTTEvFpq4VPCSnbfCCW4kGE/IsCIuMJ4=;
	h=To:Subject:From:Message-Id:Date; b=RCb7DRix9GmoB0iOemCX9p3HTkG0VGMfDq7r0Y8JWgEHEGgto6MZ6syC1dHlVcHI37Sm8mW0J7YagP2DUlzxZQ0vbfQ2PyfhLTUnRvMqLf6wQDcHPSK1KA7O6wLge1ZNuRSKp6RERqrFGhnvXtA4VEt5a7lLCvs/ZnkV+aTwyV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxOW4uhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxOW4uhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0946C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753169993;
	bh=EzxLE03EtkOmTTEvFpq4VPCSnbfCCW4kGE/IsCIuMJ4=;
	h=To:Subject:From:Date:From;
	b=KxOW4uhD/oUEcK6UINCcSvwLbuWzj2CeSjfyUZA8Kd+62428c1CISJ0R4FINXMiGR
	 a7p7OqjLp61qig30y/+xDrajfSP8G4/3jAuHlo2BtqpUEkSp24VIg7Wm6iwdf1UVg3
	 kL2darT4fOF+G3djofTMFdg5jhYkv3kEWELQJs4HhsRULZ/2Dpznu0GnUx4rSCEw1P
	 7fokETSC1KTdRz62xgPhjPIc4tsIHyVkofKO0aYr7SFeH71379S2xQMxhy5Q/fmMwj
	 zfrgXkcLOn0NHwSaFzzxFys+c1zFu9ry/vpfpTJMieVt2MGP8/47AWKdpUz2ley2Dd
	 IbqyuT+wimXfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9037EC83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316999358.25874.18325205174173003909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4087ab27f18c8ec27884fedb4ed138efba71fac4f72e25d2a7bae5c78ac1b289
Date: Tue, 22 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753169993
