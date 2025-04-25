Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4D420409A
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745602195; cv=none; b=ubTPPdxOLANIH/mEus7qKvcfuFkTXRkJ5kgHLiHqWoQLNKDLOuKcHLu12Y9bvod9h0A8AMevF+oshHNEGf1EoGeciur3o5oYNymVXSCk5b4dOMCRtIXw2dbHCkAvW0vsh5P3JPPBGqxtoEDzVpmT9U2ycUBRp3ZREn8ev7kEmY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745602195; c=relaxed/simple;
	bh=+BEQ5iacn+YUo2MiSAASCgU8WoRqycOhFQdEznWPmN0=;
	h=To:Subject:From:Message-Id:Date; b=L9AP8ucvc2ydDKMSyHXdFcxy8mq7R5UFOGGjQoXXkCCTagoMOOUPVlliLfswqPfINn+GFxdrdPsMeFfp596XpQC8iKj9onT7UYvVboyOt8faAza86PEroziI7Xr+qkGZtt3zaPgB0QIxq07X+rNKlYOtavJ4ucCkEmFNZpCRVds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNsiOrAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNsiOrAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2E7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745602193;
	bh=+BEQ5iacn+YUo2MiSAASCgU8WoRqycOhFQdEznWPmN0=;
	h=To:Subject:From:Date:From;
	b=CNsiOrAaYoSe2TktD0cfJ+cWyk/aOO8gE+lPYQwawkMz17PedCnKGhaTqi0xrcoeq
	 g3hcaBA14M50qBSX+7b+c7MV3y2gCgUEMUfx0vaJl+zN7BpcpUsMh4qzDdEbG+MShd
	 uikkh5T6r8QB9EwcFxAGwwXyeIIs3HkUcJ2ZTdlnKXk4EnYSTPFEkn90WT/nLNrfdC
	 N78dLd07LNcTaG4ZJrKITqjRHrZfKiW0LtGemznrIx5berupy3dUYdnp+M/FS6MpGH
	 bWr5A163q9DkVLKXRfPvXghkIEbYe8oRwRddPiPaXS2nTxxPg+FOV6JUVHkFkd/JFI
	 TKTR+UjRgAQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC8C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560219358.24527.13816048152545106088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890b1f6f7cb28ad551ce96b3d80a06b5aa988af848a39b1864308075c5c3dd71
Date: Fri, 25 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745602193
