Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223AE7080F
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730656554; cv=none; b=Y4qGrQ3op+FTmifsXMQ5x7G4s828AD3L59qgvB5jCrtLoxQ9bBBmLeJqhvLWYaKjFs4fbpyGOfp5unqyn/NA47QfIs6RUIH6gZpBS8cC8Dpoiuiv3To59vowkOU59V595a5w5TXLkekv9d6ZoHCYKC2O88Jlo1er0cendSTsYhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730656554; c=relaxed/simple;
	bh=sETJjeBDHvS6wBw/z8/k4rR7XjYGBv6gO/iWRtGzbG0=;
	h=To:Subject:From:Message-Id:Date; b=r081rJ+3gv0dq9SSEIj49ptJ3rM7V9xT6gueEJ3hUuD4WbrfPJ89GEcjMfIPuhAqFuzbtlHtCHLO6QN5H3mwrHNGQINOda4vtXJZy8usmeGt+oOWzB1Jq+T732RlPpYgTL2rLHwOt9ETAAAp8DszPY7EpGD2T2ZPz5K432IDeSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peKqzH3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peKqzH3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0020C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730656553;
	bh=sETJjeBDHvS6wBw/z8/k4rR7XjYGBv6gO/iWRtGzbG0=;
	h=To:Subject:From:Date:From;
	b=peKqzH3Bu6RqvBap4GuHtWwCOoIVPnjqAzZvatWUjzSZZG3nxDbO7Xn3n39a3cv2x
	 dNpOP9GkW9TdRiR+hnb1caq8yVSC/KFm1ppekhV/OKiGEzKz1YOaVhuw05UNbu8NcM
	 Sioj0VFLtTXmZ/3niKRM9sCNjbw2mmjVC+O4l9i74hVChq4mYSTwzdPrLAZRwvQuKg
	 ekXR3LerJx97aFsdWZUhLc0iaKoXOSYr5odVY6o2yrFnclNXYHtT8cWMURibvI0CFO
	 ULpsot10KFKk0MTRiNXxiDjIqO83PrJUHBIJvc7e6gou3Yf+ltsjc68mix/DF4+INL
	 o2uHUdNRF/OVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4FD11182
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173065655358.32096.1668634274275175381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa04a826be62db219ebac274bab9ef203527d572fd5e4d2e4ef01786a2b488f4
Date: Sun, 03 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730656553
