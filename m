Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDA55664
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718999543; cv=none; b=IUm2TYnA7sQ5JhG5Xx/3aPltlefIDagx9fB84fZL9S90+NGOXceapSlm6ljg2cx1UcEdDh73ftZPii6YdMjHgWWkbNsJhkyeJT9P2AMQ6wI2AhxpcJsWvD20bNapS7y666IYEUYg2xWZaUXX3LW2TtR6ePkvIKMDwuMaV3+XEI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718999543; c=relaxed/simple;
	bh=cbfcd00bq05cXppOOkoWqxIRppxReSSR2VGB0N5z6Kc=;
	h=To:Subject:From:Message-Id:Date; b=Hli7LTYthyCZkg4+2DwPBVaxFgThb0hx6x87pXYHahD+c/D1fMwaQYc/mGsYVHIxEqoldNGnWuC0aNhvOjepuSmi04hmUNdgFERug63MsXdICHmht6yF6bSCyX+bBZUhRWX6qIHXjeyKgHah+IPPeXg+i+MV4OvSpWgdvOJEJCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMy2zjk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMy2zjk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28F4C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718999542;
	bh=cbfcd00bq05cXppOOkoWqxIRppxReSSR2VGB0N5z6Kc=;
	h=To:Subject:From:Date:From;
	b=iMy2zjk7QAR1aM7Tg2q+uSKZngEjtoBe7OpyaEDuFatnxOmOGt1U1TuAVrfw0L6MU
	 IA7mFTRnL9vRhVZ41LM0ecjsq5ESIe5QH0rdihhKINh+CIocsMaNXyb943upfAkK/i
	 Cc1fIgjY8IRSJPmcagMcL1H3/Cy4Icuf3KUE4F4rTaFn/oxQWfE+Tquu91MT9CyWAV
	 eTlcpz8hm1y6rQV8VDIj9+7+Y+eFXgH1DKcnGDeBLq3Mbg9pZlhDQEkBS9tREZx7mR
	 k1uyloXKdrCdOl0JFoyzXt2OWJPvQuuh5x2pOlAnnAK9KaXbjjZ74lv3NxHAhhazme
	 v1p3+5phC/zyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C089DC2BB85
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899954277.21657.18029615847612305445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e3d8b24d9fa5022995d4cea054309dfc3a48ba4d2a786f48b1e76099f92808
Date: Fri, 21 Jun 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718999542
