Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF283B0587
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787410834; cv=none; b=ArnV9PLgAQYoRcVGxhV9TBnnJJ7zZHXbWE3aaZ6QxdtzNGfkR/4FrjIGRY4+avcm5i2GmudkfxzASxenwEBps59pbQ0yhpTbkbyGk9DyQAGM1sx1PShgnwgRBoXmOo9U8oR+1emng07ecpzpC60nwOWcrGZBeSA++koyEysGA2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787410834; c=relaxed/simple;
	bh=lIusxReNNsKG4XuDjMIs5q6ESEBTlJ64MdzRFx2QpNs=;
	h=To:Subject:From:Message-Id:Date; b=WKxuMTiq+wFGCL+b9g8SIL4YjqhK6HCpdpmBeoVnA79aqUrFDpY2iLm5cxM18vIAGqM9TmdBSdSloFZejg2PjGxSaEyMc87PiOUmb+s9qkk7aTjRpJHK+HQQoQUtu/1fOcbYjfCjew22tFf55rvy3tVYVBzt22zVQO7LPOmGVv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkozSM6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkozSM6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7045C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787410833;
	bh=lIusxReNNsKG4XuDjMIs5q6ESEBTlJ64MdzRFx2QpNs=;
	h=To:Subject:From:Date:From;
	b=GkozSM6tpI4psJi3GaEMPjFK52lQevXOVhJxdaMfL8RSvOMl57x/UQDvTzTNiT6YP
	 uS0Vhy9C4cEg5l1W9QbvMaiVxjwPe5ecXabhARyr4CTLTzm/DCz//FzVqL4jZmM/A/
	 y3mxoys/oOg/Rb6+XFByMSkdWglQrzWSvvjRBApHUD4lML/I9hNpjXntkQ1ra/IZoJ
	 MuT+mqxXAB52byYEcJ6+hFxn1rnxVmYQ05JdARNc/pQQ0zJ7x6dGPLtNA/k4xMBLrA
	 exq5mE+EsuyqsuI7Y3eZP07EVjtoQ3LdR220AKC4ctjxoE3Wm3nJcGRSzzsyQQO5lL
	 hWjWzoNnkQaNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0B0C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741083368.3411.4727344402072792045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5eb671827eb8d76a3fec0b37d153d7bee34b674f1f9424231ab34d8a5ee6eb5
Date: Sat, 22 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787410833
