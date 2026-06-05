Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BC23C3449
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780622674; cv=none; b=jP0s6oiC6lhsgx2eqg+/SqQJ1BvqMDNeUrvFiBnHoEs3NjfQ266eJriG4629NZAdVeRkzqy4L0dotsm3MJuw5L0saZohYDqf/OR1WVgyMYZNDqWi4bJ5lxgSjRYWyKZTlnHLymuQJdE2c9FhPS3izO0KkEMI91ugVu23mZQdmqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780622674; c=relaxed/simple;
	bh=+BiHZxeVtwWBHVQKjRCioL2XhiSB7aTiyi1hVbZC234=;
	h=To:Subject:From:Message-Id:Date; b=UKv+1mnStODDKYkq1crjlYqG9rgYK2FSJifu4Ne4P/a7Fdg6i22W+mzqE1OLDVPiK2aZV1xB3N97kJdH4eJHt9oevun47Vg4NhOLXPaUDvYNaR9SxskauZupVEG4oVqz4r2bn9+UmjSdh1mzCLVyDNucZslryHECR9U7TqN4RfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zsrim9pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zsrim9pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEFAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780622673;
	bh=+BiHZxeVtwWBHVQKjRCioL2XhiSB7aTiyi1hVbZC234=;
	h=To:Subject:From:Date:From;
	b=Zsrim9paAgBVjS0XhEFELC4U9wz/1Uy9K73JVZIwRBuOaqimS09RTCdkE0v743M4h
	 si6LM2M2XWe3XsxcjdShh2DNXyfEgQ47YVV7CoeInT7xX4bov6fTerj1qHNjCqZVzn
	 oNBehemTY6pg0rYUO4dRWy0l/YiaZ4y66QlubLrmFLmDwYnMt3sWqXV7a9OKkHbisS
	 cW1ep/Xx7UlSrCYtn7pNGrugmgVTta70FCylC3+pI30lRgPNbKszBFM78NLW8j1Lp9
	 DQuOiRmkAVr3iS5ycmWGzPYNtAa5tHkxBhpR2mf/d70p7lZvXoSppBElLljH0tAUQA
	 0ncPZQsuAvhtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09DBCD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062267370.16942.4780224859524387324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681908bf2105b3de3ca2caaabc6518bfa5f4c75e7afbb83ca2669f5ec1e12dd8
Date: Fri, 05 Jun 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780622673
