Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4921E9B12
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756277394; cv=none; b=g/DEjimvODDMhKeTyzLp8/63tv38qwVC500bXSRUM4XTeSblIUOPtdOhezyABlY/rqwkOznRJd2ZZCkMjBiepTod5nV4XHiGblwAmDp7BFotclKBt11l/yvb4tFE5MTpfSj3GqkHjNHdMd3mlgvg0oqddEwFE0IbXFugGS1Lpg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756277394; c=relaxed/simple;
	bh=BTi1zt/SdC1DHN7PaEQBKINcsIcXVwMaF2/KlBGwQEs=;
	h=To:Subject:From:Message-Id:Date; b=k9pO9Zo0a4zCI6x93+kggtNSm0Ytzie+VWUMe0B9G7OPOS1wgXOvHjOZk19+LJYNiV7f0ud4Am7J27EsdRH8kb/btGb4cg34cQgDEn6cYU6wdGK6ref8dRWPjr9WIXF0k6NBvEUC+Df5KZ8m+axfxR57MoNL0QjMUl8/QIOCH9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqg0DB3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqg0DB3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3975C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756277393;
	bh=BTi1zt/SdC1DHN7PaEQBKINcsIcXVwMaF2/KlBGwQEs=;
	h=To:Subject:From:Date:From;
	b=hqg0DB3SosLeO1+MuFgBcL2TEX2RZBYfMewsYA0ZTFTkkiqwwkeOzmjj/JyTG2Vhd
	 qSSmvwsCn8ph7T20uAjkB7qnyML3FITrVHEBzPrUriaAbTCYEoPIQXMhk1gxojsK7R
	 DwlQBVTdk2E6b8pm+OkAJC8B3GXriU8JDtJKVCaYSj/ZyJb2zgNOqRRDQ9T4v1+O+r
	 aa36lXTVpEmbHUz+eUl/2hWUchxtPKAqohxZBT6jjJ245gInfIuCQAH+R6aa0spgFW
	 Rgq/SuM/8XKj8ATW7YpnYg3WLo2xRHTBkZqBmwPy9AGGopDKBP4rCDlsdLYbm10FlI
	 m3pGR93LZ711A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D51CA0FF9
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627739358.3965.14089900672248635830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba46520d2865f801b0e3df824d2c4422371ace261d1b5e63a2b37fe8a290069
Date: Wed, 27 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756277393
