Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E73114A91
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759005594; cv=none; b=TLI5JOXj/HAxFgzzn/e7se9AevkqSxngNcyy99B99nk7uqRCTbwtV/BBxaZwZzasKKAU3TGBAxQx0dVcvk5gE57WGMz8m/4EGe+zvmDyb3BfQqDVIBBnUCJCMWZHVGPiRuCK54g7tN35GCNFhNbjRVvHoS7QOpS4oqK1PNfcnpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759005594; c=relaxed/simple;
	bh=GHJvQNRVBhXxwjRclqs6aZAynYpXuoChj59Bs5L3EXc=;
	h=To:Subject:From:Message-Id:Date; b=XvG5y6V8GUalCMGiEptXC3vbyEAIoqvRG0GwgYpzTLnErrh81Y6QoAGhQLOidnPk2KDJi9iFqklkeAy2pfkYusK3P9cF+ZTPxhIr1hqHAhUXr2h8jbLWci3qU2cQ1muIvJRGIo4zaDH8xVlhQ8wDqif/rWCSdCbWqZAMI2u71GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv7VPHDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv7VPHDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3422C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759005593;
	bh=GHJvQNRVBhXxwjRclqs6aZAynYpXuoChj59Bs5L3EXc=;
	h=To:Subject:From:Date:From;
	b=Nv7VPHDfYl9iZpTv1pIb0xZxvDHXNx+3Fr93NnSKx3G4aZw8jKcY4wa6Iqbko3OTI
	 x42TRgHAN05N9pdKc+6lncTAKR9LgIM3g8Uz6US9VkIYq0pfVrLNEISXLL3qiUgVIj
	 Rnv/Xg3W3gYzG8ZBHCW5OOwaWLDAPpM2mS8DFGeLcc9ej3QHBH3qvWDkg+rnjIVSsI
	 yQmQ4ziWSK9ZzmMPIAMml8DCbIyrwfhm5es61/s52hG851mEkaeKJb+YksQDQ3XqL6
	 iPFljtnj1ZjFJuy6fEzCfKrd6Ia9yypl37Udq0reZacfFuArJe95GVRnG/xNYp11hn
	 mYHrt9Nlfu1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CCCAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900559358.24675.4806863409805108293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9072adba3cf046f2a83932b15b95108e6b90085b8fda1e3a11fb2a667eae6c9e
Date: Sat, 27 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759005593
