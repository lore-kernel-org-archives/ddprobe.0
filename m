Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4990315D5A0
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717024463; cv=none; b=eF2S8sldqrR1tXz/MUXXKjE4zB7Pq9Ho9rrePKwODFwA6jiSrEWsD+l2gkRAfljmfNoy156EHAQYvqjOuRntYa0RvfdhgNftHDeBjqOWIAW14TpJuM8ZtGhYzoPlfeIeWj6VR1WKTJ71zCFvTjXNssJyGVUefrpjKy/WQgDco6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717024463; c=relaxed/simple;
	bh=bUgltAdyhFObWz8iLluJ+xEih5OEMwefXxluMv6Rehk=;
	h=To:Subject:From:Message-Id:Date; b=UVd6P54e+9AUDgp9J+lCCR14+B6f2D+p83MLNZvAFRC+M/vw3cz6rkfxveV3G8C+8C02zn15NqLvxFTvIe1MRvBUFCbnyO34Jhm23gAjCkT8WrKzwO+Sx01mJsh9Vtm6XA8WFWTu02KCR2dmtE7o01tP1wI42JW9+RdOOSnCyEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6TYz8KZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6TYz8KZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D9DC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717024462;
	bh=bUgltAdyhFObWz8iLluJ+xEih5OEMwefXxluMv6Rehk=;
	h=To:Subject:From:Date:From;
	b=a6TYz8KZQG6xvx41rdcwvXneFU6H44HEvL+L04HdS3/1Y5i4v+xDO7ziZibwvV/hD
	 Ntknb0WyXEY43sNhMHUFq7wFFnK8hbInv8n0k2lfxiKC2hDLmJHTnzWqVXQmq55I2i
	 bxBiO/HltgaRuR43u9SO8RS7pewRDHXQF5zGXpQz59+HE/pDjRZeuVVa5N3o4hWugS
	 CnIh+xsQi9TOkrZ6PmvCGaFPfkC+ZLwTC+Cjx8DKWlIAmU3L82Y8j7Z8m+bzx9aTul
	 ubwxfRM/D9HT+sVQfGDiGcWtLUoCpxY+CAUeMkwRxp1D/5o3gk0zkbqNUSwIbksS7U
	 kxhyvA1F71ATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF543C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702446277.15924.9593725320423644816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5333cf8440cab89714d0d0b89a3062d9fdd070a8455566a79045b4e26e8a85ae
Date: Wed, 29 May 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717024462
