Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F81A9FA8
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791943234; cv=none; b=LVfzk1Hr8R5Q5+zBPM5jsbpXL9ZToGEHpnfoB3SS2+g6Iy8c7OPXTFcpSKIJbju8IwU8kSoUsqZARTcUuafX/OSEzVUwfSb+lAU4vuDW1Msxl8MUUavwYzCAH8A2H5on/kq2ZN473bWzpUWHC2PkU22uWkkzEVv0bpWxtQoBY20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791943234; c=relaxed/simple;
	bh=pVeKSB0CgF6atVY7IaADpHlrdNLgiycKSm2j2dvnay4=;
	h=To:Subject:From:Message-Id:Date; b=DF6rPXufoztHZNaAGW2rB8ihfAagFNXWnabltaeFhEyJnov0v+Swf3hRWjdcddHgt86Z765rlwG6T8MdoimG6CyxuAdg7IwFfGtxKvy1Y6rgpC0nunZlaSOC0L00TCt/uPybzHp8luyUDRrqyT02j5fkGmVcOVdpnN6OZMRaur4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTvZL+ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTvZL+ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C071DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791943233;
	bh=pVeKSB0CgF6atVY7IaADpHlrdNLgiycKSm2j2dvnay4=;
	h=To:Subject:From:Date:From;
	b=rTvZL+ZJcL0JBb5Pp8BP8s3JK6KZQDGQBMfDnwtM/lyLletprJV/b4GW4MjtlQow0
	 RvZPvbmCagDUb/Uivw9gxh4vK0PyF1oP6JU9VYBeklmJyuSB6HLWLsGMj9+/zp8P3Y
	 4BFuItz8mvsMfiW9QKMJ2JRTtGLM2Px/Rf8pFCwb/zziJwxMuv8Sly0n1CNHLNcKi3
	 Es8eraa2pEaiBBj03uMEpLpQ5RG46p0BAWFwXUzi5yW9ussighOyNNfbTdigDmmTuI
	 89XVTw32s0jNwyRUSWub/F68SoGUMuCrHGZeaJqfv+9uO3eFzAyJwgno/WORkgn6lL
	 hUWKFA+WYJAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDD6CC6B1F
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179194323369.25245.15109607450100084750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eae460a7e1dcb35b8441918741cb9d43aba78d995b6c29741c417f2d885d212
Date: Wed, 14 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791943233
