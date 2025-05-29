Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32114347B4
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748534394; cv=none; b=Q3jlYrO5rbcLDv2pQlhYM61eDURmHFyd77wg2QXH8qTwlyPe0m//rIm2ihTv93n75P3altkPKIRQFQ/I4M5R6k5AH1LAUmHJqVUvqtGxXjyiJC08jjprqpsQCGDOkilFqmya8GZiAf+4RrSmGKSy8FfMkqWS8WnzepFdApmiKAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748534394; c=relaxed/simple;
	bh=nGDN4v5ug4Lar4iNbn9EDJgw6E4pncJL3sGBlkWy2jk=;
	h=To:Subject:From:Message-Id:Date; b=ejbaasfEQeNC6fw2Zt8NW8k+0CVuofRulu/GnfYuvkFZuHSXgTBRsiEyTLkQr05xjq6QfXK+T9jLoSpbH/rXn3OMWOpoKd+adfuXqMCzhnGIJYnOkjf+UmlnANZnd6Vryp+q2//QEvE+sxMJKLjp4YPIyV8rF7kfoBoaQuse9xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqpABvgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqpABvgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748534393;
	bh=nGDN4v5ug4Lar4iNbn9EDJgw6E4pncJL3sGBlkWy2jk=;
	h=To:Subject:From:Date:From;
	b=IqpABvgENBpvMHls59CQJXv972YfJQuSRoO83FJMt6bt7WPeDl6PrmLbQVXi3ocJo
	 b9CkgoJ0ZTW2iRVaVkZZr37g/NAhVJzTZAAAZg4Q3Bjb53b/RHJ0BIse90LtUua6sl
	 +7eReKIMG0jDSdhCcMMzqShbAhsyIopkgQErNuMavclANJuK01Zpfg6esi1JSpADLI
	 PJ3FffTR/VTPZhTsvLTHL5WKVYLfecWOgSqoE9Nv0eC8Tt+beJFfjxaFMZa1J7H4Vb
	 T5RBn5a8GRbpfsVuFnBeaB8W+7dD44zhKmKRrtcn+mECy9NjBuDxEZ+TeJjJORQvL5
	 WB8Mn5VQUiE/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBCC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853439357.2414.8395822585763008701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bdeef38058b00c7991b4988973e083f4223a84173b37541c08b0b21074631e5
Date: Thu, 29 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748534393
