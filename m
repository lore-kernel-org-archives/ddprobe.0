Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E7266599
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746770995; cv=none; b=jL/hWTHMQTKMpy9aWwSZMEnjmh0zelRsFQuIIdSYWuvSwmSM8ZXWJMFGK0kg2xI+lV1WBZTRsxBAvO8N93LigrxzUi2YTnUb8Or+hDmSh+mc7DVJyKGWTVErX3C2zywroxBxJuzUSV6PxT7bhYd/OGace+OD2q82w/ZWQwR1qXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746770995; c=relaxed/simple;
	bh=s0Aa/COC/ivkxqc46qXt3Hzv1MKOmaxfXh3l+LwvVMY=;
	h=To:Subject:From:Message-Id:Date; b=s+9FYEIdu4IyDPuZRUbsUwKQaeviHXFJ2EiDKgNi7rzabQ3+p4frU6NnSLZudzEZu7YJny3BY3oErHR/rfuFcGK/l0HZE9Wskb5b7w1Rgfii+FgxdafXzzzlz1cTVCE8aP7JWrl6cRETIaxAPhxtwbiI27jMFrDxaSgThrd5x+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr+Fabjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr+Fabjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEC7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746770993;
	bh=s0Aa/COC/ivkxqc46qXt3Hzv1MKOmaxfXh3l+LwvVMY=;
	h=To:Subject:From:Date:From;
	b=pr+FabjqRk1UBaSkuaKXBlAa5UVoFf75TNNCSLRlWbvZ6GIMuufGPJUgYKGfUJt+V
	 krxI8kvtP+VKYi1yRn1E88tuVJDR6xUydnISsjEPRlJRNML8mnyA18sjxLfoNTEp58
	 gNrkSmSba8EjijIeXa4T/W7yymST+LPkPi2JUpmNWAOsHiOWIboiLpmk51a5Iq2j3f
	 T5DBMWys0Bfq2VYTXzcH/sbjO/MDM58/JWmPNtUC3/Q2Tks01zQ12y0ebyR1rWwk0M
	 MLWc11+1bgFMBAEQ1mGpC5fetdzf91Y5iULoK3+WKe9oMsc35ZjbGxYUVTEGspHiYf
	 3vrG5xlTE1ygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28FC3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677099357.10233.11377579796706559630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc6b9acc96cbecccde8b4c675e7ded4c95016cb79e6a96ac0033c5405d5686e
Date: Fri, 09 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746770993
