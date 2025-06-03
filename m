Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429DC539A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748972394; cv=none; b=kFEKaqDmzEJRrMVHUE2DdC5GauuK7tyc00BP18uz2HKgnceBjGoB2omKUCIgbD/liZn6kz6JCS2D0ywn2aoSLIlJC5VGodcmcXhMANAOHwkXFav4DvrT30o9lzsQ1b+ss4k987+Cmd7GQ4YCS/ZWpDPdtvLI1B9UVmlN/3uKors=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748972394; c=relaxed/simple;
	bh=fceFsVWOAemEjSWkTLHi0gcY5aN2WGaJ56jaZAJd5V0=;
	h=To:Subject:From:Message-Id:Date; b=ek2/63aEEPcWl1S3qLZ2jSn9+zh2TxIONGke5YaioKxhcXayCT20ZhhVY7LWqj6cs6aiVct0uHFeFx+3HYDuA9T0suTTmid85WhzsIKqS7EkxSfuGjF+oQ2G6IH7hBomLIrWHBsRmq2y/R3ZM4iEj65x2KfmniVwcQKhEr/2b9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtTGBWu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtTGBWu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C5CC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748972393;
	bh=fceFsVWOAemEjSWkTLHi0gcY5aN2WGaJ56jaZAJd5V0=;
	h=To:Subject:From:Date:From;
	b=JtTGBWu706T/LtJO7mLgxu11DqxwRON4eaviUE8KM6UmemkQ4CDb9ecDgHUcxQQgn
	 7lTr6LCpAWbWNpStz51F2kgVQhppYQ9vFvhBvAMwVVT6SwC4uj/KDsVj7OOqDVz9IL
	 VfZcTdBI5EVw+PxmeizR3WC+wF+hbE/qdlrvWvAE17/rzF/cyeNKUhl74LkycGQ2Bh
	 sG554XcURMnGGIOb0d6PpJqOMKePadQkMrgsbnJxD0WgcqmEJv7AdMg3Q1e1Y5c5H3
	 fFQ2jXnaJfCZ3IdfICKjQSagKd1DqorW83+5vf/UpOztWlXVRhWnr8IwCsxoQB4vZB
	 /pxQ3nZ3itNhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91707C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897239358.20516.5621917969891520549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced1efbc945c50a9980744254b96ae0845c37e2d866c0676b3189c0605fb7390
Date: Tue, 03 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748972393
