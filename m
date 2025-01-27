Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3767614E2E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737995154; cv=none; b=GobPLWNndIwnvRprnaMqa++DJddscwmF1nxPL6IPZ1/omUbNV29ci0auqJVklvC7lLEPh8AKiPnSE5iIADQpZejCzFI/+7+8JAdpF1vI2xnW1ZhN7Z2wCHZI4aE+/MBp8oSlQBz1lBjIPqahWPGnnh/ZTQ3wyURknNjG8Vxts4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737995154; c=relaxed/simple;
	bh=mrXFaOrXkLfIyyB9wN87RYggZ6UzNsUezyTS63P3YUU=;
	h=To:Subject:From:Message-Id:Date; b=NZXYoCobElKqzhDjTayoOhUTukwyPCWIE5dGg//ktmH523CiYzAKafJS1zf8KoTYfOR2Zw5i7yZFl3vrsgQbjhDOhQPr4LSzQPw2DPwBNWcUJvowwvDUiguZoSDY7XgUWFDHk4On5ErarsId8lh779Yw3bjEtvyogfcR4oZHOl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcygiM/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcygiM/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92E1C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737995153;
	bh=mrXFaOrXkLfIyyB9wN87RYggZ6UzNsUezyTS63P3YUU=;
	h=To:Subject:From:Date:From;
	b=GcygiM/qeLxA1Kt9KfYhhS12REAivEAq6MgKNZGeQLYmp7nxOQIvmabVSqAUTY4l/
	 WwBJRSDimWhBqGSBEKZhMagmV4j4nCXRKQB7vKN+haNcPHT5bQGB31IwPRTeIxv3tc
	 PteQjHr+hjfgWw79TRxpHQacP0ee10IkKs2Ocejwx7H62D6lBt7MbDcDTQqWUuwTsy
	 +p28vvGB99ooBgF152j2Y3quLELnHeTLnp+b/TrYs8Q1mAfsfC9enL0VR17Cd5furg
	 TcdIsPuqAxYWxgivESA77CNLcC08S73zjBq57VrLt7XB+CBJadb1WDvQfmmljin69S
	 IEK5fsqdzg80A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B90C0218A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799515359.22285.9306038270354771094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81252c8413e2adb3da03363e890150eec3d53d46d76ef1720f37f5479aab803d
Date: Mon, 27 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737995153
