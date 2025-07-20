Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDA222EF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752981594; cv=none; b=WUhViCFKtx0a6UvlEaly+YdRG4jxQJyL5pTgi7NkupjWObQJoBdYEOfiyFxnv3G59K10Ko8W1zKQrNtBTe+mv6wVSKOYHKBcrIEBnwM8V9oTvCgbW7qlyUEeZCNScrBZkg5XMFBkgnO930CeabMiwwLPFSPY2nUQchWYXUZGGJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752981594; c=relaxed/simple;
	bh=dxBrhpvv2g8AHhegz8Vw0ALaTnpMAVGqlzkS0tij2Sw=;
	h=To:Subject:From:Message-Id:Date; b=tBxMesTy8v3HlqA/615Kv5p8K9C/QFZGtkvgSI2Q8Xks5wsaYpCGXeSHwfxRtvqI6yv5uue1KppjG4q0HGSb3lX9m6tYA21VXBpWf28GCy91jpIzQo0/nyIm5sBK/lEBhvWGm04SADMh0ls8+hNjevwgudk38TWXWe5mKYVjfmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfmaVeG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfmaVeG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B1AC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752981593;
	bh=dxBrhpvv2g8AHhegz8Vw0ALaTnpMAVGqlzkS0tij2Sw=;
	h=To:Subject:From:Date:From;
	b=KfmaVeG5GmXLpFDNHtb8KJyM2d1mEUtPgzJuCGs6e0DHFWZ/6lwQo+KvKfu+FOwk4
	 sF7Ma5pgUikS09iZk3ty+BIW6/34m2PXFo2T2z/8UN9Sket57+Kh2HGbREpqaOpDKU
	 ovWoHEKp1QqsDYNQg8HZuymzDzCppozPN72JRNuCTmSoI6lnLcWdjLOU7JBZ2MLaOI
	 9XCt9OqHbnFEo0AE57ybRXZcijYcGr25uiarEvsDblZIOrpYM8bpMiM2mpyCAs+u/I
	 SiPvcGBvvZxLxgeBIzOtYxkXtkTaxQ6OOY7mWbKiGOaxCzwCl3Gi2qVBHlBsGUXacb
	 cGuSkSnIn+JFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB5C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298159357.25384.15648981273846523025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90dcbcbae0b210e252cd5c76ba8c372c71693ca26ab3b0a668982d5399683521
Date: Sun, 20 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752981593
