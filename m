Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6261C84A0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785304234; cv=none; b=bKsuuKSTQ6+ok29d1sGlq3mVSrwy/CEbhyeE8pBw2vdfMguUNtk6AGFagii12qwhosD89EIZLze3b5b2P0znUAFTGD7+K0MwEQjflQ3u/swkNYljQ8kB+3LFykvfZaiBp0qCrjBqJtc5tUVUsLx78jFUHdz9+xL9vqAAGUXwBS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785304234; c=relaxed/simple;
	bh=7uUADLMZ+m63Ki9lhrfP4qXsoMCuYI/OIe5vPPIcYYI=;
	h=To:Subject:From:Message-Id:Date; b=TmggsL02ouGia+JFTMo/2tvytOD0dRmdzQun9a4tg6st9RrBC9HGvyrt/XZq6em64CcAvii8wKmOtN7XLIgFKVElob5Acu1/i2BYu/czhtT1W6gfvy+FaIK7/LncfITlkCuzKlivC3gNwI/1QsrdeuHxS1osRCCAVyqX3AQs95U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6qK3UdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6qK3UdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D205FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785304233;
	bh=7uUADLMZ+m63Ki9lhrfP4qXsoMCuYI/OIe5vPPIcYYI=;
	h=To:Subject:From:Date:From;
	b=N6qK3UdWssOXMPvkhdy/MndIReHWyGiT9TJWx+hXmZ7whlLMVlZUrf961AAl5m5jE
	 CpfW2xjUhewncEQcoUgTKSPvMsswT94PnZ/PGfdEXhBVmIIXiRARw8Pxgdc8dY+JyS
	 aCaGK2ywGlpCHtTtPM+FO4mr6KA340Wb3emX1eQTdvUy0qyiSFtBBgLLyBAJViNjrU
	 uevCVL4tD6P6pZXOk6z3R4wx9EhvV77UGFYPFrjjEidxi9syHpz4BcW8p3shZZftnR
	 f4xKQZilm2WaCJ/JrlwMnvGID3cyxYCbaiJJiI04lA/6wzZZXmiEFOFbhn0QuEEoF5
	 qdxzsizTF2OeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE879C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530423368.27840.13963321909054994614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80cd8b0adeed995476d5a031deed446a9dc2eb6decf62804d487e86f63ab071
Date: Wed, 29 Jul 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785304233
