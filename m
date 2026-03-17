Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2257E366543
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773725694; cv=none; b=PIngPUZBPCU8iwLDdWzvRyicllAqxdMeEeXlXvRu6diyLOqBjsEqymApUuwBuN2+vXILjVL4cdoHBrGm24qWM4e4fiwugV4gcWpFk76DTk9XCKhwKmJxjtaPQUb9ebYLyl9LBip8fpBS30cNsI+koG9X34Ir1R11otcHTJ3wF4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773725694; c=relaxed/simple;
	bh=3fR0iVtTcrfTcMoWUsfvyjZq31fD7wK1jaeHet/LfJI=;
	h=To:Subject:From:Message-Id:Date; b=EmArjG+hrvoYV/PF39lESMbRJ30LXr1D/zR+c7RxKBSKAVLrpxQnmHidwAKyWZSHI5vO0qbKxfzfCHA/hpBkNAw2RK62dq/EpP5PLAJyE/aSEcNbGxTd4eNk4SJ8VmgSl6dhyzjMQqBWEy2O6ZHn8jhL9LAzb3mxYDSoUWuegO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFK/hkTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFK/hkTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773725693;
	bh=3fR0iVtTcrfTcMoWUsfvyjZq31fD7wK1jaeHet/LfJI=;
	h=To:Subject:From:Date:From;
	b=vFK/hkTSbw3SqY4zzUz80mGjHhJfXryUztP8E+gGawvwZXk/VkhJrpqwusofAxEhL
	 R7/IFoTYz1AZShdfe3LXHC1FeXwjtYvapiJzjXNNL1fNsX0LKrKdG8crfdCFatSCEg
	 X+reobMwyC5ILKcz0Qm9AJRYiFyDurJa+55pWhWZCAscMcm+znNQD+Fson0whOmYLA
	 /e3vgRnjNQEzReuF7ue7Q88+gGW5adc46GKS/I9NgJmvv6vGBWiFcGx0QKFSzndNEA
	 81wI9xkr/RMD21OrDF7Q5Ye/qHXBCGdkeNfvK9F1OdE4D38JijqRLHaUAT07tAJUNM
	 xzsptuAHWA/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41DF506CF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372569357.15122.1890600202026986136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093a4a1acc2d4dcfa4472944ba3f5632704af274cfde6c24293af1a2fcf14dc1
Date: Tue, 17 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773725693
