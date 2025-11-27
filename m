Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2025E33769C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764262374; cv=none; b=JMcC/YPPjsXurizFu8AvmTtAnBRiOvUSDhvVYeS/Ag9Yr5nBpE882GsPoQS+ZvgwDpOjNwrbB9tnwwOngxWADbbiqMeQJW4tqXRRDFXxnJMxfj85WgZHaXfbotwRFRdMtA6jjwoA6VHPGqd/Im5ajXQMYg1WavV6GMY54UqZyXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764262374; c=relaxed/simple;
	bh=1qBXTMNlI6YAvHNxCvKcGHrsvPSbkWLD09UxxGayl4k=;
	h=To:Subject:From:Message-Id:Date; b=mkm+kohLMCSoqFYQJbUfaWk5bvmRWszIdQB9PYFiQiYtFa2KZ9SP4vJbELycu8UICH1oBBUKVTBHtD2X8kByASkrCvXM0rTSiJBmNSLAjgvEIx3TL8h8CB6OCrJIesIwO0ZVwnhZkejtvMMmDEnLN02n30RpsQTe0B91pvIWcIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvOKnbux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvOKnbux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5641C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764262373;
	bh=1qBXTMNlI6YAvHNxCvKcGHrsvPSbkWLD09UxxGayl4k=;
	h=To:Subject:From:Date:From;
	b=rvOKnbuxap4x2ngBpM3ALNnwUXDA5YL+ZZSqZvINCutNl3FRVE39PyLO2USrwlExG
	 q/YfX2HNIkeQe81zKVnG2jOFGKJrnP56LPlMyOfr9PWoSqDRa9UV2x7DrG/nlwTOvy
	 CgDD7UfS9s1xVzxtlNtaLdyCTtntA1fAF0OgfBJOduV77w7lcIW116xrnw5/hqLyYo
	 I7mtlagJxB7xBSiJ93Tk+R+pa1BnU9nMmflFZQ8LOYCDUbYlBi1jahQQAf4gTmeeoZ
	 zosnJc/6dAIjuRtF2Z10PYcYZUG0GeWxDngKYeTn9H5+Q+ayAWpGel4WRR+Q8wuJ3c
	 eT4gVBLhVoc5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E59D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426237359.9465.14832077808225033132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40c5b83632a44baed7723ba94150592791d6978df3ff61a4b6b9d279131f4e1
Date: Thu, 27 Nov 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764262373
