Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FB32E3B15
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758191393; cv=none; b=uG0uUhfpUkql7I6qiEjcRYz2eB2Rb+S5AqjQ43w0UoZwXtoq6klIY5Gc4FTjOsqlOaDoQyOIbOZyMU9Dm8unQjx1aYnDpx0D0+zZ1b+N+jmd/uZ/cx4iyvuJob+YFz4JTUO2aYEwTRmfDcj86x6wArSmlT/xZaDZluX4THNK+TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758191393; c=relaxed/simple;
	bh=X4fq9dm+boGIOLrUXK3K+pFcR+a9VT/dGqrO1zEQeBM=;
	h=To:Subject:From:Message-Id:Date; b=e0u0i7IgpI8BM0ACZlyLLN0zYzHR2BJI6hqvnw34EsybmhiyznaTjjanKUAk+kHOKzRpVrtfA/uzryN2nlE8vvvzWEOjtHb9EoAJaDCEaGoo1DMfWzSFQa+N7wbU3Lg1ANyNKD9q7nMI/J/ufNnpiFhQIoXSRKcFyIlKX8WgBss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEq34Fia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEq34Fia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A053EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758191393;
	bh=X4fq9dm+boGIOLrUXK3K+pFcR+a9VT/dGqrO1zEQeBM=;
	h=To:Subject:From:Date:From;
	b=uEq34Fiar/BKMqdhsh6aHoO0rGBAf5vUqc1By0GF0Ibhm37Bsa28DjHua4gZ62v1y
	 LoX/iasz3bLDywOai7UoivKPifwLuHJPJO187G0LBu71RzgUPcCt7Vf+EcBST1CcDn
	 XcvRfKcM8akKzNittzcdOZq6NJYEcHhCPM5XXYVCigrqSz6Lyy8Nio8QcZKxuJaRE3
	 3veEcAMzv5meXFGH7VFO1PIM6j1H1aMb3I6nImHd6lqEH88U4gAoGfZaVWQMOFyIde
	 K7Bq/b9LSsyfZbUDv1b4wkxM5TEg/B5jEvBy9aKmb7KpuHtrTAfEBu7lsYy2djCD4J
	 +TzL4jDMETZKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9118BCAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819139358.30185.16555597797887562554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1989e3a0d1a3f2c5760cd4319253d356ecb9aa048ad7dd5b4322af308c14e5a7
Date: Thu, 18 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758191393
