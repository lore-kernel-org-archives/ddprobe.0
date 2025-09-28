Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220FE1B423B
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759060794; cv=none; b=WLYUK+KLSr4g/gJ9LAWj0C9RMwxNJNpt+MoDG5gbj5B1kS/mWWqy6SbBzlfxXRsd//xRNuEYjBPmUiCq6Qq4sW34KngKwZj3RTy+G+IOLiPfK0sSn5GpkMs8/U7MjLdVT5/FEf0YfXzg0yhoPjq6OfgWH62veQBKqQg7410tw6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759060794; c=relaxed/simple;
	bh=CT5V+uDdNvnRxVKN++INhVt6qhAO2pPLkh1i2jTeZxc=;
	h=To:Subject:From:Message-Id:Date; b=kx+izDDXla2XU5z0x46dE5OSQft8PjlxY8ogdanEsds7BhRu+Mlfsim0Tj6PxZF/Lx0v/vliVl+pFbVKnBFxhV1gM8lpl/bZm+CDoe2Vd9+oqOixsVoBZP72EfNz6xGYCCWEOQ7yoDU+04CefsdG0eFA3Dddrgznf8zYRLU/EAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfCpsQNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfCpsQNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2127C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759060793;
	bh=CT5V+uDdNvnRxVKN++INhVt6qhAO2pPLkh1i2jTeZxc=;
	h=To:Subject:From:Date:From;
	b=QfCpsQNWHF1VpAWQtCd6t/InCTUyOxhtfDC0raZC6kvpJO6BO5Oo+004qvH6Ztnjo
	 LaA2TQ6aVFXbjaTy8mwabJ93Bls6NtKrIjPQM10IZB/4itnpQ0YHUV0DzhTLoe/2dr
	 BjnrBC/v4zY5JhQLajv1NYCeBLFdMfrz7rLgSDaAtFcVIWJmf0v/nmHDI+Hah3puik
	 6n6AzYuhIuxkE9Zo5x91Y7KJxDRK0P79gLulXIdTUMYYG8CMuy5JBGzNfoRAYOygTs
	 DiIeMvFlfh8O9KmxW+841+xCzamVI5PVn7clUIza5MhXYg/bNNBfC3ifFHnL6bc+KQ
	 4SYiERCQexCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CDDCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906079358.27913.16098787443827836681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102fcb3093b410fa153fef0f8d442186235808b19f93c617a5c75a249b5c3312
Date: Sun, 28 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759060793
