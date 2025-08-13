Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A942D8364
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755128994; cv=none; b=WZoayxphKF18whNptsGvMDVkDWJQVSdZ2BxXtjHWJplv59w5sao810iincAe0E5ZM3lZL4zLxH9/2EQLJFvhsAK9/lsU5Sd33WzvgPlMls0XKX1SGoahV0Z7OT4XNGy/Cg946arFD+JoHYHhazdDA+2k3332QMBP+9+o4Oe5TSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755128994; c=relaxed/simple;
	bh=Qawy9LKTmLmLSUKK4sdFKJ0XJM5m1ziGVAyWiQEbwPU=;
	h=To:Subject:From:Message-Id:Date; b=pVs080VD9tKt4u9/jnaFaR6vgCtiG+WWyv5ZTjr4QOTpEL097dRsyGSuoySCciVgYU7vdh/8anpi4dIO+M+ZpQ6q/aGzrxienYlzWY02SzT6wGpqvMV1RooVMi0mizrjICkEmGh42L0emiicqmo2V5Zll7Q8ay9CLrBipODTyxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyNlI8NY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyNlI8NY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0917C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755128993;
	bh=Qawy9LKTmLmLSUKK4sdFKJ0XJM5m1ziGVAyWiQEbwPU=;
	h=To:Subject:From:Date:From;
	b=qyNlI8NYZPG4QnbS2cov0dGymQfARkasWayeTYkZ4E2De1VzC24kIqpP17xEjwO9d
	 24FzzSFtwa0KEIwet7sbzY6Fzf9WZqS+nXJCBRddCAWXQW/4GU+/ghJI42dADjUVl3
	 qlJVMcX3NzNsk1/VsI70vrJtsiIVHhr3CGUuBRr2cCfciW/pup65OqBFPjUmWHvYpA
	 mmQidSxgdpUgIohKlTVxeTRYM7SaZWNduvncVprg0FzljYSoDLc9QWXGeWl95Worgk
	 JjP3WAnpawjPXDqKK/S9Uo8i97Gs6p3NX1onR5zpieUHrEtOSQf4qA79arzUiXBQJS
	 NbiMN+kD9A1Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91851C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512899357.27500.9247761744745109472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21282b53a2ff38a005b252e857f3cd5fd65c1337ca6d0bcf7e7980bb93878f6
Date: Wed, 13 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755128993
