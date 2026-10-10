Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64105484899
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791632434; cv=none; b=ZoUCMl4mjC03uHia5CI1acKP6ylJtv9bNo4uoIem7fKAc4C+v4UMplqNT86quLbK/55qi3M53FVeenxfQ7zRdPts62s+gNVFqDgiksusGpcWSxnlbtmeYiIBi7s7lnKRsxaCZJSkgV8hYuo+nG0IlSxcIH21jhREVG0uUEw+4m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791632434; c=relaxed/simple;
	bh=3e3avijUYHICTbpCK/7hJJrL+iQuCn4p61W/v8wG5mE=;
	h=To:Subject:From:Message-Id:Date; b=tthVIC5A4jdgr/voz/e9TIPDJk8wmXgw1+2oeFIFTeBxlVTaNP8fVk1rP+RNa9jDkrYDGR43P3vyOcgM8vBwHTxoha0VlOndq3XwvrDZ0t+ZGjhHYiPIIBhrfNpUoTgg2MHrkMCAs65rMmxBWLs1cjlyGUVc2p/EjMYnHM53aBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MySmwBRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MySmwBRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BDAC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791632433;
	bh=3e3avijUYHICTbpCK/7hJJrL+iQuCn4p61W/v8wG5mE=;
	h=To:Subject:From:Date:From;
	b=MySmwBRnL6rVo3UOEv7GpKXyMwdehdcc6UjhvUopvMLll5RsjvnUCG1J4SPCmqSpZ
	 nNUqXWsY4zTEnjQtuUvPyjpjLhUT3Y7oLRTJF+jJepDxDx8qEbWMQ0uRRw3wHzntyb
	 z7PWac5HUJBZIW6xGCEkcw79LjjWCCfwzkcJ/SMo69sxPhjTEzIZXlU3Z4lpijot0/
	 ccNQpF6q5jyPN2sJeq5KREUsrb/aNle3sKkfRjudT57FsHuYpcXVlyMtjZC9J3KGku
	 obbXAJiRZPNbU1R18npCq3UliuRyl0tIKTI95wT50wib35jG6s3T1Ym7WXhQ5xL+Fs
	 GhFStc56vgylA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5D9CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163243368.7851.10192385329103453570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f201bdca34090960ee866fb89e90b38b9ff0e41defe2eed95dca0637b3e953
Date: Sat, 10 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791632433
