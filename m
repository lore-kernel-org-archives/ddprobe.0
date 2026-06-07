Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313CE2D8378
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780827874; cv=none; b=P74cW5jnsv6L8QLDFHkILGXWokvl+fOZOmeMn36BkZ77WW0sRj4leVLMwYwyy0+RJX8iZfXiNNZnWL1+8v0WsVV0yzs9ods6kUTkXPZufRFUmErCZgA+3KT6wFAScqaeZPRJhsQ2mJzN8CLbdsbGkPUygGLTopJx8wHoTKxrV3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780827874; c=relaxed/simple;
	bh=NX8ly/mviUz2x1TEa24J+hWTRh7yChaeuTsp6MjXQaM=;
	h=To:Subject:From:Message-Id:Date; b=ddwZHlRHHyNV7vwJfdgsF8w3gpdc5XSRN9+IJuPEF8HMBa+vFtLC/VY1U2wCOvEEVK8p726fT6kkiVl9qRgAPBIFPUdOUep1lsOtgVh39UMjakF9ugDXPnqFSso7QdCNKWbhiMWX+y9C83gjqIPG9ueVMQA+Nvq+HIffpexkUmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jahPqBat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jahPqBat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BEAC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780827873;
	bh=NX8ly/mviUz2x1TEa24J+hWTRh7yChaeuTsp6MjXQaM=;
	h=To:Subject:From:Date:From;
	b=jahPqBatw95G2WBFw4xw6tbD/LeYGpsHeOfKtILEeIpUl6WTfSxRvpEC+NH+za9Pd
	 mHRVMp6k0dywbLj8vel8lcy8nWsAYVfyhibte/e6DpCzQ5aGeUiUDrd09zxytX54BL
	 +WT8mJ3V8Me6MZ9oPKvNJqI3Lz7QLhOigZtgWhy6JnjqSdxc9e44b6PceZbz69D75N
	 bdjp74OJ5lwKXpZCT4EcXQ+vpcOONjkeAfkuVyelYJP8OCwKJqqgnCTUt4+YRhtMbV
	 Rfq4UgDoLbaUJb4GJA0Bkw8/ecIMknhxfKiiomNhM3ZX3d0TuLyqKS9xwgcrq16B9N
	 /a2HgLLWxCTSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A972DCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082787368.24807.17630424931208951240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80e3487da57597d1ebe98593b010b7e3acfefb0ec5dcbd2f0814734fe0e0292
Date: Sun, 07 Jun 2026 10:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780827873
