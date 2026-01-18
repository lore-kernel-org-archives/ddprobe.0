Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA7817C77
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768699434; cv=none; b=J+dJ468D+Ft8r44tQx4jBEwv6Ggy4pnzsArQ7399UOWsmK+PIBvQgE1TH46++Ze4luFVfvzIqSPliw2KCEnV0BG+jDHbtl5fio6+d7VpC1eoR02GYq6EL6ZitQYkUBs2sgODffvP3OwTP3AZQ9bZgn3aP1wzuc7T35QPxgmiX8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768699434; c=relaxed/simple;
	bh=Z8gmfhAnlyYk8tUQRFVDZ4rJ7eh2LRReSPurFEWM5S4=;
	h=To:Subject:From:Message-Id:Date; b=dKV5iFhTURiZ469SX+ft79HrI32Sj/liZNFoK+ycpc3lniulEbmuNiQrJYOgU8rVCnpHX1rsGzAy2+3CC+7emVF5R2f2p6Gzfn/u1tsGPE7u5zMriWsIf7MXIlH/U/oItc6mR1PY1vTCWzULjx2h8Sk2Z3oqX+jJxNLuBrldmHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B05bJ4m0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B05bJ4m0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93E3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768699433;
	bh=Z8gmfhAnlyYk8tUQRFVDZ4rJ7eh2LRReSPurFEWM5S4=;
	h=To:Subject:From:Date:From;
	b=B05bJ4m0JipVM+AZUIjd84m0g5jFI3BtW+GAljbrNKaK3e00eBAxS2w9rcGXEl+nr
	 ywJ1nJZmQdqHFK1zGHF4HPmJ+IgSkbXfBOpr762VF9MXY+j4BVElPQq+gG3nATYTHN
	 TE8ZEhZi5ISIugo6OkF+HcJ73kYrVpMUxf76tVtt62qc+UAkHEPnH239fdtjajEo/4
	 EvHK1XK0mcV1sa7m3xZUIHgdtRS0X4Vcvf7Bskn29L894G93JPrG1uBsYpknOyPX46
	 y8hD8+LEhagh0BjuCA58VJhMvHhEugLKGikM2gYu4UP2j2drfg6CnMCKONBAXOpHY0
	 hMzazqlH2pYKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93841CA5FE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869943358.31304.845997245530447913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3785d10fe367e759d7602ecf69fd5d2cdcaa8ef100d53a04bb36cc97c57d0cf8
Date: Sun, 18 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768699433
