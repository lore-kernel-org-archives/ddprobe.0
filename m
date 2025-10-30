Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155133446CC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761851396; cv=none; b=PyHuODY/QfUQyEgy0TX1+V5joJ6DEz+5gesVYu0fEcpm/7HvvRo5sTC5T1iKG4t02RViPDCGUIU7uo4WU+TEqv6Zk6tJJWkNVvXFrhd+6FqAl2+ACWaNA2pgAmBj53NQZcLQBeYDMrrIIjUKBk19qxkSVGKm39tAOvjdQx8v0HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761851396; c=relaxed/simple;
	bh=TKmMBVpziwdh2hRYXJegoGTKDoQyLyE+IP64Wt+EoGc=;
	h=To:Subject:From:Message-Id:Date; b=lzixhZ2gnxMKUGIkjBlk5MlmkOs5g5xL/7bhIekhzQL6WK2NG7oDd/DzEJL41xRjexjtpe7fDxOMwRhBnQcAG8FZ0E2eJXM/0LT8h5vb0gDovbTK9hcGClH9Yq5ePkKCGu2Xb960rpuYRzxIo+g5kI0XsZOvrikzjZNrrVOCAr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lr2DRVo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lr2DRVo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F44FC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761851393;
	bh=TKmMBVpziwdh2hRYXJegoGTKDoQyLyE+IP64Wt+EoGc=;
	h=To:Subject:From:Date:From;
	b=lr2DRVo6NDeTzpe/9flvQxi0Bk58cgmxosr++flUtQrAwquM1kf7YxBckn0FB1AJy
	 g1yKAC6KRAdMR39L8+Eo4DWeyu6Hbb/7nJ6Cj8oLaKIiOH6tYWSesG7nXRv4N8X9cv
	 UaTkOthQ5epl+ZIVOOUYmz+8nHmGMTO/qUCZpZWARPKCPiDQYdP3bfta3HV1pzr1Zm
	 U30OAtdVI9nRTg8hQYEgqAEYaqgdpELYVeKxbQDvRYBMOtbcmW9upBdqpml59hH/cL
	 8VWDG9K7ufnrCoCNVjI9D9mFL5aqf4a867K8/2dsCjefXTuNj/yzJOD0RICYjgbBlm
	 Q0foOJ2Pb2N+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2FCCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185139358.9871.4644506893088479880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8a30ebf23dae2ae5f27e48eeb231d8ff915ae58e3beb2d48328d1d6916f5f9
Date: Thu, 30 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761851393
