Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4411E487
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752377994; cv=none; b=AXdzeDvUBwph2H0mr8X2Q0uVsxjSz5ntdyJ3yEiPrTgCEeRsZojQyxToicb0LZoEiRw+K8JBtIJ64lfNhf1X6u73enz68rmwzrM7EU6VjjtKjk0iE0cWg7xxx1DFU6ZI69heXEBgYPZJ9Yeyi8rcbYmtEGV65fp/sTqxBrKZXQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752377994; c=relaxed/simple;
	bh=JFbOPS2QMbJYAdq3xv2Uw0C3YLMC87F6HN+jxJhbiPc=;
	h=To:Subject:From:Message-Id:Date; b=WCrMODiilOa0D0H/9QYlU7VsrETarjNQtr61gyfJgXXx9YuyqihvFc8owCim+VFVKkDDml7gbLSlA2L27a76XYwUjpJ8UL8XCORqKbA4hgSSSB12nLZYyjRt31bMJ0UYDAXFApL0nWPLLlpkJAQrgvDpg677r/02i0Ius5mOO18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh2XLC5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh2XLC5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AD2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752377993;
	bh=JFbOPS2QMbJYAdq3xv2Uw0C3YLMC87F6HN+jxJhbiPc=;
	h=To:Subject:From:Date:From;
	b=Oh2XLC5QLbzHtuy1j40m4BZhoUBu9l30vKfEBrGgJ3iC2RCkfOX2CUGbUFvOIImvd
	 ZyOgAJo8Ul3i6HdGPU0HJ2EE8pbFyKJTssqOXdI5tgaV9rfPmrXTY0GvVDClypJYDN
	 GI+tUP15ehbHRf7pTw0qekQf7EgR38T716sfA8bQj6bZskMz4N0QGkMaCB7ATyjfPQ
	 deQai2DbsGqX9viNjWaQ1vtVQ/frNdpghOZuym7w1jmlxCrx4TMihqqgdhYDSK5EOC
	 E3Jnpq3bIJiFsLMbGT0vlkThhgV9L9ihwyms9l/9wQ6s07zs6OV6fgIEkqfrLKAkmZ
	 Su+dnZN6I5+zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4AC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237799357.21384.9925634225089930146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec81891088e331424d143693464e7f592561ca20aeb4552d238233acf37dc646
Date: Sun, 13 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752377993
