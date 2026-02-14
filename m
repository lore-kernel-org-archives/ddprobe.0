Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1376C137930
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771110894; cv=none; b=dqXr90CGs2UQ6G9ApR2ejVGz7LmaW8Po7lkuu+w6CcwQRkHfxteKP/96rYHnREQZOKvXOrPsc2Uw2AIssulnAZAzhjsb6Q5+LxahOf7KIe+d64hANs63dOVgwHP2fElwCpIfb9ozPi4lNtqxJ+GM+ezy7fUl05h+3c0OrM9PohM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771110894; c=relaxed/simple;
	bh=pleR7WfKdP56840rfzbSEfElEEVxCrDUIZxt4yBrIuk=;
	h=To:Subject:From:Message-Id:Date; b=SzEOT47US5cmW2ogj6QEn7NWTZoIqHiPTATEr85Nv942XJoyJK/C3N4TnnlrXbQindcNQ4PlWKNs1JaXGP3EXAsEqAgHmiObisZzt7lt5YYXDu+vsx1iGQBqF3hjKEWxDK+V9q2kgB6pCkxDaGIqaeU8UvEVZV4aagPy6C8XYeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUbhswYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUbhswYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF825C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771110893;
	bh=pleR7WfKdP56840rfzbSEfElEEVxCrDUIZxt4yBrIuk=;
	h=To:Subject:From:Date:From;
	b=PUbhswYzh40GINzJq0gG5AZqW9AIVnuT8Lk9fl32rR20/+DAyv+/Wdn0Z1UqRQVzp
	 VQEcSUxgZEUtHIlRRHkA3CxwYMHSEjXYw5V7whLuh+9La73BulKP8yGyakTqAWVeWj
	 TC36IP5X3GpdYmomc94bLjQeyGdb1rl7sXFjUp1zTYnZRYgDun1/UTsd9LoWWdO00u
	 QGQPQLMcftBptgkUO/+ANm7jc/7FxzUchL3kP1vUAt6u8VT5UZbp0pz6WW5blwryia
	 BPY1UuzhZQWB3N/jSVJOmuzvwY2iYPE1Lc9L//OsLozifud8G2GFNjkN4eyFwl4V6V
	 /ro3H7v+eTjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BCAEF5858
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111089361.571.7044015624773880371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce2393bca5c07dbf5447ffb6da36734bd0078aa490421a90cdef875dfc0751b
Date: Sat, 14 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771110893
