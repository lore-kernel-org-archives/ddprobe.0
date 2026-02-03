Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7601E7C03
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770102234; cv=none; b=geatIX3V5ya/q66ML1GvEGmsDV8ke/8yemmp68jXe1BmBZJeuC6ojtNJaTt2TpDE1uTjG+FCpeFUogzZa3Q7wqUx+dwKENY5+YNTJqP2O86uAkMdf8Fa7YSgMWOFoFRgo6WUiYUQceqKRHV+fAwqbXsNNsxi9BVxV5Q6leqfCb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770102234; c=relaxed/simple;
	bh=GAan6p2dXfwODj8A9y8CPgAJ+W14KDz3ZZ9FwD1uTsA=;
	h=To:Subject:From:Message-Id:Date; b=ibA03HEcwleuMeFKAvZ7OB26nBjy1yLrpvQSppoWigrtl9G+lyrsmj0UNUSg7Ys2vH/b6aZLGGqy0Bzq3N1SiFYRK4exCMAR54IHi7VTRZfxaD37kD9XrZManxKm5JbZV1tX5+OrpjpPrSpXUiT1P2bIPsv0Sl4tAmIBfAC6qps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fp4HmM8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fp4HmM8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62BFC19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770102233;
	bh=GAan6p2dXfwODj8A9y8CPgAJ+W14KDz3ZZ9FwD1uTsA=;
	h=To:Subject:From:Date:From;
	b=Fp4HmM8Hzu8pu2ucaYRJ/bm6ztOn0HDA2pCG0/yQ0aARUOzwOhe8QkxNNU1A5a1jC
	 2XxEE7DrH/wDfplWvY8IY5FZ+yBqeFOPKKDgLjIoZ4fVb9XHCAeOqgeFr+Bg2jDGxb
	 taKfqajOxULXv/tm+XiEOxWzAbEMyIDl4Lhyd8lrsHrO8fPQz5Jk+gwamUjueCn7LY
	 ErR/SoW86mcuvhGLUbKypu+75yh+QR2WuJPQu9bdW/clMRQ7d+3/5nmZeA+YzLBAfn
	 PRRYCDQYnZdfLlSpex5pUPKnky24LpaT4qVPQJaN1CmWEqjE4/s8tmEx/r0TW6ie5i
	 2KGD1ZaqpUXyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D621E8305A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010223363.27931.2783787061205167599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de19466578c25dc66cfa698d19053f7442e7ba646fb0d7bdcf2ea9a6aeb660e6
Date: Tue, 03 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770102233
