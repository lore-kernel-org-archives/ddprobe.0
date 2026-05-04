Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73374351C3B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777890454; cv=none; b=NkaJfMOAVNxL4Cpf4+9P2Iw296tIwbF/PB3WUy71UCtRIDU9iXa5xWqhO6dLcpybnf59+akVdwEivarG7qVitVg3eqB8pNoDkXeHKs4242bCU9yl6ToIqkpeVymuU5TBtmAU4fc1S74dI7Ya23KX7yNIcGiueAQDNSWoBcOf5IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777890454; c=relaxed/simple;
	bh=U4nLYV/a6fIxd3QIDa/HUdenAu6u+LJLT/cJv2ZBcMM=;
	h=To:Subject:From:Message-Id:Date; b=EsgnaVbZqqo+AiFVNYNPsfw8SyHYT7SM/aab07MRieXgS6qitqhmPKnnDuxRAnO2tYbmEP//WZH1dcHKRZWtOoXmCEVGROenzTHLSk4zXDF6cbJeQrZMGnv11K1iYfx6Vv+DAJaiiS/lkS9gwUvT9CxMYr5usCY9vwM1LZCFa6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOBNVSGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOBNVSGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FC7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777890453;
	bh=U4nLYV/a6fIxd3QIDa/HUdenAu6u+LJLT/cJv2ZBcMM=;
	h=To:Subject:From:Date:From;
	b=JOBNVSGR9mOysI/2rUIb6JLOr0dacivO0yPY5eh4b0uWlEpo+pxLkW3MPMDIiCKew
	 6LBGaaEX35+Xn9UZfiPAgrvwrNCE9PQlgpr5kK7S+0doRuCDbTCHdn/VVySY2APHRy
	 xyP+OU64+6f+QGtsSMM7C9JB/56uYtMXY/82LEAOAAEB9BVgBcrVnw4w8SHYzeH/Cu
	 ZkDGWButw9HAlWNpAQ4UnVl4QFxxkUteYJ9zfqm/agUs7c2kduki6+yRB+F4JWXXrj
	 zPc2Kb8LT8L5UQHlEl+wuQw2dn5sX/z6cshyoH2GKPc6aS7/WZw4+0rLT5RmW4vjSN
	 LZLNapr/p0JbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA15AFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789045368.20730.2896242657121716005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c522249465a2fc98e300fc535120047e15a50b335dc0c50668b741bd0bc6690
Date: Mon, 04 May 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777890453
