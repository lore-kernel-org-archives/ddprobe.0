Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1926430FF29
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764675774; cv=none; b=ofLS42lZmhjxwpLYGhtLG1F37Nt3NkfIFjJn8153TG++4F3QcbXn85rqSexEVNb7zm0ct63hnWroVTrBLbCf1z4EjSNCvZ4PgaQ8n9bfeVh85bRM0vMxAIvXOc4Idk+YXagc2DONBxTpbkrWjCQBsFSfBajqJGThApEtfKXg3Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764675774; c=relaxed/simple;
	bh=5npdmuzYJK4VyKkxSP+11KGfkM7GApXfD7/F04OjdHc=;
	h=To:Subject:From:Message-Id:Date; b=dfYkAumin41nfexRaUWFiLidF2qH4+p08S+fCmOBDWOVVsC1aIiXma5THCaT9eEUNrkIKC5f+cngj59vs5FAvBW4sTNxwtuT9zEhI8wpRkZGzGzlUOagcs8JH26n2E9XQmdNN7rdX/831GCnfY14ysxhkNOKctk4XjYapCUa92s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Okxq6MD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Okxq6MD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D64C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764675773;
	bh=5npdmuzYJK4VyKkxSP+11KGfkM7GApXfD7/F04OjdHc=;
	h=To:Subject:From:Date:From;
	b=Okxq6MD2nWWo+rsV3JB8Dcewv7q9BB6HXJxH1FxK8zF74TazoV1eH9NAo5pgfIhTU
	 wInrXPf7dcahndSj7ogxge91aTKJy/GhWFc0IhrCNN/F20UrM9Cj/x/mHaw2RI4NnV
	 grD+Zf10Bw94vf1iSKjNQ58pnTkeM3GRMP+O3R9oY8MgVeKElc3orvtTakeyqclztv
	 S1Sg+/0ChvGeslm1IywDuo7xgGDf5FMlxBo3c7wCK6mKN1XZd/rErtiOZOmBjf13kS
	 ojePEUVP4wdvl4rAqzY7AVCkKk7YiFWc6U3gX9jw1hDlQpJjthD4NL5EvrqHhHSEBN
	 kqAg6+RodXyJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9699DCFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467577358.12305.15786291554569783481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2856f88db9f044fb7641e2b520caa770b0542bd55c6be829dd1934927215d653
Date: Tue, 02 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764675773
