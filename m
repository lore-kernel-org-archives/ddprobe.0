Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD252F7F0F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778966434; cv=none; b=LjPbDbQYKugCSdhnRI57OmEbDO+SsyAtusspqsKHnHN1m0xbByGwv9Zv/H66x6/Add7zsIvdLdPCxMg6lMVsvUjFB2fyQ854hgcl+g3EfifHW3WB6CKV7/qt2shBosS/AXhSzXhjXmtS4uFS9Q61OTnYUYCwTnDPIcAxcjQ1cc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778966434; c=relaxed/simple;
	bh=yEjjusu6xD/MI5WpLIlbiZtm/0kFuJK3g852ikQF3c4=;
	h=To:Subject:From:Message-Id:Date; b=UuFui3KkneRy+11ZwxySKB3HV1SfrO0poIIrsXeOli5NRFHSyHo+QZE8k1ICyfdq3KXZOBfPTFWKcys4qX+x7UTrAZFjwxEXClbSTeTNresH8KU5nm6o+g/cNuC9kZw321xTlgmWFXoS0+Vi7C3f6h2h0ceRJRRKZiDP+J+5Op0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kouOk4pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kouOk4pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29EBC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778966433;
	bh=yEjjusu6xD/MI5WpLIlbiZtm/0kFuJK3g852ikQF3c4=;
	h=To:Subject:From:Date:From;
	b=kouOk4pbqlZs8x8MhsQpCbjEN3xW60VYghWazSFubv1RTkTzQ889OWMbrxYumoS+3
	 9qoqrU0JMDxX+HneCW+iqtKnmbvf0u8fibtfDoWuzWqX0GZhDQ/kTQVYmk5waYMY/H
	 wnOUZt2w5cAD1djmCItt0QwlZ1guOs/GEXU5zhi878eubYsNguKdD9mwVV0WZrfh24
	 P7Q0od2ERPNd1Z4MPSZGITnff+f+lbWEWIZUiMCUnrDoEcGrOMnaUuwTjeHu/T7TXV
	 HLwIemDwODmcB+an6qsYeO4i2gBKPnzJA8aPrxyNmvuoVCrtEmdHMHozjKE30yPHkB
	 CPp7uI6ZRwvcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06B5CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896643368.29305.3467908300465300079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab3fef8b33273969c89b794a509035c70fc6ef00164a33f0192232d6fe9c352
Date: Sat, 16 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778966433
