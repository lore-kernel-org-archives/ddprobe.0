Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB0B3FF896
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785154234; cv=none; b=ove/WB654frDEWOFsF7fbMmuvW1fwpD7R5i/37Z4nX7GBgxFl6sUafNnL1RfsY8oJp8DJbkf9U/ly3IFX1Oh7wr0p04YDMJTQmIuphwF68Px/CQPiL8hkI+O1G5tN8LydhmSmLq/lpBse0gvzSiCJwpuH6rluaCAr+hDUM0vB9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785154234; c=relaxed/simple;
	bh=tO+FPjNp6fmv8YXLTPtsob1AE4pWtfFmb3qsgG9o1dA=;
	h=To:Subject:From:Message-Id:Date; b=Nh8kv7Y4NOaS0F0eT5vR3rR6XH42ooayk0xvVo29522Dh4l01B9OJ0RHNOJT8J8l/fMU4rXAxN2v904F7AFZoyby1v2XyPusa15HQ9cW4d4OquCSMD5G0jKMvG21NdSNVR3SvHCOOCM6guFg32kvgp0Yvv2HEgft12gMgoLPauM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjbmhBkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjbmhBkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF010C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785154233;
	bh=tO+FPjNp6fmv8YXLTPtsob1AE4pWtfFmb3qsgG9o1dA=;
	h=To:Subject:From:Date:From;
	b=TjbmhBkhgWFzFgXTBfZahwwSHyIbnn9abU1InMXYfZAMvyyr37AtpbQUAffIdJ4ZT
	 Fzjra6aqp8wEgvC4c494nf4fcO6p1pC5QYDxQHykvCdLhR3hbp5yieWtaY2psJRvil
	 Dk352vpibvYTlXQIlRftmlXZy/ushZ2cHU/sdLMjOmrDUmBdTn9W8B0uf/vXLDnpbb
	 kNLVX3E7X6uGi6+qsNKqPNix3hDX8EPh+Y1VipEZel2vwTwy1+dTsyPXrVtLq1KfR+
	 JrDIhu5rR1M4Xm8kQohoyUFO1FisCV+euBDRIdXBD+mvkPM5nhoeRsyZ0XM1JwZKga
	 UcSc4kvEdFVKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7BEC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515423369.10678.9179137595004593894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eccd8038263a34a6d38a40a5b0609d8c50134b74efd0e67d0bdd7b08b27937df
Date: Mon, 27 Jul 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785154233
