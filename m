Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCF51DA0E1
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785606634; cv=none; b=B3CZpz/9dre26oVgk5ph6ggC/8gRQe8+nhMgSSRqqSoWRmDNAsi8/uTBgEflgHA3yutOa2gLStTcd8AXTqHIqSEggrg2JPGPTrZU/Qq13/MtgC3dpRhdyA0rfdehBxalkINsyEFtYKUZGTRFsrE8tsFtM5h6h3boEzbwbL8S0NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785606634; c=relaxed/simple;
	bh=lOsp4OJNHOlemkZ7rEZ7m0zYyBf0WkJDjIxpGf/d6/0=;
	h=To:Subject:From:Message-Id:Date; b=ZngDWaPN6Yu8sbQ1PC4OSLVB7tX8fwMCnBn8imhYQGmBxysYXwo8cmwPblAsSjMVumkKoSG2K4IR9pvA4bQ4Yd39OwskDL9FiAGOnNWDYwgPSJ8ojp71r1dFrV33oLWmWgXF/cr1v/MzvZbS56Xt4AIX6QqSp4EGkbE+2AU3mIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiGh/tPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiGh/tPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF133C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785606633;
	bh=lOsp4OJNHOlemkZ7rEZ7m0zYyBf0WkJDjIxpGf/d6/0=;
	h=To:Subject:From:Date:From;
	b=QiGh/tPdJ7q4a9/qLrx8t0bgz6jMRZGGD01XAm9gJuSLc09rCFg+UV0axBEUmRgFP
	 uLXJ2PAnF50ESmmWBIlltqyEEpYc2oumqwoTw2sqHAYWlqLmDtb9e4hKUufyZNMuS5
	 DvVHe9x4hrV/KtR2Ijo78Nm5Sf5639yq61N5ojB236ycDx1TNw+3jd6DMebLbRecwH
	 r1nNyEpkkMrLK3hqFHTPkIBxyiiKjSM2Oq9YIVcfTVDXQkiM2Egulq3KFn/5MDwb/a
	 4REc3U1yLHzoAh9ey3eEbK4tQl66LKEfIAukCGgLxsrh2hdiBNz1t7W49etNHEU3iZ
	 n7P68CijpS3Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0C8C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560663368.31238.17427058846293644576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f128e2c3107b16a03ee45c3204759500767a338aba9a993e42fc68d3fef68495
Date: Sat, 01 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785606633
