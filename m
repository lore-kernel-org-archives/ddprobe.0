Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2888A236453
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756681794; cv=none; b=cSx3E1efz6/XeOSgKL0k7/lMZb08RdIMS+ubRZaRfkDKVz2ODht07LZhAJBJOoDaqwb5GMUnNvcmvJXkCILMrpGGT2A8B8NSwygG8/2RJA9sGwvq23zulV0xR78SsOdLxdejly3sogtOxuQ0z4Hp8qeHAN95juuFiy2HZMuHXFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756681794; c=relaxed/simple;
	bh=uZsj4TwIIBhTiZMJpRt8AcxKueb/ijM6EZ5zA3Hj+f8=;
	h=To:Subject:From:Message-Id:Date; b=cpRSjdidr4uUVwJrTtlUWli6t8fUsbF1oXLxHoflIZmkawLDqBml7Bvhy4gcPsYfoPjbtZZCauwOqc9U3mDWixC13aeVevOvslTAmpJYrxXk9dSpieYWs3B637pM0WGu8qbtt81GpmVzPQ40+4h0GD8uVFXdUo3YKecFf2zayR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0T+Svsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0T+Svsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B48C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756681793;
	bh=uZsj4TwIIBhTiZMJpRt8AcxKueb/ijM6EZ5zA3Hj+f8=;
	h=To:Subject:From:Date:From;
	b=p0T+SvsyyukErqhgq19Vbbo7xMuYHT4gz7OfiT8xK/QUEUP2o/rvlnvx10Y7f2xxG
	 UeT4aXGsfEm7CL4vZQ7904xN6d2WFGIy1lSHUVMaaMYcIKU+rU36lkpwvZBkjxdA8v
	 BnVqHZ7zVykuBUo7r5mjOyLV78xZz8h1H552Zrq5j7AUjgmLodwPlFLk9p3VB4h0LX
	 ZyR09aW5/XF1DbiDxPOgln0P7/HEUonSPsc9sbigBV4NilYfZWHjY1EhBxenKNjtP8
	 sq0EuYRecwO24fuUrsG5ha+3tyn/nEcIZNr2g0Dsnj/1o42lpAYxrMrW+igAVN4JHy
	 AXzgTt/LuQ8Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD0CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668179357.20220.6794991596004751972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff4b6fecc68744d7d7f3a213d0c0fed03800ef2ff2d65dccd9d2056eb086dfc
Date: Sun, 31 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756681793
