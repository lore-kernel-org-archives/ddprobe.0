Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224E727C15A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752227394; cv=none; b=cb00VD2MgJaxkQeyWvVf65blYE1SPQH7eiosEtS7m8qsA7GZk/5D5GgGA7GMrahoOOnRoqBVmtGfxRLF6Vc3Sij0MxcY/cjSWY9FgJpVNVM4Yo1Fen+n3/EPq1gj1JQrIZhcJciJHaWnCOGwynnbuC6jO7WDQKju2IgdllToMcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752227394; c=relaxed/simple;
	bh=hI8URVO2OKL9gcAxmvDQcdu7S69A/aWKwAXl95HdiZE=;
	h=To:Subject:From:Message-Id:Date; b=QDQ+aylFN+730kaA0ZN1IKtJumYmYpPryTlTAFBEu6pJd7ZYiyKfzp+bnsA9gQd+ZQo8+AfwhjcRai/HP4fTKByqCbL0k/fmL6LMY9w7XdmcBinVUNbNhyFKfWn0+6QzfRdFi63Bok10CHrZ0e09WbcaIwz58HjJ0qKvuV9Z1SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFR4QVtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFR4QVtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121FC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752227393;
	bh=hI8URVO2OKL9gcAxmvDQcdu7S69A/aWKwAXl95HdiZE=;
	h=To:Subject:From:Date:From;
	b=AFR4QVtuFJQ2laTihmVSzDSXQip+/cY/6ZT/47QQpMWRmMHJvGvCUlGyHGhy5vsND
	 bGb7K6jMgfB7RL4XDhA9oq4lIqXj4yzsi/itxyH8wB3TvplLQfEN3dE8AoAI4XLefO
	 AFJFQ4BjyGZE53sqKSLo9SWa7Jxbqpjcko2vv8jFCNEd2rBItly8oU/qbOrBeT1vYA
	 kZxdQ6alEq3doLU1SlZTRNcKOcsl3Lx2e0ZFA942CkTXy1vx8RXsmx8j5oi5MRZDuV
	 OF7wP1lhab2CfBbrODC8rjKpwJsiuq/377g/mTh8YnujrC3UgC4kgW5/DtH8tJllZY
	 CrAxrl6jYZCmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E017C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222739357.19929.7313339468884922008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2c19063dfe15f50b4c77b097f7aa2af13f7fa1d708ccfc94767cf91bc407f8
Date: Fri, 11 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752227393
