Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D69672606
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756961394; cv=none; b=PzOnUyoeAc37+1MQ8qJYZIa9kRbCQVncDKLIx3oYf66yNaKpXBdxeyltD6mzKgMRKYcDTRrfNTrb7qt6hAt2wu2um8LmGboEIpK3FGN3k/3y/geJZtmMk+4OPKYIcqNI2u75J08cze0u5rrcNaVMdZHpCKJ9r3ZT+WSsclAxORc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756961394; c=relaxed/simple;
	bh=D8DiJ8icSvq7uiz8CahUktncv9olRxBPbCLY1Cp7OYk=;
	h=To:Subject:From:Message-Id:Date; b=an3vugez8ZqSTG7antkduX3vmL25q23AViG2ASVDK3XBG94NvqFB7TmD8bcYYBeumQ2jAe+JCNoVDQavbJe7nd4MLL25h4rqjhIqoTlNsF86toDMAUnRE3UTsz1bcZrB5eIP++T914mIezCcmzG316WgiyT4s+f1vc3d8GAOhsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXqJpbdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXqJpbdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DBC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756961393;
	bh=D8DiJ8icSvq7uiz8CahUktncv9olRxBPbCLY1Cp7OYk=;
	h=To:Subject:From:Date:From;
	b=uXqJpbdDyDJGKmgg5HpNIQfsPRB3DovYsPrGGbJWvgiumrM7tQjsx5mno95jJj7sB
	 pRXb4iYDDRxn3yg8mB4n3FOjeYhqJd211NB2JXiz3F0rwXGYpF87v3ZNBazOkRdfh2
	 cUyW4yUK64kwJZcMFt+a3rL1GvRrKCDArGKxN7L+UJeHbAWiNYgpkOgVlSxeT84XdR
	 GNu90aaAAzgHbkEjTWYdJJltcixe9DRgUO9mGux3wAzpdtwI9LYiAwMjA9HiYwUmZE
	 5AAQyjrzbjiAJXcghAB3cYPrT/Gv7tlaBvnrpTWPfrafeNwdygvs66IS8hQvQGh7x1
	 60vs84so7ot0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED43CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696139357.26984.1569078589403406335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b010c1618ea19b95e3c0205ba7f61260442213597166fc65c9fe43b3ded8619
Date: Thu, 04 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756961393
