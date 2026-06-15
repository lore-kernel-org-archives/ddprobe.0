Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370C27FD43
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781507794; cv=none; b=s0y52trDPDveKJEBN37uA90LVx49xNvZK6esOj4/c9F8fxgLlVUjI/UZdH2/uvyJx0BUg61yQE48L1cG6LP7MTsSg2usVhyb7CCjiWmkYyErFO3ugATHutjcG88AF0y2Hq2wR636wbx1A/AtdrzipQ8KSGe3MLbMCVnh86stiaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781507794; c=relaxed/simple;
	bh=MZlbmILgbhU2dGE8iOPltUFIsssXzzn9RYoV6uVG3KM=;
	h=To:Subject:From:Message-Id:Date; b=N2Q9wmLpMW91QngZ3iZrO50HYvzVZZr/D3uKzdnPDnYMGzzXL1AFaKMuvYdCJaTa+zdaKuj5VOclX71wcNJ5Eq0KppTgOsArJE9y0mugyEa2kN8jX3NOST7iMES4SiI85X9XJ666eqtRBNLcDc50kJlc/rPmIHZUe9/FXjRx098=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkwVC1aI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkwVC1aI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE81DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781507793;
	bh=MZlbmILgbhU2dGE8iOPltUFIsssXzzn9RYoV6uVG3KM=;
	h=To:Subject:From:Date:From;
	b=SkwVC1aIeEXu27D/jn6+1h9NhVxPiFYmCNmSuGc9lo3k4juXINXVVtaMR1cfFiWBp
	 fjTUCZO7kWDWVrplDS5nIbgBoTH5xdc5YGD5VCfeL2rl5J2s33HoZQ12z6QPFcmcfx
	 1A071wEJj4c4jpKQvAODMOApUKb2IVDWuNDoDimjxlj1XMheu4DbhPp9TgePDB9vDN
	 trElHPCGUNSThY8pUpM6jiDTl/dI6Qo4pymxDv/7oE9QsvnPplX3ipRjpzOKLkM/pX
	 tXA8XAExE438e+fpqzhgKDw58wW7twKO/4e1lkcUhn4mdeYVBNknqZF514X00lENdB
	 6KQ8bdfvibxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E8BCD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150779372.12295.7923265457147107143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7ac41231139813362493290afde607de5e42489e2a26bf33a9731ad78cfac9
Date: Mon, 15 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781507793
