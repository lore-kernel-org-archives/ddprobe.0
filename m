Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431F8257854
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785228034; cv=none; b=nmyFXxTxQKCAFe7xpN0dmv5TfFsQAK0TTb39eORaUBWbFvTMUHWo9JdcW3QxvWpv/n0qlzDRTKi9oaplWebiraHww980a0O6LieyK4670w8I0zlhA5KD2A7o9Xcp4SgMglFZIsTx17kQTdkHIUK/prHolFEJKIQqAJv0JKf7iSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785228034; c=relaxed/simple;
	bh=VGGO0QN+Ho7+psl0BF2h2FPewB7yg2LC5ohYHeCL/8Q=;
	h=To:Subject:From:Message-Id:Date; b=EXsso5dlDkKkidjusUMPV7YURCUDUfNlz/IA9XowCQQRGTq4qjc9tddKP4zkbED/A4hMsRlerKKLQZwHphy3I4l851yLQz/C9UkqJUkBmP2vnS2zzkuuNoJY4BeBQynxMxnQ/lwxu1FX0XpWq/GyhyyCweu2ufASlhLwpT9cF+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCwBtmza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCwBtmza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D5DC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785228033;
	bh=VGGO0QN+Ho7+psl0BF2h2FPewB7yg2LC5ohYHeCL/8Q=;
	h=To:Subject:From:Date:From;
	b=ZCwBtmzaGqmA7DDYfnRDag7Nmya0vjgaJHt9/ViK1oLUXSZ5ff6nCzLwHU8uOmB9x
	 7Levf9Yfq3LjGuLZcQ2Ex1ku4SbnDa5SbNCPyvFBzacdYvOngjjqXYaf5OIHGqdQlv
	 EfEGmoV8XEK7CtnIXl5Xctdonf7pG+PdD6o1Og5iiyQz9fZEDdDl8+0728qaI7gL+b
	 JEsBCSiEOxKyCd0cgrr8hiemT/8J+c/RphTyPYoJJHTlA6UL5HfhATAjN8e7DP4EXU
	 cqY0CBa/VU50oVugjCGCyqVY+RXirtqNWBAEzLjZCYnw+bvjrUwW2CSICnqvMy11pD
	 IJuAuVlV4fzvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60D1C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522803373.3135.15476628776285467075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9045696f77e2dc77228f7e78fd38b537dfed815606b8de0e833edeb7a0aee01
Date: Tue, 28 Jul 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785228033
