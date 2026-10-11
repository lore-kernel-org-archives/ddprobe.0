Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20D2378823
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791687634; cv=none; b=OlXerVHhcZwlceUKpv203QT7XJvCGIpvSA+9PMCC5HkIj9E4nkTxLVianhltlX3EoafB1wmON17WZrXH6/COXE0TcPOI2AXjWkEGEgRPMA6CtliYBSRVTY4osOAVsejehKZpC/1fLaR8vDWbBOUon9ONzROgK9L39n6j4y9E1dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791687634; c=relaxed/simple;
	bh=W0Bz3degIsFU9x1uDv/zAz3wk443dIlaZVy9cSPhiTM=;
	h=To:Subject:From:Message-Id:Date; b=b88QFURNldJNC9uSa19fIF4L9h35e0U1Qw0sHhpI2KhiYeGObBNI7E92xTfcIvXILgm0p50oYWMMQ9aevo2IogmMACxhsuWzVJwVKEBHmWMbaX62yjFDE35DyObefm9nDnHtiKEGs23ao4a+6XOswKvVxyP3ePPcbIQddlFfkv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5v7Wvaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5v7Wvaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E02C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791687633;
	bh=W0Bz3degIsFU9x1uDv/zAz3wk443dIlaZVy9cSPhiTM=;
	h=To:Subject:From:Date:From;
	b=F5v7WvaqL7edaLc0BUPQujobU63fCh/SefELwR3MTp/3yM9xvaz7iaGda5+MZV2MP
	 uWGdJF2orpSn/ESwoonPvE6mGMLB56VnEUq0SkrESxLEyWzvCz4vkcxB43ngVgrZN6
	 liL/SQ92+hmynE8WOovw5UwzE8OlSNVqlWIWSlodjKmQyqd0UerqiLuzDNegUAWGZW
	 IMVtcLm/zZ8n5x4ixh8w4OKPAJIZlk8Cj+ZVkjkjm0HvbKJ1msL+AaGYEOZMJ6EJAz
	 KNYgIXjbHytsDXRo7L2XS6ofPh5w6qSbj4LPjIOx68KLaTdQDdLmrskmiZjE+xLxYS
	 TUvtMMtxmWmHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC588CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168763368.1274.14887187478148830711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7986ad0c7a5f4e71df72e791c1e33af76834197776d266b8972a0855147d349
Date: Sun, 11 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791687633
