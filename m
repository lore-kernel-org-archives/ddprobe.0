Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7AD4C8E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 05:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720849763; cv=none; b=ad5bdW0rSLCeQ5IONj2IVttnd+N093HxqKl7OVfRpr47bsUEDoME8xOO05Z2dEfBxCEiaiApBpXpwZYuESMb/eeUFTIvaLtv0rIe5yWJz05RDy1SxVBiBhlcMBL38W81ldRFQ01dN9YIGbdq/3LB6JDrDe/XYgi5rzRUNCFnEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720849763; c=relaxed/simple;
	bh=eURCY2iF8Cf1S7IKwRE9qKsfbqvQN8aco3BVwRJaQaM=;
	h=To:Subject:From:Message-Id:Date; b=lzfaA3ct8pOQSg7etE9MOCyM6u4mo27jTetTnhejESEoi22JucESYkWG8nGaXvy4BkbtGe43oG6H0W+U4F9bAUz5fx82gLZ3PC76I0vpbnQEJkGsPDZuOtxBvNIIfUlyM8rqgPSiEd3lFn9Xri1cG11AoYzUHRklN/cB9uWeRXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6YIk+PL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6YIk+PL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E36C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 05:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720849762;
	bh=eURCY2iF8Cf1S7IKwRE9qKsfbqvQN8aco3BVwRJaQaM=;
	h=To:Subject:From:Date:From;
	b=l6YIk+PLBJ21gIiH6xSEHk48s481ZdTCaDphWvw9tDRqCtp5mfgprlqoR9zjcQ/QF
	 It0TOpXwN7efk452Y64VQMRzub+0jadr6N+spLM+uhHpgvxZZANlhP5CrfoxxE3Z9k
	 j29T9mmlvggGJy95vjLMkGJewJYaAZQPVbgZltoVrI/8HOnK1fxC9QF0v5JV2HCLrN
	 vOcSXgktA/iu8JoX1ne2yUXjYr8sECfFyOUEoPAym/4EvMEqTW5peWoDd1igaR/P1O
	 GIJ/yvx/b/HDcbT6/QlgPiuTUUQkBgKBkSKiKC5HHmgx5H0Lreg2BuOC5djISywpDU
	 sQjwKlBmPbhCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1003C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 05:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084976275.28432.4334869628121054799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef17d67e2abced5d1a6c1d85dfbaa673aa8a2de681d35d41257c234f401e2106
Date: Sat, 13 Jul 2024 05:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720849762
