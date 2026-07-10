Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1561E434408
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783703314; cv=none; b=RKw3ZcoYsfjIeACDZFSBY01bqxjzBXs90me/cuwolTp0TVPf/TpWuXEzgNk79Cyd9SumhvZos9aJFrdoEVo+kS9GXlClqGmXq2WbaIcb0OD6aEPfXs/8Q4Sy7B2wI3WBnfJ4TS3RzFmhFjIByDJa0MHU4j97hcLxIn+EGncuT88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783703314; c=relaxed/simple;
	bh=0H5VtQpDaCHXeXiPxs9OUJZJsHMsU0JQSpnKBKqs24w=;
	h=To:Subject:From:Message-Id:Date; b=ILou/4dsRqpYTUbI6dm4pj21zvpif4ZkbQhkmzU3gAbLH548TL9isuuCc0K7a7OZpbL7pscrL8a5dIqWPHDrgqlSzHwMu2yaQ3KagzIENKPJCVYVAPBz7h5LKIyZUfLwUBoaf54uqG2ppAm6aTVO2HD0ve/MqNdTRoEaJ8NpNZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6G2a0WB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6G2a0WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA3E2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783703313;
	bh=0H5VtQpDaCHXeXiPxs9OUJZJsHMsU0JQSpnKBKqs24w=;
	h=To:Subject:From:Date:From;
	b=d6G2a0WBLAvzLpXc3VHCVGcPJX3Q8PdPmnnInzWc3Bdnldv+y/8wjnVSHY+OaLSOU
	 J/XmVqSAdqQ0m9Y2S7w4hlp6c3vx+RHr/5PxiwneA55vLBzsQ/PIDq6Y4xoo97F+pE
	 MyaX20C6xgh1mtQ+3ZnzcoGQq6n2f2c1dzKapKGP6wvlZhE04qfFLjl8TXMb3dE44V
	 Q9Q/iYFjhnsDT1Gnnnk0v2DolRwSorVjGKNHWIRx2bxAgxwPN0JrACJpbu1QTjjjcm
	 irWVkO/IrcJ0i7KaAkUQIAK38kJlQwY8/55QcZ16HBaBDQ4vNgkw8fPBtuiba32fB4
	 SSNZM4Mv03HGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9115C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370331368.4269.7695782615832607516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c8cc44edf3d15b98178cb74917c2cac2eaf96dde813d24bf6bf0b07652403f
Date: Fri, 10 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783703313
