Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0399329BD8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765128774; cv=none; b=qzJc6NHyUWfKdUi21Ep89+2MtHZZyYsN/23Nc8X1uoTEwz4Bz48mEzjLybvQfF+JEY4VSdMBRyAmVzL4EME+zz167GYn9g1QCX8qDdWVyHuUMuVXgGLx0hdOf3hC3EvxrGYRUhZWg89g0fcTy3DDqn+0SdE2NrzDeqnQ2BdM0RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765128774; c=relaxed/simple;
	bh=tH584H1CQwDVmUBisYduauJRh/4tyw94d/6loBTr7Ts=;
	h=To:Subject:From:Message-Id:Date; b=EiyIPWp2ZBEGorYBA5GCYyTTt6gVP89Wp4MAtiq6X+hpWY4eea4HqSoPfwCZPvJG51bHqx1REzI/D9bWxHRQlfm2TvpWz7R8j+YQrd1okY8QZNvAptA+dFE7nhqpU62OZfVkfPns66EfpAIDFJ41PZcyxf7OB7RAGcHTE/7/tqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+SXK023; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+SXK023"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A719BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765128773;
	bh=tH584H1CQwDVmUBisYduauJRh/4tyw94d/6loBTr7Ts=;
	h=To:Subject:From:Date:From;
	b=X+SXK0237zfsMObwEVgd3OATCbZZQdH4icp3N5vUNc1FH+RRU/VzrACQf0OtwpnPG
	 D8zXQZuiwL9mCdmr37aEGxay/RB9rEQxOTjjyKux9o+fVcJLhzXOS7oAfelQk9FCmk
	 nvN+yC6a9bBzhgCLUA7tjM4Sxu1KZu4OMZpiqVs+FK3ToZRscYcygaHP9mBac5bunJ
	 piMdxWcnp6VYTuyuH9WmSdr4U/0biWEmzcxTLM9KcmcWcLNtTDvUk2RNedYA4wNirT
	 Lef2Ofkon+6u3/K8zA935eAy7GvbyNFllGl1vQyoZIO5FQqY6egEpQxpS4tFr2nfX+
	 8MheDi1ZCRF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978DCD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512877358.22428.8772066849440817900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261136a527c9cb1271004f0214e894b4d116296483dd7f1d7d26646ec1a458d2
Date: Sun, 07 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765128773
