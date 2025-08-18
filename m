Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0704F26D4E2
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755495594; cv=none; b=O/HZmuph0Zd4xX0A+LsjNXlPHEP5pSup6e8E+ZfTyzcsti62H8mGmU9kQhZUIQJdmwOp81Mc1aUrspfO4n+OxXIVYG1eQxeqjbp2R5oZgNbuNmjleArN0dyxW6RT83WoiHZz/IFmFqh3mvuASoNCYN2zondCqXBTfy95jkudnf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755495594; c=relaxed/simple;
	bh=2ZzdpojJeohkd+o743BYhOJO7/hxnaeO2EVp7QsVR9U=;
	h=To:Subject:From:Message-Id:Date; b=rfpTqK43kgQr0W052yZ+Ixeb13edJB4zK61rCfLUtqerqPCBc2N6IR69mxOtemJ/RXupA4RlBsmiMy/8TXnPTRDDorhH4+ey4ZQxYCzfTIc2az/qhXPvREar1I7H97cs5OV5m/X6z5gVpuNXnDyLcNZr0zPLUT7w3hN5kpzB7p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgnJDVIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgnJDVIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A054CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755495593;
	bh=2ZzdpojJeohkd+o743BYhOJO7/hxnaeO2EVp7QsVR9U=;
	h=To:Subject:From:Date:From;
	b=JgnJDVIXU5OxNW45XMMWd8SWIWtfb1ai0/dD0/vkZvXcWTD/9564oPVVSfyuwedkq
	 7yBzhakbZ24kEtp4dencZf5ZAbTn44f567tcErjtEFtJVJAQgLR0/3WuEzYRN3yYhp
	 EM3ct5VaEpRfqrAfeKePxkYuBkcNOHkF0fQhg9UVry41EW+jtaJvKe9M7+pt9O+rCd
	 Ehpm1gCFXJHj7iJ5uf9qgynKBSKQrmBIjW7o9FDGcgvTF7+m9UL8RdHhhsKaVCpFjy
	 A75E78cuOp5d0e/sgaje1oigCTvZjax3vfw8UZsUlOOQ20OTALWHCiAMAoW2d0ilAx
	 8gsEi9HYEATjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F454CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549559357.8527.7515846257878929604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d1d45bf9d1685eaf540b5f8f463f5c8e8b025a59087c91ad9ef5f03eb9864c
Date: Mon, 18 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755495593
