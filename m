Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C93330D34
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769737434; cv=none; b=ORCgbWob0eZAGuVLuh/p64jDR68A0LURnRkUFnMrz3mDIqrSJRmhFpSMcpEbF8fjzsIsh8hm+vFiGOoLlXcebWbtLemLyjQpxIFEH83SAsref1wpV1Hv74USg8bwmraWP1EWhjJPqqNo4F9O26G/KFPtzmEr59oxZTTdzSD+CNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769737434; c=relaxed/simple;
	bh=1bhN3Ef8JR3iH1hbTSHOfDvXRRPLxkFsr0cXF8/HCKQ=;
	h=To:Subject:From:Message-Id:Date; b=TBWzpwTwHPTZREovotePdCPo74cwv6zUm+Lg8yywooqNsRu7Ej2oSIMZzQSGe6K6nLvJozZ93ugOrz/yARA/4u2DzdRRzIU39FVnnIKkswhO/hWLxz9Kz8zOgv2K9mCq7K5lDLbA+0Dsj0pcA68PwYkDKmqTCiQQbhAL/U1q5ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPCALoLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPCALoLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4087C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769737433;
	bh=1bhN3Ef8JR3iH1hbTSHOfDvXRRPLxkFsr0cXF8/HCKQ=;
	h=To:Subject:From:Date:From;
	b=vPCALoLBhaGzn3xdJjfAkRXgvzBzKEeslnMn4ND+7w3WmY08w+VYCmledvI3yimFr
	 T1sLtheac2r99VojLgQwOJnGD5FNPLhK3/dnstVD+0eGYPXZEDZvmKxf4+23TaZqD2
	 DRgAxdbYOksYYOqF2v17Y2eSYGh9iJVMTis9jl/Ysrt3IJty+h6B5M130qoozcpouL
	 FO4NQFEQ61YKH8GZvygy3IgT/P7G3zttxHAv9hIpBfd13laEKuQf7UocvChKDQSGfI
	 xJxFoN9Ptij0H6PsgEz5tM1iIThDYYlPvLuw8eRm1p0SZddfp+S+qboN8wNvW0eJHY
	 dNuhwhOqBBhig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93070D73EAA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973743358.30540.5418115788768686476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4767e0c722aab98081b22e6f4e94bb8d802ba28f0e1f5c19fa5cf15a76a2a0
Date: Fri, 30 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769737433
