Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E6D4CF466
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792178434; cv=none; b=dpvnRRgrnfrk1bPjVJSvLtLwYCAELfc4P++1JM+BT+Y8a+XA0uE3UdlIEHtuzWg43YfcEBdLMq/IVX114thsxm4269kvRhNx7b6sKOzbKfzWAlZ0L7UlTda0TdaXl1VgnpLUYJSHMAQxjjTJ4haYmFf5bi7VoYUAkEJNaLqiJi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792178434; c=relaxed/simple;
	bh=C3LUyKGwKgsCDcfmibwUwOYnR9DqzPvhfR0huAZl4f0=;
	h=To:Subject:From:Message-Id:Date; b=I+utmC/r40U6jHLkSz9voa5MSSBSWb12KwRkl9bbEpRBWd9+FP5NMbX12eUGeVHIHhtI2C4fbJewJnAVWApp2IzLLHiYne4OvACM1CVre5pv1p5wcYcCl50o7o1EtUEAkPLa8cM5yEQOoaY7wPsNwYsRfevZ965j7dlBVofKE+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OP22CvKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OP22CvKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8A7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792178433;
	bh=C3LUyKGwKgsCDcfmibwUwOYnR9DqzPvhfR0huAZl4f0=;
	h=To:Subject:From:Date:From;
	b=OP22CvKi1dyLivU4laso15hOxusn1XFHa+tFvKGYxdwbFJdv4kEVcaCFgYJubvE0L
	 kCIp7ldzpgZDJPVLvqfq7mELiX+JEDXTHE9CC2SkLhsbmWdfw0Dtk4R2lrY+CG8New
	 qgaG77OLaWosIA1OCJQsnzZxf4Fcyp6XALbrCwYBLdK0osLOQrYwlyhbM3DGuYTE/i
	 YdXLZUixlEbCSyl6yWB5VKjmG9mFyKvOzLX5W3WoE6phJPZtYaDVOo0GEaLRz6IHs/
	 v1+0rfZlwEV73wd22D3r+TKIKn1fiFp5QLS2pGoh3JBV30v3zz9aonP1t9D4GdUPOw
	 KOdg9XPWHDvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98C6CCF2C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217843374.13243.1901497478978309663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4197062629c7cf8cbc202e25232a5fe2d7068588f2761095426fc7d06dbee98
Date: Fri, 16 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792178433
