Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15810F507
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768109634; cv=none; b=j/tcKT6icBAur2ZwDtXH30DRyDc+9B47tnGM2hZY3zdEycAzhL95V+bz3bk1nLK4/fgzsLW5V1Z2eqOM70fpmzFG4HGUEWSMx9y4qLy3CSKStYGnLdUSA43B1lU17GaSTf6FcwA7SQbtGQr/rda7wxuRd6c1Ok8DQGny1FGUyao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768109634; c=relaxed/simple;
	bh=hYEk2VPr3QiEnTVl7ybA8j9RiHjlcSPfqPS1CfopdAg=;
	h=To:Subject:From:Message-Id:Date; b=MaBJD7euekhg+B4v6vd6eBkUSBnbEL2WqoOb3S4hGl4KzoV+BMrqAvcsGLB9Fk6QfjBc50BGXfXTzHX+cKwCiowbRPe3dWL41AjScnmlUyGdfQyw0MBiorfGMLgKdddd9sS9Gt9c8XfFuJAV/Aj0IQAJrzBQZmpElRBvE4SRR3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgwX0R1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgwX0R1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A668DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768109633;
	bh=hYEk2VPr3QiEnTVl7ybA8j9RiHjlcSPfqPS1CfopdAg=;
	h=To:Subject:From:Date:From;
	b=VgwX0R1OszUfBktKV1o8DpuOMvmpwEKckPBjhI6l1K97B5deEUH7ukfFmfYLZ62KJ
	 t8szcBGUarU7MjPhSMKNAP5n6gFK3c5swuS09tXG84NXovCRzQfBrcFBy30bjWiDEn
	 eUArd3HyUpL0jOS5lpkXDoySvB6i4CAZNiSleKrNj33Tac816Eicah81VWCQ0ZKnRk
	 BFEZ6Gx/LOXsNFavmTs1VoTTa9hVljHU6vMgH4r+3XfU49MuZUeklK3mT6uezMpWdl
	 zs9blD7OgdymdVgIPokqwP1Ad+X8BUyDIuIIM+b8iLr91ElpgzfB9WVUt3d55OZfnI
	 fCimaA6ZeHquA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9534DD25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810963358.7610.1658519414752709932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf291fd2fc87be9abe5cf9253238b3bf4a1593b0a4629451927cca8c2c437c2c
Date: Sun, 11 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768109633
