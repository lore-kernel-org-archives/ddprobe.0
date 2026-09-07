Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499D21448E0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788742834; cv=none; b=RDl5WWvqokb/BNVabppbz6efc2G8tCN79LRpbGylgaAnECUkjxCP0Lw4ZAtS0lv5WhjYUE9dBRTI1p/u0ub0vV2v6uF/5Z/vu54eC+4W8maOadMKC3WbRlNvrEB/yIxbDEsN8wMd96qnbVidXQxybKm2Ay34uZug2orvzk9PebI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788742834; c=relaxed/simple;
	bh=VAEQvp55QYBg39Bny3SXBevzlyBaLnw3YKLk9O+ckPQ=;
	h=To:Subject:From:Message-Id:Date; b=gZ5W41x/ZsgYXu64ps8gZJTQjN/DLD3BAn3QD+PlWDTEMR6tEr/MUHIfvz0KQp+cmT6IsKYIJo4n8gSy4pHdZeTVcIzZkj8PDm+Cfb6qgJpIoBFIPi5TvS4GdDLNPTHZZ9p+nu6ltVxmxdLJinv9S2jA2MM9jgwrxiUGid/U/FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgIeH18r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgIeH18r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D979FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788742833;
	bh=VAEQvp55QYBg39Bny3SXBevzlyBaLnw3YKLk9O+ckPQ=;
	h=To:Subject:From:Date:From;
	b=cgIeH18r3Ts2xUy6xHKlqsU7n+tB1h2pzbvKHMthu/QJHGiEcvfc4Cg05gJeg3b/N
	 9Y1fX3ez9gulIJW4+unP+PX3+oerg+ljii0WJPrjXsUR308Tidhrz5JV7LoNkYF4vy
	 m6aYWC5/CPuhR7EK8gfE4YEknibFs02xwB5+az46S5ThcuiM5Y5a2l0imw9JPThH6m
	 ivbL7J+N+6qaLUNmi9+89teJidl6K93AyuzQEQsGlLNSLhKIbhlcjQ2uhahxd4alY0
	 7Su1grR/KUH0Ce/ujtScJevtxnlXjIkppJM019WpVK7HuHuQjvUpuwRTauGuUuDdcT
	 STFvH4t8xkrdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3453C79F8C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874283372.1230.11441887046823900223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b890d7664ef3735f04df3bc3b7974ee21cd8d87c7ee5b8e342d2fa2089939e4
Date: Mon, 07 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788742833
