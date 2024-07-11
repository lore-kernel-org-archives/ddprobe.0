Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596B320317
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720718243; cv=none; b=aV32FbGIVT5V2alfC+jrE0LXUnTnF2DvHwgrxB7LB3ccwUQMBxGpThQABC2IPsZNBqMz9FHqvp+hPW5o37mnXGx6XasS29nJBGlQv4lCSmCqZl9KyDy7jxg38ZUR74HcuAfnY4zmeXWvj2YWHD/63vjIPy7q+U75QvNI7tnukZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720718243; c=relaxed/simple;
	bh=X1RDR4AVlJXQFygXoHV0nheRUPXPXFD/DGIIjYq/Gjw=;
	h=To:Subject:From:Message-Id:Date; b=LuJp1eyUBgilQrpWcE9eWfidLlI65rA8V1Z1v15d/0vqHrzyMBqpAXZuHsdc8gO+8rjuLsastP0q6byzv+rc3KDbHjScc8iYFzs/Gp6eBk7yOFafWuaMPZvdQfMPYJNKCxOrmk20JyeofNHUtkb4RvnBeVL7Rxtnzeituu35SqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFSF+Xa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFSF+Xa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A84C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720718242;
	bh=X1RDR4AVlJXQFygXoHV0nheRUPXPXFD/DGIIjYq/Gjw=;
	h=To:Subject:From:Date:From;
	b=rFSF+Xa++Fi9wUiJlQDNEgqztP+zdvLE50kei9AizqE9vpOefKjjleLK0UyDGOE3Q
	 gRSCLoVn/ux38RmRm2uAIp5Zq36mLzR+p00Vw0MwpFi9BgXG1nUvfytm+7OdD+FOhK
	 8KvpLcN2v1lavD0KdR8XL5XX05LmIycWaWpkCp9KFKQrGqNsPpFnXS8RHqO0NDE1F4
	 dJPD13Uwfoznu0W+6tzidJLcqnsGaGv9+v8jYfrs0OLcfIvmKI3uT5pBa7bunzpsbD
	 fKrmO45AOGzb+sJ/JECNbLppvbWoodU3pWABPQKd/yt4Y3aAEaai9VC2Oz7NaXowIC
	 VaJ+v7+xn7LlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BC8C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071824277.30985.16317646470011699560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b465dd6c0efa7f735972e82b369473df917aafaf6e6161a0c048844aa4aaa3f
Date: Thu, 11 Jul 2024 17:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720718242
