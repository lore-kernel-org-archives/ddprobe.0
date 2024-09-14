Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1B346B5
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726293954; cv=none; b=R1EaYDmjhOlvLB2n4L9LiB0H3QbI6cymxrG1+x3IAq43F03Rx0O7U5FggOfIbRWTAqP/DguCpq1NDzprCiG13MaGO9aQuqeU38hmPKFOTIB/hYZW8pliTq3ihpZ4mSH2vLjM2wsqTEYFBGJZxEV0mHbHU8IKObmzKTICzTjumo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726293954; c=relaxed/simple;
	bh=cdLsyvjWKEv69cTLUmTj/t7dSMoN8AxryG2yLqQlyH4=;
	h=To:Subject:From:Message-Id:Date; b=c+bA63z+g9ZfZYIjsV0uCwlx/Hu3ltn9tkGpmE8t0iHNgJneOQp+l8yGePsPubUiYUfk2wkDKUXhK1Gs/6IzCVizoH+hMtMRTfrZVMRAyJIcWCdahpJSqQhdBTy3eQ4T9LXbK5pKBc18ud1m+P7PE/OZKpJBQOcCkwh64sAy+jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDLLnGTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDLLnGTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BB2C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726293953;
	bh=cdLsyvjWKEv69cTLUmTj/t7dSMoN8AxryG2yLqQlyH4=;
	h=To:Subject:From:Date:From;
	b=fDLLnGTu/fiudDUJ5puLf/4Ktfb6TdELy/i7mFHiDorJnSVhDo1xgBm9+6xWATqqd
	 fM9nabg1X3EruDdUFDnEXvfY29xcfNWGONgCR9jNPg6cfEJOgFatR25GPJj07kvQ1P
	 PHW47qA2/0SNNU5sAiIKIOfPaKo9EynwFPhVAXhZm/fJ4byBaQO+u1j8nou1cUIwNO
	 8fobHKuKEugBxESmkGD0bAqGwMWs42TpvGrqMGqNYqJK+/FeRsTSW36hMGP2cCpEKE
	 wnDJ+7H3EB9OcNSJYfXLQQqbN83r70UnAKae2dRyzrmMGJS7H2A1mgKemNpBd+X4BW
	 pr2CyRfroXaoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93169FC6169
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172629395358.16826.11981683213598884315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda022a27a5409996a715fac2c8e546a9e62f0ec987c67697c5c158b78c58a60
Date: Sat, 14 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726293953
