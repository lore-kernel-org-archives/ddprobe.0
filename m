Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8B4134CF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770661434; cv=none; b=tFQEJjmNul8TittMqvIwi6aSLtkcGLrOvkHEPOQLknrWiqFuBcRBUh+Dy+VUaxEROBgwYH0Sbh2CU0bTclW+hKAfTpiGgxdCmMmcH6XotxU0PAYCaXLMUsolXPC4KpZDID9V5VHHCOamDQYc4f8uXraai/z/au8HPjO5Fmc2iVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770661434; c=relaxed/simple;
	bh=nPhNzB+kqtF66ggQds9btgx2pnaYl64fijKKDNGPbwY=;
	h=To:Subject:From:Message-Id:Date; b=DEntVyJfgMPIUogtfi1amFvZRiKJJ1hgniMckZNYP+TGzggGap2556km3CfkCeenZgEMXBxsIk1j4pScZWgg8+rDKS6GjybJZwZO8SILP/dCwnFuYa0PQidSmivrjx/EJBbI2ZYamgJB8e6k2oeM/HR4hZ62mBgjkwY5SNcwLwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7MH6Nwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7MH6Nwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A30C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770661433;
	bh=nPhNzB+kqtF66ggQds9btgx2pnaYl64fijKKDNGPbwY=;
	h=To:Subject:From:Date:From;
	b=e7MH6NwkDuSc5mLVJqRmumz8ZRPt01IgmW2ufv/Xzzz3sGFg73eblXy64BVmXnl6d
	 3Co5SCSfp3xp+ufNtQVOSiHXPncsQEesObHPulM1aZj+HY19TvfnAiUB5oPlCtq7ic
	 5HTuNOqdWCTjbqPUYWFJ51JvizVc34agKtveeqbYe+PwE/Kc7X1L+Qd7eY5KhmgcKU
	 naYr2PVWtO+Qif8479I/mDazTnOdJgKFHp/B99NUBymr39/Sb09YxgDyy3ou+cyrmp
	 GmpjuQw2zAS3WvnlHTSugPMpVWjMPrmPCWsuZ60OQ/8w71y6Jr/r0W2l0hEZkbluqK
	 6CmbZ48cMMYtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E819E7E0D0
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066143361.5623.9283788477162046753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26060dde85eae15c9bd30209e2ee10a3251365e70b4339b0c6f7e42f6b975b9
Date: Mon, 09 Feb 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770661433
