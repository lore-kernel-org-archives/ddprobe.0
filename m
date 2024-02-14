Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2227F18E12
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707910697; cv=none; b=pSaAq6jtIlNGB54Q8z+D9KoEpnadyFhd1MWH6fHMmMy5cvrrcUC/0SfFYJtM+SxwbJF4vAN4X7quqsdtN/7kjxzVQrjwBeW1qvd7oTjVW8kmKSNg9We9FdADp7WIavXnYYVqHkCynEPy3QW6QsiTZ1OliKtctNGC/M/7g/JV/QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707910697; c=relaxed/simple;
	bh=4wnIsd+5syQnfO6chSwhqYDomdeNcYAElmZWZ4J6g2M=;
	h=To:Subject:From:Message-Id:Date; b=I2iXSkx2DdNu5xnqrPZauqRJMVkXMvAKV6LnYa4ec6rfF3qTmMNmaDm2sFBsXtSTVpst2bOaFtACkSsWpBZ9l91GstfktCe0STdqe/+bE62M06oxk6NHUlUucvNAOki0xtKReB7g8L+1T50hmQ4yTSlXIGtwhTVF1T+0m0wY1No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZIw0A02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZIw0A02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7DEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707910696;
	bh=4wnIsd+5syQnfO6chSwhqYDomdeNcYAElmZWZ4J6g2M=;
	h=To:Subject:From:Date:From;
	b=KZIw0A0222rgGACVYDaiv3PBMmysfZopn0vPNKH1N8DIrgHRzfTe3vewO2YM+5H6j
	 OrLAxkKLzNYroSOylvgSf/tp3ZmbM+CFKZKYNvlfWyj6DTam2Ja3X0cFyvy5L/1Zwk
	 Fqa/mYzKRz/zhtoYHhHNUXGkmgofDOAQo4xV3mUzGa3SjLMLMhWjYvXT7vx9qm/ELL
	 Stx9jX0O41+72URH/QzurpfHaFA9kclH42Me7O5g8aQHHlI94bxHPIP7ievu8WGpV8
	 klSzz/47A/NDqEj6U1+jh//hGXpHq9alUPcK2T3DBoOIvKUCrUrsgt5bPAMEs/qpHw
	 p3EW8pBW2fIVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F259C48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170791069638.2529.16409533234294226553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167c246534c37b8b9cf53f0fb5408db27579e77661f704dada86068d061add95
Date: Wed, 14 Feb 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707910696
