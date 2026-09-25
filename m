Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4166D372058
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790355635; cv=none; b=OdpIwXgdXYCmIPfBeAoM/onmh+4kuxYMgi/qWfQY1vHjckNQBC95JvG/YVB7ZbdBCYxJUY5renqh2nBdrZ3jMlCUiLbRywGjBegdiqVGWBWNi8dEEge4VrLXpngvvKIBm6nPQtuwvufwH35yMTAJcZ3Eghce5/MlvqNnuZJLaJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790355635; c=relaxed/simple;
	bh=eOPsblzfRVm7iaGOJYskR5Z7t3+YMQ6NRSg25o/F2Ms=;
	h=To:Subject:From:Message-Id:Date; b=jA14cn8gVvH3d2E6/mfMI/MRAR5zOSifwJN5UZnqCnZ0iqgJHYIUiU+yLZCp9l3nZ0TG2YkE7UdGABCqhVSU8adtyJlz4VAMLFR58fdGQsL6McVihP4fBgtA7oU3iCvMa5GdRySPE0JoZWzUy06OcPoSypc11NYGkFbVLmLkiZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q063Nk8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q063Nk8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25C7C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790355633;
	bh=eOPsblzfRVm7iaGOJYskR5Z7t3+YMQ6NRSg25o/F2Ms=;
	h=To:Subject:From:Date:From;
	b=q063Nk8fztLLzmdrAKlSTo1FGOte5H2hVO1uI+wkaewAKyBHDVssh/vPLJeuEYDrb
	 zfk422cxVFzZj+jNiS7X9zTkV2ZErYYiGBy2KNtVXf6y1SiHBjicYm4B+JJMJkhZEx
	 nB/mLimm+W2OOIddDm5DHS31sJGR9GiLPP+e44/EcZJGW22LwxEEALWoZdMmr2smwC
	 4VrZeUZYGS2CveuahXygvKfoqOMWGdz9Gnipj36tm9Z+X2c1dkYxVeBHq2v6myivpd
	 +qPvokzE47hTAp4NdkCBNavvV6teKeRnvNMzneIT50aIGHXLzbjKTpK/OCLHF9MCsP
	 Tvrftbb6tlk/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD569C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035563369.9809.9612718730835207912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409aa331a871681dfbade28a8705f88a4f235e0851182e595c13dc951303112b
Date: Fri, 25 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790355633
