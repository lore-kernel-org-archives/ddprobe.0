Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD235B21A
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764564174; cv=none; b=A7WQ2U90Wf41vN+LWJfR26S+BNBCjrq+5iEggFVZJl7cx6gNZAG0jm60/wrvaF75fmu7jlXFouc/DYXo1/63/AbKJWrgZNe8JE4d71f7kiinTBY7aZXCzmtUwybqI83oyCYXdp26DIdks66ijHeEEXBcKQNW2izFPAlCifVDTOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764564174; c=relaxed/simple;
	bh=VaL/7HfpvMzPIOF/vRvJ2NKobAqGWpAuAhXk6aJ8V3I=;
	h=To:Subject:From:Message-Id:Date; b=Ivi1OaZgAuogQ9AzYrqfFNqRWycLh964xR3x2pRFEuIIVHhlzxnsOlLRJyQYMliNt+SnocZ0eUKYIwEe1cc49FWJssL10JkhGjtlvshlXvQwn5bPEVxOMPQxUdymTMilucNzuMawRO9knBRYepkDKgGQmKDqkbawCLNP/v8/c9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0Z0xqMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0Z0xqMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEFDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764564173;
	bh=VaL/7HfpvMzPIOF/vRvJ2NKobAqGWpAuAhXk6aJ8V3I=;
	h=To:Subject:From:Date:From;
	b=i0Z0xqMY2VCGgZq32JWJD7+ihf9m2eK+kkWV9JhQPcGCpcJNtXe20RiEPoroLlYLC
	 0HBPqCM4zJ+WgCw/XF6LesVLo5ThUkJyoghAdTkZhrUz6mOFy28jiMd9DlE4fDI7EO
	 eeX9y84clCQMdtNb1Qj9+q1mEN4UyJz9vlcZzD8a+a7nqHT0a6WKvmkLAd2jLTye69
	 aWjRGpk1hAx+JBgl0UtC+YtkHxF122P+SA4xc8RjquCJcw4Oa64qsS2AjpoLqHDdFS
	 x6E4TuFYol8PTj1zZ8Z30CaYT8nJPM0JxQ1njNcRHwOtS9OsTocI40XlA9Qiu+WwBm
	 vwvBW4LoS3i8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967BCD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456417358.26499.15586146353004527596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c163bab44375ffebfbad11a1b813546175b73c7005f0cc924cd2172a890951
Date: Mon, 01 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764564173
