Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1392431195C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784480914; cv=none; b=VPEhQdVUms9MO1KbjvOiREty2XF8Zt3+l8JJS+hld5iBGifD5oKs0WFJLmJUjhnkGCCGrLzvovc/uM+pLacRws+9jJdCx0B2jWG4S9jM9r6QCFMVJwZIUzeESfllvLpqYq56D9DADYtxR6s2U1sAve5cGolHbfcx5bUa7EB9j4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784480914; c=relaxed/simple;
	bh=C4t3KIggP6eNXndzk2RJHdqqtxytJYvd3E8kB3AL6Q8=;
	h=To:Subject:From:Message-Id:Date; b=Y4wFDGUhARWaDyWRLJX2MaC+7McLo01c4SDDDWUsvD05uCRlUbMHDUpuP03OA9B0OxN/KTR/bbePFbU23j1xM32Vffdit8KX3c6wDYMF1fbIq6P0UeLI7e42vLzJqk+bLeqN5E6x5mIkh4Z0EVDYNYJmrBWt41ikBjmJbEXlYFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+2Ag/wO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+2Ag/wO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F8BC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784480913;
	bh=C4t3KIggP6eNXndzk2RJHdqqtxytJYvd3E8kB3AL6Q8=;
	h=To:Subject:From:Date:From;
	b=D+2Ag/wO+ZLaF/fn6E4eAsQmCwdPuqgNd7p7X0bep/VX1F+wuXuqnNg5YD9vAHyEp
	 XWhj4Dmh+JtUet+mTrTcHTWWHlymdRZD/l49stPqWX/gBa08J4gATLN1GI/yJacTjS
	 l/b8snW3G67Y/B8HpuxTbpTrm5o+H6WNAAaxJtEndlQgLjqQzBHpWrVlyX7r6gBYuF
	 qjbRunvpDfoptGT0aOR/Y+2nrTknCZrgJKsEcLNpvBCbu5SW4TZbc54nzRAF0JKyCQ
	 GJnyCLmcI49k2nTJz1wMxERi70TGAaetD/oCIvCC2J2QLayCTJvGkwGBjWRy9KmKqa
	 OV0Z2OoILe6mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21F7C4451B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448091369.12795.737328060298491665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce000bd424d0113cabebb92f5acce1819e0481f0f2733d4d06f03f346d2bacf1
Date: Sun, 19 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784480913
