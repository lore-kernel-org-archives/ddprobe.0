Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2719D139D
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761319194; cv=none; b=YV9xHVZ9gnLhMzzIOOG2kC8Md4vlgQkVf2D9sByHwOvkCB94a0NX8GLINMVgPC+h4EBN4mTf63ajl9+yP8A38vhupImT+9jYgbxyXtwt/BJGw5XJe/hMg7oOqTlq0m25vGNFq7FgAwcyf4elNd7mQG5S63b8snlfvF6sP6mD5MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761319194; c=relaxed/simple;
	bh=M+goZKUSY9t8ehNyumSE0D3G7d3DedbMc9UHx8FZABM=;
	h=To:Subject:From:Message-Id:Date; b=cH3ti8WGBGHMRpq6Y5gdFTXZ6IkH+/wRthw/LsRrAS7S07jiU/0qCumTWqqWx3iWC6bRN0/Lft4DGkSZIg7qEan5S6YIwtwUFU4gLnslCAFELCxZRE+ReoM9IQm92U80TwVngVp8KjlvYX3RA/f8YiRlVJpvhNHNMHQY17brRK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA515hAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA515hAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761319193;
	bh=M+goZKUSY9t8ehNyumSE0D3G7d3DedbMc9UHx8FZABM=;
	h=To:Subject:From:Date:From;
	b=UA515hAJsO7gRUBwg9pZ26bLOCXrRNQ9vgQ1nqLsdiDJzC7LC6/PRIyD3xLsYH/th
	 MOEKJRCpu7QGhFU0Td+HjQrWy6f535toWQ1CSWj4s2v2i865VBVM56twu/dMujeK7u
	 6LqyNGMxaGBS07hMR0KD7vP851FU29uGslmvr8iGjLl2Z7UAqaRgKDnD1EnQE0ShBv
	 YIjUB335ZhweSQs4uIB/ofP9HxPTSg1eL/UxnJpOxUtbVJAxAXACZ4osXsu4ad3w9x
	 WP9+qf1QEf+/eRxfscH7HNqXb55CyTLSQHxNyBfNIXMKwTuUojSbiUFiLqQK/ZkbAb
	 FmvVDkGWHd+yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90292CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131919358.3407.7879067703545835225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b6d318cb84c28290cfd1ec685467b6cc8410b1e66cc5f6137d91cc4e30d4e4
Date: Fri, 24 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761319193
