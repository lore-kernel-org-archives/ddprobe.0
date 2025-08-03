Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0961A0BFD
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754245194; cv=none; b=ovZkh8FBJIs8jjtyhgAyXoX13Ay7bPZ5sEO6LYqBomKr7gJIw19TS+W4yjSV6+C16bBmGnBfLJb+bW9Kb4PUPQXQfFFJzUPkQaio8Ryv6vYx0vDoyrkTDeEMtk4FwmFi20nRCQu0a/5cz/Ocag+ZO4yia42d86EWv6s2gQHFDMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754245194; c=relaxed/simple;
	bh=UazeLJ0pdXKqSWHLjP4rv4e4/9/Gkhsnn55bQTcQT9M=;
	h=To:Subject:From:Message-Id:Date; b=lH0ZrfyYMthmQuKH+Om2La5mmodiQ3uZ/l44hcPbONsU11gQCMYfDrcWvAGLOCanNvTWtXs7ZXJ+9RkxAunUd3zdGVfTxsPc35jV0FyIk5aXpU241RybVhq5p/Jqh8ubnmo+8ZOSmD/DGbSjyuU7QjZYGlMhkxJLLKwIYvh5pJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyfQ59PO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyfQ59PO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A580CC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754245193;
	bh=UazeLJ0pdXKqSWHLjP4rv4e4/9/Gkhsnn55bQTcQT9M=;
	h=To:Subject:From:Date:From;
	b=LyfQ59POeAVO4K+7fEicmrtfKeaTxwESIF5b2wQa6daOR+4EGgUJ5YVCaH+Ai3qaJ
	 56vYuGKQQ6qJYhWvzcVuQMs2NTvaWO+Bs4qBOQUu6h6TIx636f+n+/fDfYLIW1BjJS
	 9yrWeDyfWvtNzK9SELD5UyK7Ty9wD4AMCP3HAV1da40tt9Q5d6qNYmU8Uf5iQd4wjs
	 Q+6JxVCF0WuxcAqmMXNKdBbXUlbbbjR0XRoTjcZKDtxb8/EIiWn498mEjP8eALN4cU
	 /qxhCECN6hEc50sHjaXSNmt7q2NihLR49JM1rG0FoGQei672SC8A3IYDvBo3vRf6RC
	 LWrybBeOgllwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B15C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424519357.31520.16629673535463137557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2217bc7906faed446cf80685ab624cfcf95d55eafb6216cc4d903e2a3bf524b2
Date: Sun, 03 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754245193
