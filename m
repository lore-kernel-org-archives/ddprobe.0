Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3103D3FC7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726792554; cv=none; b=hkTdkeIX68psci8cgBjLCN2KNs9jh6sBK7GzkEVIRpWL6f8ybYo/5q9/DEuNTiRPcY79sLH5LAXq9Zdhd7+c1P7w3IrVzEK9o3fOKdKxrOIxkmoJqWyDpjCGVpNl05xcIaqZNOotFY6i8lQlTy/v6po1N0lAgVKxwRlBy7g+V6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726792554; c=relaxed/simple;
	bh=Sq9TMgY3FCOpY3b1pG3Fv+Yjq5Rlqq8bM6d0byOXZuw=;
	h=To:Subject:From:Message-Id:Date; b=r5dzaXmALFEX6U/OjVTn/rXHuBEooBrtd5524znDNboyPG0EXWY3MNuUwRDY8bEw5Nn/fQdaUDPo+REZMV7sjYjsgk5mfhRjulssg0ASGRcmKzJbMZC1g+oclLC0fh4h94OyXk9UaG5ByOkZYfOvJXQocEwkM+yQWUDTOnyRHYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUuGyY7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUuGyY7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB31C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726792553;
	bh=Sq9TMgY3FCOpY3b1pG3Fv+Yjq5Rlqq8bM6d0byOXZuw=;
	h=To:Subject:From:Date:From;
	b=oUuGyY7tQ8t8+2wXg90Rs6Ps0WJNmBTyTTZnP5JWVWvqIiPDAGTx10FIMQ53HhNXl
	 o+xKXsZJeIZaXVxHYSiVgSg6qoY+W2ItVF6AFtTYZSxO4MgHo6iOriAeaOZ4waLTj3
	 u4IXKeXQWJBn/k7nLgcYQLxi6aJJ7aZBTOIk5G6xDTC8eLpcUTJM9iITYqOpgAwH9o
	 J0KJYsdw+721OrtuT6QCdo+BqoxFAJwLhoxKTdWBZfKHvcTZm1n7YvVjWSfGzraGt9
	 Sqpe1gbqU0unrsmVTu8TV73QqTuo825sdtiGUtxPyqfEXWOuAo76YbQz5K+dsRN+wn
	 G2k8S0GGU44aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C5BCF3975
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679255360.23883.4623766579623353469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8eb17f86aac511e44a0f14e5e2469bf28067505ec5179f385be27ac3e1381c
Date: Fri, 20 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726792553
