Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFD3349B06
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768149234; cv=none; b=P5GaYelGHHDPacFMwhHG2GFoxbiDe7V0pT7RXZSAqYIs6lbEyJZVHH+IEIQPDmdtF28r8prw7Lk3T3fTpzp7m1i/y/tkzDNYgK9DB3RuuRawg2MnJXlNkegdDOgkZdppvFVMFWRCwABl6kcsIR0gNPPRQQno6YWnDrb5/Pcd474=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768149234; c=relaxed/simple;
	bh=qdUasXOdFicvjE4qx8uF+mVVweXR0EBYMu1Vs8SdpQA=;
	h=To:Subject:From:Message-Id:Date; b=WeakNZnfkK9YOpdETQjOH/vylDmOVKhze6BZglOh0nT+nMtINgzhFGzmEJ/DwuB/DIl2pT8vp0BzgNfq2u9NDN1dKSrQKBOAMeXgOppbn9ix0wwYtwlVZf0fu50ZOvstSHFRbweAjOxJY5TQUlVjY31LyIZKSsFSOkuL4hGnsB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Awdg1QOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Awdg1QOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0809C116C6
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768149233;
	bh=qdUasXOdFicvjE4qx8uF+mVVweXR0EBYMu1Vs8SdpQA=;
	h=To:Subject:From:Date:From;
	b=Awdg1QOm5ZKoIhL4DCq5SivG/nS7gpUa4NQFa4srxfwmVL+tO+SJBYA8D+vNCRFnV
	 GRA3GSFheJ0aSReXlAeTPmZczTvA86Ej2yoHJ2+bgAaKEAz5FU9sXYKmC0xSonXSwQ
	 BljNSXyhaxBIdcF3+tUySces5MFMtXjuO8hIgNsFIx6NVUQhtXTUqtAiG+ADGolcAY
	 KJGxOLwAONwt/RfZhrpkjqpLQP6asJXdlUpEfyix/tenEZKHpEz0OsdFP/Apalheyp
	 ZFVxMYB6JdzyLAYZHSIrIr7cYkAswMzvcSQY8ztrpR32OA+ur0SUHeL2Qzk8HUQVd5
	 OQxfj8ruLr2nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F611D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814923358.31228.2926859758556283932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9596ff9b69d7938d37fdbd24113996e1c2fa3a1f8f20c80f3e9f0f4d0c518a
Date: Sun, 11 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768149233
