Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABB7381BA
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731248154; cv=none; b=SaXumgVvEhJOg7QSKxRzGnlXv6F62bcZaP5w6/igaENVY96bsd9yF7tCwq+jXkKjfrLPbSzUqldhg6mb2Npcmrr43DZCsM7iwUcPSnUU1Vp1bi627qVAF6/Z3pQGGVI8zgQmiUKlTryKn4ToMFOT1MzvB7js8mL958xpm6RyRHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731248154; c=relaxed/simple;
	bh=D7dYXsXvolTiSLJxL8GgAhwiPCDPUyOp9PKq92koMFM=;
	h=To:Subject:From:Message-Id:Date; b=OBW/Cnrw2CMWEYUJGboB9XciidhXUakC1OFrTRc1nwT0KWFelB1T9KiPzsgoIXCli6BJ3JCczCWHPeyB6Vb+YqOcsgZ+CpW3N10CozEul6T/DyQLy0ajB0veppXpYZ3/0kk5D2zfC4Mdld2wxbvisOf6ZkNVBssM0bfjGaLEMII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbImTZdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbImTZdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC01C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731248153;
	bh=D7dYXsXvolTiSLJxL8GgAhwiPCDPUyOp9PKq92koMFM=;
	h=To:Subject:From:Date:From;
	b=LbImTZddDASTlO1/jnRE6KMUmOHOBDWrnSaWp+TRewUvPcwIHkgLJxCuP8J8vBOTA
	 w9SZltUbdCcj7UagXXemUK/lIchGt/mLnrMF8XaGZBsBJW/fQ0qxY7HiD8KMyJm/Z1
	 7HS5pUnXUgLvIp+maAKItmA+BqkBiV1RK/ld8SbL2ib93kxQlQa7Pga/HjSf4rvtu3
	 Phj1R7YeXUFwvx8yJH79ZW5z1v8P9T2HxcQvDe7FmhybDCnphV5yl1vdxaKKlFH18u
	 WQ5tAeJnmjIo3TvyJ2Ae8G0OQp0ZAl628AaYaR6OMeksT06IozqAsAnMY6u85ODklc
	 2cI+umEENpr3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FDFD6409F
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173124815358.16073.1202338445369188160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b60f926dc12a5326b4594cbd03cb8491d43100e791b2c285af2818d111e8ad
Date: Sun, 10 Nov 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731248153
