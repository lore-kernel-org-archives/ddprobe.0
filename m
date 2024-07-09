Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD2E14D439
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720565783; cv=none; b=ljmrjUZZYmxTIav8pI3OFzTdahbot3dsd5DmPbNFIaUSqbpJgZiX9hFbBw9sCveF6lAHSwRZnmIYl6RrhMFr4rBAJtsrcKJSM3fDyVmEAT/5uudegaQS8Zss8u2kMn2/FuQrU6TDADGWHawo4nxtGPAg2tsspEqy3mcwhEdLYKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720565783; c=relaxed/simple;
	bh=yQeHm7cEZ6EzpwNdnMDG971Py41vbJZyGVqT7rQtAqM=;
	h=To:Subject:From:Message-Id:Date; b=sCNI7is87o/3bkBnuk0KQlnbgw+wDPG1HTfnbWh6gkvuEG2dBcanXMX2Wsv+jyRE5zHGQQUFf5AFOsqFKuKou5Ea4F3tsiiEJfVvj6MuOx5hDrfHtkCIyFt2i0LoCybbHNMRfU5kMJnUtMCEdAFoXSeRBeYrJJyCAvLPPstRjK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpKxddHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpKxddHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07B1C32786
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720565782;
	bh=yQeHm7cEZ6EzpwNdnMDG971Py41vbJZyGVqT7rQtAqM=;
	h=To:Subject:From:Date:From;
	b=FpKxddHttMAtlWrQb21lOQZprGhGo3cRNYaEwYGSi7suSMhoAY7d11XHs9ZOgWwNy
	 yM9wDmM/+F3+PbvcrV7ZU4Q2M9cEZOT1pJveFbvHbcTArk8wjFXP1/litijjuHU9Xm
	 CzLtRpq3CgOAFLcdG6qLo5drr1lxB6mzG61pGfkIiFr20cCndlK4+bcvg97gUr02Ne
	 L+Q/j4A8w7nCHzEgSA4FHN32GR9zdG7bnMq4qGXnT5f2sjtFPRmMvDoU65dfB8QbhG
	 fxRWuVBb12EruOocuc/Zoem7bbrZnBJgU1Hc9YxlL4Kv1gv7a2D1a6zivnxmTfbwu4
	 KLmzRLAY6iTAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F9CC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056578278.9858.16557625463842748630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f3589718f36450b29aa17e4dc8015d34eb5db09ac3fd74c16d72d3eb70e247
Date: Tue, 09 Jul 2024 22:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720565782
