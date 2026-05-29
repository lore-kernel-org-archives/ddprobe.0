Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586383D0900
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780056754; cv=none; b=TeVd37ArvJIIYpzrROLGBRQNvGnWuD7Ne6lhXJJWvQEiA4ySrkPjXkVeuOsTJrWpOUELG9HVPhPeq/QYBlVASYyeaN7uPJS3uc7tr2XBxdTOXufEzvDDAKPjmBO6CWYrGm+GKdK+F+GBbdbje+Z6wri21ZX4pZIqmsza+93CtvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780056754; c=relaxed/simple;
	bh=7naZKxik0+5MLNOFoY98XW/t2/OAu8dAMKEHxY9sTGs=;
	h=To:Subject:From:Message-Id:Date; b=oejZWGGPI4rykfWGf4yunpHNFa412kObAEvx2uye1+b4EtPkqVTd2XG6nVVKY1mlDjwx1EbCnWKwVQSCi+bakTwUhx3RTjdjMT2zrS9qXloWhy6KWzn+UKcIg/wypSpZlxOvAKmm8ZRZhQm8qv9GOi5DXAdFIyAflEGT0LpBKEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgTVnihn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgTVnihn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A0AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780056753;
	bh=7naZKxik0+5MLNOFoY98XW/t2/OAu8dAMKEHxY9sTGs=;
	h=To:Subject:From:Date:From;
	b=sgTVnihn9PJUC+s3FvxMhDV5THDSlRF/BfpWBhjBn3MYSEL5jDvo47TsRuqGwaEUc
	 W2m8pTKDjCAnmlwIFWboLLRE8oXzNL2aQkl9DZ5JQufVYi99OTawkiGSf8PsmXt7Ys
	 y+2TJtQEM0uCBx8T275rvZG/QCpGOkfZdd4Dqxc8qTSFvvdoya2jNrVUW1snV0cBeW
	 NTpmw9I54qPW/iX8JC7kxV4gmEkLUNqZjB4oRGDF+giW6qIG1VoAqlSQihRakgLALc
	 V+BB8k3dQFnr1YjR1ClTcPkK67xvnygDVSqZykm/WjObQwx/tGkYsx6E6gyWAHZy5C
	 F4hylXHvyEPSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB18CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005675370.24551.8137189465840448083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2307349076701f05342791fdc5fab63a805d2bc1c8177e5bf55764d1b30080
Date: Fri, 29 May 2026 12:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780056753
