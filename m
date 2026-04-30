Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F3B6FC5
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777587454; cv=none; b=uxO3lYewBi9kJYihySjyjMmBpLu1gIUSkXSJVC83faDSSjDm/aiYKP3xKJGBiyLMD9yoK9S4BvQhkZb1akKH94ZmdU/M3KeOay+ZvAYoZPClwY9q+4jzT3ZbKWROYcK1xjbesVoX0E4qFvb5I48tJInreQ0e95H58WqW3nABq60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777587454; c=relaxed/simple;
	bh=2J75zwhAxBPEJ1EYsnhOT06r097d0zXGPgimsZ5jZEE=;
	h=To:Subject:From:Message-Id:Date; b=Bxz7dDQnX1VzL6o/V8/CP4wlQwvk3u7pSWRTupKUIRvdLax0Z9VDAbm+nkJY4qC9CHynr80ynpJca14bbpwHDLjgO7bcK+FlNZyG4jD/reWr3zWLw8jirxo1ipuytugJnvvajh4Idrp218oLdwz18bx1DyEb6zj76AxveY04FLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjKJP4Wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjKJP4Wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE045C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777587453;
	bh=2J75zwhAxBPEJ1EYsnhOT06r097d0zXGPgimsZ5jZEE=;
	h=To:Subject:From:Date:From;
	b=EjKJP4Wit33Hr+cxSTF+YCGd8moXXVVxj41SuRtLfMj28etC99iJ0B4NhAEbCIJJe
	 SHcYkZ2dheG4cC6A7yFTvD+IbCN8gbkaKTpn2X4n4xeooROhKywIi+RHO3C2YvGCoR
	 mTlapICzRXW5y81vCPklKMTC7ojYJbYDXgqeVB50Sl9riht26wpgflHqLaGpeli2d0
	 D1ep6MRmSbfeuY6gei434yvu3Z37uUt7w2ToOPoOsFEOn1M+vVjYJLkUhLI3ZVeDhO
	 1oAKC3j9IZj8iRhag5UcD9Nz77EJr6figuEVxcvOn2VL8hkVpCleMB7cqasnDFFh1S
	 E8AqtD6WIg9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E84CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758745368.7909.12276131242189543834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf397bb8c6a63d8555868cfb75983df14caa2492290f15a293b626e90e4e3b80
Date: Thu, 30 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777587453
