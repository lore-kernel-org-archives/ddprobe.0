Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141AC2F85B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763241054; cv=none; b=FYT/LUrByYgFAaD0daIpEHekLdpRu3eV+4NTMaAUXU7RGORKz1Pqg6csPqsLAN4NLQJKcDdg1PhGQ7xdjncH7iCVT3GxlC40pgXvKGmth4H8ywBz+XDDCw//M6428r8zx6TxEog3Dkaceqa/DP1YTeD8j6ft9yk9sS9atFTjrXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763241054; c=relaxed/simple;
	bh=j4KSinL2OOabzyQc3+Dj2ToBuBlZHLBE3s7HsHqoXwo=;
	h=To:Subject:From:Message-Id:Date; b=JXfSPmHyY37M4fOrhnA8ZKdU1KjYWgzjZ10K5Ugf/uvFFcNHew+EmsavqzVSY47Uf27kH9kT7rfBNWYK5yJPpCkop5VhwQgI+ZRenvVlExw61ucTSvxIYSyCiHY6x0+jUo4z62P+oxYmGa1p5FKw3IIYFDJ1AmMzD3DeUf4VzQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9Ute4XB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9Ute4XB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAA6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763241053;
	bh=j4KSinL2OOabzyQc3+Dj2ToBuBlZHLBE3s7HsHqoXwo=;
	h=To:Subject:From:Date:From;
	b=X9Ute4XBaYiw98ZAbB/kbdU+nxGoBtMoBOsyl7LQkqT9JL2ucVwLcA4IESHe/iYQr
	 OTBqeJ6t6Ep20TV5389rI69rUiOR5JJAiiOdfAaZ+ejuXxNTsiF2mGqTfAfQ3261po
	 Vmdr0D0P/6NlJJPaXZBcLuidJSYVda+B1tnkQ7Apyd8f031o7kTwDNeR8cHK338gSI
	 b+okH90dNgWLMUu6gh9NRHizWZE/ovJvsqFbtR/rEUuWjVlTNXL9YEOE8QZQMWIr4q
	 3yntHXHssXtxM5rLhgZVL5k55GLYQ3UBANchpFn09DsIPf5lVkfPtyUnZRV8xlkDEy
	 FxhsjyMFPQKfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F0DCEBF87
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324105357.19138.2630813336625086031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f03b462ca5bbb494041c5b8babfc1e949d72baf5adcf020060432b491de47a2
Date: Sat, 15 Nov 2025 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763241053
