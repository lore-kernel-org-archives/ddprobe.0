Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD0315573F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718806163; cv=none; b=tPFqwxM5cvtvVxgmQq2kkdnXfJ2pekQSZs7CzD2jAZ33HP7RSFvfOQQbKeGQjGl3pHecTflNPJwR2tucer7SBKGR0F7KY0ekWirOqeQZoF+N4r8Hr946Mcwn69rsBnQdrJNpimLYtyeZqJn1PwSht5+v+aI0gkk/KL2QEvzpeCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718806163; c=relaxed/simple;
	bh=+o4dDcgVgvj4MfgSNKL4wwXX9KtrwXsGDCsOeIYMdEo=;
	h=To:Subject:From:Message-Id:Date; b=gYEX8Uj9APQwcq40WmiQ311xydSodVLew2yNxu5ueUKvMNymmOhDtY/9bDMoHxSag1SPAZWmzlwPtqH4vX0YGc7d3TqXkuf3ENrmX1neCfRsGxdjUgmcUfMF60blixKS1FsqLOXyiJVdqWmLkgaU7YQVDmiIvR/I24gzjbbevZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhdOMKuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhdOMKuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5639C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718806162;
	bh=+o4dDcgVgvj4MfgSNKL4wwXX9KtrwXsGDCsOeIYMdEo=;
	h=To:Subject:From:Date:From;
	b=JhdOMKufmXWBhXkl+IA4beqP87IAetbhl9WdzZ7EFCh+Z2Ie2C9WISE392/seDIUk
	 aZAfDVHGT0M7VnW66Rx7WSfmRIa2rs/+LhNpRHwScXgF+mjmRpJQKGAgLL5E6625yJ
	 hcGhBSxgElm0M8SqUf4SVX0Pmn5XgY6RWaGNT4Kn3qQgz47IpN4FUs8Lz4Ck6UhZNf
	 BJSXdfe0xfeukSmVMyWK4aP27XdFB/yUuDiN11IVhBJ9dm7r5XAeLppAh/Abo7OZzX
	 iUOaSJrs4C1thDM72v2ryBPGYnxo1B6oWIn6EldeBcjdd/D3hj+Y0NkFslmi9gcdOP
	 PKb8CSq+DxFKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F45C2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880616278.23906.10232319723791207966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acb65a9638d7e346a4c4b046938bedbeae64ccc935e45c1674a89b73cb2af8a
Date: Wed, 19 Jun 2024 14:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718806162
