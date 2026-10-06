Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AF4547040
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791256234; cv=none; b=noWRLGPQAqE/1RpNDPYS3mFqGLO9MbhQGOw6L7afdJQJmOv4s2x+e9Rs2DbxvkM64kQysgICuOLWtrRk5HDtaMKWrmqN822BHv94iTReOo4P2XB+pDU40OngZ6kQyNb7tDPQTuD1AMeWOBzmmTD7ZcCX9yBiRpZS04/kEE28Gt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791256234; c=relaxed/simple;
	bh=cB9RZ0eoD1kzGKG9SPx3w1oII0b6ryM4ENzAWiVz+j0=;
	h=To:Subject:From:Message-Id:Date; b=VYjzc5pTWjajO/zM2YpNCNk4st3oZ4+tnsUmr/fuB45WZMtMhzCMtUz2HlFgkcRoHz4rVpwH5FQFpdzjKJ+9b0H++dCuBsj6Fla/Vdwitc3l/WPwLJ20q0y6RqCGDGmfcPoupUW1NKeKoWPRtHi0cjeRQbWFjzVfEUDzOt1NDWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKymsL+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKymsL+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07BDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791256233;
	bh=cB9RZ0eoD1kzGKG9SPx3w1oII0b6ryM4ENzAWiVz+j0=;
	h=To:Subject:From:Date:From;
	b=UKymsL+dk7KffFFhHYyV9OdnlvWZNSfstxUi1cI/BvD/mwUMAKopTSNctVjnFjBZQ
	 I+flRYaKa30a9MQQMTOu5Yqv9aOn4lxsHaoz9hrb7d2zMAvtOIYq8zt/nNby/PU1I2
	 Aizh3+X4oKa2UAJcu5bpUyJ8FaGzw0jHRRktLM3+Q4vMU17YWJHknhM8bPXLNwZRuE
	 zsC1kpgqgV3HLBlO8mfKSz3DvaYjTlMGIIYav1RxWcXKPTCvlRnNgKtEcFXwBqTKYK
	 d5qqW2bxOpAMsJ+QCd0YtWNGxtZl6pLHiYtGaCIhICnuyUJ+LTmqRUSK3qKgDKP53M
	 p0aQVQDj9JlCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFDACA5FFD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125623369.20560.7224905232302094870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f7a8a9287bd294dd19e13f0d5d21d7c3f20f5b34956b9ef6e87b7b8d74c8f2
Date: Tue, 06 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791256233
