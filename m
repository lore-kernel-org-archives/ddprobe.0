Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C2F2A1AA
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752545994; cv=none; b=AQaDHw12e7ZmSG3mmf9ZpQfSqtrmoJa7UnT+pV6yWBJGfsNCYjA1GO/ybfHZJvV9WlTa8NJn3A6CN4oq/HZfyKaIIzC4v9PxOqvBg71GWV6W+S1E60PNghuND3liPgsosq4Arw5XVbybRBDXAzPsBwzyCd6yuowsYntKeomjbvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752545994; c=relaxed/simple;
	bh=EkvtETRV39WWoUQ4rLSLmMvwa/Q7UC60XEJLCishYEc=;
	h=To:Subject:From:Message-Id:Date; b=Z1Hm2x+XJgKkP6jhNt8stQmm0deNZUmp/TaZLiNxdNT2yfr7NkECRO5dROAaJ3WOF7Gv5rXle8BaSQuF7f2aE09oOSercFHNmitOF78tne0cIp9HHFT+BPOWA78y2PGfX0zXSDLL2KoBcNi22EftLilygKiFp8jbFeFbVmXTBOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpXoi5AU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpXoi5AU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D631C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752545993;
	bh=EkvtETRV39WWoUQ4rLSLmMvwa/Q7UC60XEJLCishYEc=;
	h=To:Subject:From:Date:From;
	b=RpXoi5AUTthlOqgtk8cUhXMdzo/jisquGFvKatwuquXhHsH23kQyUCw9Ob5DLPxhm
	 sUrwPsC87G90D98f8qmb2e1iBhz0OJGzNJqYMv6t5QdCQPoYpLRrTBUchZYyY+5kj1
	 dhaWTEBqFu8gGeYtZzOCHh3rpOdEvKVQRU7syM8cvagu+QgGlyvXvZcgP5pSyHCvMQ
	 gGu0P3f3tir4t/4HfBgEC+fJ2MhriGJWT533FELAVK0rtJXfWpi43sh5doEKNbmQHh
	 p9+gcNyc5SbIJ88MqKvXByVyu0VAzK5ArLDhC9J03TgMRj1OiWh+EoaIOrXOrXiNwo
	 13GYPFUs83vaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E891C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254599357.16189.17120428157644259747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2079f6ce38bcf5a6f9a37b1461ce641cab32d5414ba46c91110bfd5c064a0e
Date: Tue, 15 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752545993
