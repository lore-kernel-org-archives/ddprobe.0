Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71E724466C
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777558653; cv=none; b=tFPn7nVGW+RSm7kOIVe6OTq+om/DA5uJ39kub9yFTtV0ZLoWN9g4cp8kP7/Nvme1NP7Wq9FQeb7xzkjkZTTjddPxzSs4ig8u4saYVzhViLnOoMCbhPmn+nEI2lAjMpqyXC9LyMLc+KGD2+iv/n/IIYW8EbbNHV/L57sclVjfLKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777558653; c=relaxed/simple;
	bh=UfX6VIqpkypsFVFUTZO0vNtwYXaok/xab9ijgEtzukc=;
	h=To:Subject:From:Message-Id:Date; b=fOUDkxjhHtgDYEKtOpY3/3jZ/4NRxZI15bbwJ3d/cgRim+awMXvN30UPFS+QRaKIybdI/PlbGvW7uto5n6WOmaYjKOYlL0Q1V2D3JdL2N+fer2A47Q8UrjursmUG3xDH9lP7f1rYMdnlo0HxPQoJZoFpFPMNk5sP/+98vmZdGGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxkm9DeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxkm9DeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2C5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777558653;
	bh=UfX6VIqpkypsFVFUTZO0vNtwYXaok/xab9ijgEtzukc=;
	h=To:Subject:From:Date:From;
	b=Hxkm9DeMRTs0zPaxKZSIdD/1hS7+vb5+gKF9LO4I9PRWf8F83r7ccnbsWjxkAOzsP
	 sHzl81nZpvvq2B2iUAr+K1KUwN6JCZQfM36qCuF3iYuOci2JzFB5yFmYzkjhsC5jRz
	 EE+9I/YLsy8F7QC0CHKUw2sx4TU2BopXQeQ7j0kmha1uCKfhQ6u9MrGiTdQXsZcPJU
	 /+rpVIzl0MlVUqptbGyqQAIICpy1JMzxeHhnLD5doho/4jKNJzEIM1+8OPHdBf2Ikt
	 7l8spgOEt+T4ONhZvQy9nyAAjWj1H9qaR3LrJWNESReJT9oyot+RTl56VH5n5dTZ1f
	 ujKE5OFcI17Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB20FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755865368.13900.15528350813813728116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c7e8bdc33388273a12311b3058093460af73310192c39566ecd8c3944cecac
Date: Thu, 30 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777558653
