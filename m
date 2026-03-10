Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C0D3822A3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773118494; cv=none; b=dxlTefhMKnAscTWmQqrQriQICXULJRfN1HPqAVNt+7Dfz5A3Ihnywt91AaU+SZmAoP9wuSFPIGwx1eSnRacZQ569uvUw3lal3dOCSBBqw+cgVs+3GsLYPOLFVUf2GkTVJVB2AuMOlWARs8eGLZVcedrEHKbVNcSI+nngIVVMRNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773118494; c=relaxed/simple;
	bh=c+5o5dYvta3+6LZn/UvwmdcTkEIw/RERB1pRBV/rtgc=;
	h=To:Subject:From:Message-Id:Date; b=LAAG2KnBF5JCCOUJlWW2+0RmNV//ASf0bNHutOqnxV7huTb9QgopER1OT1RB23D+54btkrMBElKF0z2B8XVnp9y6J5SHDieYJ6SGhS4/nFB8MAvKGYCWnwTh+qa43Qn6wllv47qzhLahGUpXr9Ds1qW+bMlUMDewvkKo/zgJE+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2326Jit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2326Jit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D0CC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773118493;
	bh=c+5o5dYvta3+6LZn/UvwmdcTkEIw/RERB1pRBV/rtgc=;
	h=To:Subject:From:Date:From;
	b=T2326JitPzbmqIyqd5WhyCf0xlUt5uqvM1uK7J+WHXhhCPnpzJezrCznEfc7Skk3G
	 KXapymotOFcD14htskgaeahkFEMxet+9g3vOZph955Lx6GUfMUb8uR+x2yb8oP/LoK
	 Lsn5ormeLnEL6QbEGuVi/v3O3QdD+hhD4W7Y9VvRldE4qITrMv3IHwyL9Y1p7NnFLX
	 QHJ2lEUAwWaCsjymucKiF18wQTXZkeeTeW5t6pdLFdLSRhjKCLaMnDHp13p1vMJ6eY
	 lvHBCJYouXCgqqcWebTRcNh/p8dCNR8sCU6Ngu3fklp7/1ZOapoT0Q5Z4IF1kpElFA
	 aviPzJRmdf3qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D7FCC9BC
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311849357.1250.15804043700573615091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6e13e145150ba5f62aa97b44ea5777977565b2f54efe1c804fd019d56611b8
Date: Tue, 10 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773118493
