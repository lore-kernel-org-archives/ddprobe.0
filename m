Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0975368273
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773918894; cv=none; b=KU+XRk8bcxpoWzLdDLb7b72BQAQ+F5TOk5QVcz/icvcX85f2ChAMMU2fh6pFRFkqqJUbACYNOY9mu6Lrj5d7pvx1ThDA8mu/WfjK21kCfvdwIiD2pZlPqu5CTf6a0vqhn8mymjrB360BNlL39VSWjWeatFFGcQAIbHpEoCjzPQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773918894; c=relaxed/simple;
	bh=lrU99vW7Nkg3Po+2D+8/3gY51/T2ay7KLqTGDNJ1A3o=;
	h=To:Subject:From:Message-Id:Date; b=BvZC4Mf+AP9gpr65U8iOetPcfxaCOsYviyQJqCi6oMQXnz2joxc4m2EFVarTY5ijyCXyxcbGleNpOOzPkcDRGhlYeU16vsLkKkDGsTyGIPDgQ/wsJ2oIPGAupi8S5wy0epxGCJtVXPdMXBqqs2p0qrTQjqBJ4+eQbTxy1tPhMVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvwUZiXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvwUZiXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7DAC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773918893;
	bh=lrU99vW7Nkg3Po+2D+8/3gY51/T2ay7KLqTGDNJ1A3o=;
	h=To:Subject:From:Date:From;
	b=hvwUZiXRHRNU9lkTUSCxSAkemZpP0CMCV6XKa700du+ijlsFsUGM6RGlMlFzKzXiz
	 drZWkA4urzrA7TllnwRIVOyKalyMc4givAw1zklpcGYyg2jcVR4nOkeksBb/panOSP
	 ewb9iIQhKz50r+bKpFNwLJ0cCuhRbjcGde7bM9+kgpmLUccNFpx8FF6hW4WOr+Lxm1
	 t6IsicLAdME/bmC6PrQ0evqJgm0H4gq8dLHI+KMr2kE0LyxY6pQZUgM9c41HJGHZWe
	 RysF2/vj1PXBtzN1feIAPz+g8gZp/tqIliZLTA38PkqfFn/odWYml5CQKooyL6SkZh
	 ZWpDC3zsIUQEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B8108E1E9
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391889357.12761.18197686694054457680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f632c98fe55fcf7184e5fc00b4bee82526412b8881209346a017044b2bf56fa
Date: Thu, 19 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773918893
