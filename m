Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228BA37A488
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778140654; cv=none; b=nT5859gyeuRz18vxUqSJnI8h8rRwt1AhhkfbTyS07Z4wLljvtafnpVhrc/6VeoancJTlQVFtONzlXPknu7ruY70e+q7/97Vvv7V+4p/sdCbtTuQhNt1u2UIHGXqeuJUl1j46kCgFhN82HoeVrAvFMQ2acRgSFftrXllJ9qJSGys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778140654; c=relaxed/simple;
	bh=r7jzKr5kYiG/lBz/rzZPGECPjtWQ1nhZWJ02ih+3LsQ=;
	h=To:Subject:From:Message-Id:Date; b=uMDvdOffBnj196AulUJUgrVUOksCjBsPCbxWB5Kf5FmY/z8Dv/AwZOXjYipx1bzCXR232aZlAzHdqhV1ljdWNpCC1pk2L5RhoADHxxb+J62WJoDkdswbgz7KSvbl9KG8XgXKmX9Ol60k4j9PzFyI65AMjuM6LkIhNj6A+/YhL7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bs7PCvTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bs7PCvTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB27FC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778140653;
	bh=r7jzKr5kYiG/lBz/rzZPGECPjtWQ1nhZWJ02ih+3LsQ=;
	h=To:Subject:From:Date:From;
	b=bs7PCvTdeLv05tMnrbcLAPfaU2tEKVc+8xJ9Pk+SabsK1caJLQIo9MMWsEmx+32qB
	 Ms13xgvmKaCj1lz9RXss+AVlUiGFIMMtq4YVg5y8e9yhK+ppWERDQKVa8x956ZXkx7
	 jEz6GlSW47AnIv8QU1B6bX3rHVNQvSKVyH7Jkd+8e8Vt77MyFFQlXk0xJU5/stURkl
	 ztqw9SxdciMAdJwmXUaJ1+XQTR7gh4SYyp1QyEjDn/XFkadhJBPx3wiVJKcBt5XnTn
	 lBbOU6YY0HjlxPiNOVhqwGno+AS1FANqoe16r8HzGr/eabqdc3xbV2XAMLjhC1qTES
	 ldiqXVRZCspGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD8BCD343B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814065369.23016.3942622552148555686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8909f141aa77beef1dc5f320bcaf9c1b01e26f4ea341e4f0067ed1acae70a74a
Date: Thu, 07 May 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778140653
