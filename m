Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB6954279
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721805954; cv=none; b=YHplUYUY6DHlUKHvHe7tBgARwO3h55qyLYmcd+d+gVXlaGR/6qo7K0/jJUC1aHdutp0GeFvQun7hVT5XNJRZZaOudc3bJk6PiUNtXEBtpYz89Cz9jl27aSsbXHKYGte1LYkoDjzS1HLEJAtdtIa+hCvc4TugojAT11PQHGoq2T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721805954; c=relaxed/simple;
	bh=VRZYEgUCJLSvz4tlrAwTebM9qxBcRz+zDR3FDZDaOWo=;
	h=To:Subject:From:Message-Id:Date; b=PVWofaYUHzkj7rhDOtALDFKXr8TRFjyAldiBYac7ErbNvQOMj6Ebo4z0tQdJLnL7fPgi8T3PP3ZPNEVcu2Sz4ShsuknecAjaAsFpICSx3I934P5vrosOkixiXiEjgRF0bppK5cmAWYhnQahxjOOfz70xWkwnyH6tgDwOYvRnqSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9TNKUDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9TNKUDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06E3C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721805953;
	bh=VRZYEgUCJLSvz4tlrAwTebM9qxBcRz+zDR3FDZDaOWo=;
	h=To:Subject:From:Date:From;
	b=k9TNKUDIim6Eg6oq4j5RVQRCq3rjxQM/3ZNjPf5V330GveKlWzBGTN2QV4u+tzO7W
	 8SQ/4M594K8MobkBUfS9HPonYhnynubMoCXrXPjVzVjm8T65GW+s2frNBmTQ0rrJf7
	 a00YcnFd8Ua99UNg6kIoJWF4iw12/R4Vmlw6gts4ZYz+ztt0tpfLPbLrV9ip3t8vYB
	 Wg9oLmejPCyASXfguDVM0HJd5djvceU91IVNn2TXOu/T4KmSFoBPlZO4kNnnPBK7EA
	 bIIEcIjM0ogZO8nXGd/+aZ5XATfVwEQmKf9E3sqXsXpk7CiDoimjXCNU6nYeOci4ce
	 X0MkW1bppysdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99033C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180595361.308.16426342777422966702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6cc7cbcc320c3b09dd082a7546de2d966d4eef269ffaedc8f917c308eea762c
Date: Wed, 24 Jul 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721805953
