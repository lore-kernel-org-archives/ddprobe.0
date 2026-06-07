Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3832B64A8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780839874; cv=none; b=deLjZeuUSJ3PVKKqCHKcsqAxOnapMpaBArF90EuDimdI/w1p4yUQKSvLVyGww/tH9MnU6IJq6Yxr7a2G4jk9TRjja6eNnTPpfgecoeCMii08TNOxKLPhpTOGsd1L0cGG1Wyhx3KpZvINWHleDYf+mik4yTAJI443Hx97OL3NDoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780839874; c=relaxed/simple;
	bh=rA0QWA45mC1V95osrFSpbtq2ENoUBZIvM6adP9l3Mlk=;
	h=To:Subject:From:Message-Id:Date; b=MDa2NY/1g6GepftLYAOMnoehu0BlAPI8SCQYn1lFWhbQJJ4lXBqkdkHVIIhrWvGR63g3kFysvGy2bIoldeXaDXPUjBXB/hQ7LzQB8hp9dyxNuUS2fv5Yu37eec8CKnQ3DB8aoHPKCW+WjlkzsBQnDFt1AQm4N/8yHCtH0V2Cmk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuSZK2CY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuSZK2CY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C751AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780839873;
	bh=rA0QWA45mC1V95osrFSpbtq2ENoUBZIvM6adP9l3Mlk=;
	h=To:Subject:From:Date:From;
	b=uuSZK2CY7LR981Z91ivVBZhTRW8+DoscplucNc7N8jD4yJ34ziUpLCZqabwpv0hZY
	 MlU1+mBqElgaazrS0QohinLPcAj6tniaeW3Vcy19p1r/aSSrPeizfgiMM3y4rrIrhr
	 XAw50bHaEHg24WyNTK2XFC6DFBACHqRiS2Y6R0zJnbCB7yI7+Ph7JJYk/gMDSFS/mK
	 TRqMyEanvBgseif0VReAOf0gFzfBMdxf7pt9kcHOxxaU93OgHv7I6tezy7FSLvtKe3
	 fHDFeT7/IsVL/R3sIuR8Uu20ETUNqX2FD6WNer4z4upBd3QNyfXCOUnkC9NnK0EFMn
	 nQSvNSRH1X+Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9248CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083987368.26565.18007593798756484428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8584eaf54511202c75b707c237b96690b40be48b2b2256c19fb18b387f09eee6
Date: Sun, 07 Jun 2026 13:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780839873
