Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5141633C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712993963; cv=none; b=RWe4k2Ggez070naONHK8i5IGjDi/FWzke/gFzNiqZ/kmkd3E6YOULs2GS1G3JiGZjw0tkhKa67AyW+5OEGDQjY3yP3gRsCdcffmvu0geVzu9tvZb9tRRfKcjC2PBMeKVY8Vod7II61LCkIJLuFzFagq91H4KSk5D11QbIe5pPUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712993963; c=relaxed/simple;
	bh=zlrm9TkxOq1gsA7/uyQ5v1k+hNSbhsy2T1csxK2+EkY=;
	h=To:Subject:From:Message-Id:Date; b=HgPYFMDM4mPaBoX6z8GnTDjbHW6Jw+e7SIA13RFBAkD+vgTnKzi2/bT9XPhC7Stv20NWLlNl4YXmUyNt+5oQXlFx1kCLJJZDBlSh1VOeYT+n866a0/aQAk6/dfpEwWlo9DmWrtgAuvWpqq7X9xAc7wDfm/aVJCvefzy1m/z7K6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krNw7IU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krNw7IU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D549BC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712993962;
	bh=zlrm9TkxOq1gsA7/uyQ5v1k+hNSbhsy2T1csxK2+EkY=;
	h=To:Subject:From:Date:From;
	b=krNw7IU6ZX7YKcsoofuMW1RoAbF3tFT6ufPxAAWTEOS2P4Lkk9QuIzvCABNvuEqi/
	 31DdsV1ENTACv2XKeFF3iWwgFFjRC21A8TcZ11XcTqTLMmo5dS4LPtjq2ItJ7XK67i
	 jOlWkqLmRso0afTdaYQcqlKILHcA1alLX3Myq5SCdWsfNpUhGaMITk/Ra/o4uI5FWB
	 L+f4rkXvkDcFtnA7UnBE/Oz8SlErkqH4+w492xi8QXSma75Ffw5H4o+aP4OQGAyCzN
	 BWrtFcF2SzmwZRGZoNRbIV9Xdaw7MgDhadiV+hLc7CMygC4jLYxKzSy9F3prqrj0Nh
	 w4h1HTeNVEKqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0729C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299396275.6593.17187837379381996708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b83072a976f825c0adc7406455ce143b64dd87240f7e9d1b10121a56d10222a
Date: Sat, 13 Apr 2024 07:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712993962
