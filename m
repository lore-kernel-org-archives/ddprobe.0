Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCAB1DFE1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753132194; cv=none; b=jeM3b71dbkIVAnxVXDqcSujYGttvxWcIJ3wXIVMGZQT539A5de5qdF04LmBJs2Vubc7UNcTZdtGc1JwnCXoysFhz4VdgdvX7g+7AQ8P0+iBtnlSfum1fGdh9d7WJxUe5pUSQwVc7juYcBZ0ANbG39xQyYn2gtaGpHHwslJc+eKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753132194; c=relaxed/simple;
	bh=g2i+NHOm/gYtJOptLzom9xyc6HYzQlKbrAdxce6LMSc=;
	h=To:Subject:From:Message-Id:Date; b=QGaVfcggc02ejzpjwPb2mUD5hpI88d5O/VJo0NNjzGU0CUJzlcAD1D98VZfpr8jm4pt/9jFsJJfYYYrcC0ugw9WPxe7zfBEMJNhnF1+3K/G4vARDyGhryFaQdsqqB0DUc4rK6vIPtN3mRfDuJb2iI3ZAwqwBj9ZdxpuVolkaoB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DljzqQHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DljzqQHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92F8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753132193;
	bh=g2i+NHOm/gYtJOptLzom9xyc6HYzQlKbrAdxce6LMSc=;
	h=To:Subject:From:Date:From;
	b=DljzqQHmc3kR+Yq27iww5rYy1cmaYeCBekT+BXVQX3iqWdx0napxEwS2f38A13FkA
	 Uxs3nG1aVED5YCySfOkA5EMhE4v9tcKKrVSudU2/rYpqVovBpu2bNlWmrrlQqCHrOP
	 7ISj9ZaQC5iFO8bQh2b7Kx5/qCsG0ifOXolJZBaBrJ7g1+H2yvIocVn2Ztulboba04
	 R5iIGGmrajVOM/J7Xcs5xDG+KkSG9Agb25T7/dquao43QCGI6rkqhMgDucKZx4ryjQ
	 2tcgm4nJSLJvpJ2Pdxq9SkOGVAUGJFgbefFX+pafcENVsLjr9NiC6u9iaCPzdUI94n
	 Q43CVV5Q7bIFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C9C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313219358.19774.1110628968429252521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe73becbd8c4e872d7a9573690b6fd0bd070bb4375eeb0c7179ec23b486c780
Date: Mon, 21 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753132193
