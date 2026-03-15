Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42B7155A5D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773564293; cv=none; b=U0F/YbXmEhCskLjrGYHrpTXxim3P1U6Zb5D5nwCKxIENemdMO9fXZZQeTLsTjt/1lMZqqb7VmdjohSV5abrlj53WkQJYDMVDWNTNqSkLHbajTvcGXw2uOFPPKrYAVqA1WU7lfRu2azB5aO8NOjqkRuWagKSuNybadSF5SBJUHI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773564293; c=relaxed/simple;
	bh=rXt1g0GPRsksjgP6eYVuLRkE53qg+aOb7Kw2MvzGSQI=;
	h=To:Subject:From:Message-Id:Date; b=UcP4hXzAOi+D+9Xdwt56pktUGDWm2b3wveQsEo96GfsHjvtDy1j9HIjolKsSj1n4dmHDT5mXfDCNQH6M0HnJ5rIv5isrJ7WG8Es8bkC3v6OLm+kINukHoAAR0uELlJW4AcOBARhzkfnzcnMkowqKAIgmm/jyAvY8CGl8q+axwtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTXiYGvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTXiYGvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF77C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773564293;
	bh=rXt1g0GPRsksjgP6eYVuLRkE53qg+aOb7Kw2MvzGSQI=;
	h=To:Subject:From:Date:From;
	b=CTXiYGvMgazcGL4J2Z293hW4DCgv6a8dwvBo/Nd0k4kMPgeaE0fvQ4Y0rSAXcGP8d
	 NqzYvNXfTNHjhRIOqVtSCnejjDtnBfxNK7wVknoSZ3PKe1iG2xT7Pep2p3SrM2h++k
	 aZPxq/bDTUU4P0N0vIB5vRHla6jeUBU/sXTq7dhjNsPcN6wsVkM81LH4ndLl8jqqNF
	 Y73tWukLJkkFl0O+UFoLXy5ZX1HwFyue1rarri4iqPK3uwswLS6HlPzLgzmUTwe0n9
	 09qD9qCRdGwHP0o5bPy472uJBWAEpeRnXeBNzayxceIkT9W+DUVqb/B9ZDbSPvJLPe
	 pFCUDMgN0FHTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C3D58B0C
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356429357.21255.17530595105136116846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da8882fe7daab61a250af832c16d764f1c0ac29f959af47d5f9cf7862a29e97
Date: Sun, 15 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773564293
