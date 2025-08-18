Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B7A1A238F
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755559194; cv=none; b=GRKHwcYUleB7dYIwYQVSVHNOZZ/6wRLH2TLnQwmRjqcdsNcFuFdLmEfez6rn5a2eEw9LyL5hYNrhS4513ZS4fsdxq7F7/1AQJK7heoC8PTSeKKkcafzBCk1gagp/5SjbCWQCBrsn4IZvgYM++xYzbdUZERCk/IRdKoJcbMheEXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755559194; c=relaxed/simple;
	bh=7WS1l58rvzsYhVYuAT6gVyYPGPEJ+5aTHLyTfjWs0Gc=;
	h=To:Subject:From:Message-Id:Date; b=qWf4gxtgwDhu3jffqzOk2SvULGyV3qjt80L2fWrBWXMpP9QCFeL/xg53wqdNNKFkBJelMLbYxy3pabW6dQkGtcaVz87jd5ihtdozuFyZLJeqN4sw2m+escPWwwjbpkbwQx/YOb/ZEx9lERdi+BVsvSgh5wn+sZa0TUeq8d+KM8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4+OZODA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4+OZODA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32E5C116B1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755559193;
	bh=7WS1l58rvzsYhVYuAT6gVyYPGPEJ+5aTHLyTfjWs0Gc=;
	h=To:Subject:From:Date:From;
	b=d4+OZODAiPjawIljC9iiTOt7H1nBQ5WicpEmT36UMv1MSSLyaUdYUD6QfOfAsKo5I
	 Q5Q8X7QHkP2xew1zbCpta4JYYNIgt0uk9IeNVTUDWeXEd0JDZmIa6zwxaLJ2RRmx0q
	 wWg/R9g4AeIvw6nFCqBtKEYwqeTAs2X8yrndCr/k6/oqGYIZvcy7K7b9kpcjq+4PPX
	 H/nTE/Q7+tZHIAXm4Q5UGQfgs7C38P7QyX9fn2CTnwUfX+y3aGMtGrgVy29WHee1tP
	 hlo0KjPHha1mUFYc0xBdlKUvP32ATwGEGRbfmSWzQWMS72QiMBTWEqGnJq4qrA/waw
	 8kpYGpCeH8jMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90812CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555919358.7615.13201485190972809392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62280b0a43fe4489abe9f77988def5548db3684feb59b2dd7c0c8921330fdad
Date: Mon, 18 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755559193
