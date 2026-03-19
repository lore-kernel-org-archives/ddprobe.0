Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226392E2F0E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773950094; cv=none; b=fYP0KOL4Cu+YQ0DToFSj2krdPyGyXwbrN/vBeBxRxARYywUu+haPaVgBEzaJpASGmJugM4dn2u9hCL4T6k67R4XkXMQAX7JRfB4rEGj97Exs72nULYPexgL/qLMmRix5s7RjyVe5GPKdJT3+uZeEJXsFnthqr/flXmrurbeXAzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773950094; c=relaxed/simple;
	bh=5rdbHaA+Ee8NsiRPFleBE67+R3OS0GHBqIcCgOqzGNk=;
	h=To:Subject:From:Message-Id:Date; b=RE+F9FCvx6rgjSXYkkQi302l54STgICIu78uyNOc+mlfeDN9WY4xWvrByVN99nhZvx/2MjoUVp4DbIgkmQUnvyi7o7RXrtowTFtK+/RZY7YUr5qHVElgzLM5/qZwpuuTGlUoHVO1ZHQaJse55jxZ1OOhs0lRSq24teoVRny776A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUfqAEj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUfqAEj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55B2C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773950093;
	bh=5rdbHaA+Ee8NsiRPFleBE67+R3OS0GHBqIcCgOqzGNk=;
	h=To:Subject:From:Date:From;
	b=lUfqAEj4urgMePvM9mOzAhNPEUdY1uefAGNeI/XIiOJD+4Sb9U/sPduvoVoG2ab9y
	 LVRrNT9Jj/GbfU5hXZwmykOiGAq3eXlB/YTc9RDSfvd14nmSnAugl0YLKc4hQWZeVy
	 mSXkfGKGDFnN2dqsa5L4XjmTEq/bvEmX59QZm/PIHYq67TqXoCOSCpJiuHpyQSpz2M
	 KFTV2RPM6pBjUcCNMxhxirLmHp312Ze192WWmAuM0Sdm/JShCCf+kRpfeQg80P5qOM
	 ecQE/YDf1FM++7esITxDRJSSsZUeGZnkZHet4oI8zVM52F9R5uFZsMlCKLOyD6NKsS
	 5Ssp9FAZrHiwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E1E1091910
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395009358.30437.3140574755771978975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdea2bee60b5e32d5290bcfd74cccc6297cdfca954b5499850618cb00e3f29b7
Date: Thu, 19 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773950093
