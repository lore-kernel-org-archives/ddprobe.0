Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1794C17555
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756021194; cv=none; b=bU5WkhPi3NZpPIlj2GvAVRaxN30PprmJlIft2/U4pC+S1qUy1+va7+mxO2ebcGxp4UO5Z5XN+oZuE59wxPpmurOzg7PIOMW9pYwHJAnoCiG7Xtlx4GgPNSizGoBLJC4650dJqkXFJpypK3kZ/TfRTfyV+vvN1n9pW2HMcnoEiDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756021194; c=relaxed/simple;
	bh=ftftJSp2p5BHYioYGPpo5GZmQUV8rWNuj0ZXXisUEgY=;
	h=To:Subject:From:Message-Id:Date; b=O7Tbp9i8rQEO+3PRYGb06K2HQRAfX/x/Xsjt/aGIUyqqMYiyHpzfAQt72/4OottM5zIH5lbKF4Z7u8u/FKCgCd7DRgEuSXHpykWkiYBpjmbVFyNBHzudB7roNZ0JNWt8JGfs+7DaD5EiO1Gqtr46ce+DkVKfmqWGOr3Pq9uP8tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsaJep/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsaJep/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756021193;
	bh=ftftJSp2p5BHYioYGPpo5GZmQUV8rWNuj0ZXXisUEgY=;
	h=To:Subject:From:Date:From;
	b=rsaJep/ObCX7ZOm7Y7OxLGFeYfHWsYPNB/p5QNrHX0O+z5oaa1/Fyhk7qcObYM5kj
	 OvW6A/xwuZOVKBfumZqK3kbwl72JciJiULAr/R5WvT04Sacy89r3V4d/74QLYNLzst
	 tvwIngi2bK0+gc2XALAEAMnSN01XSobsvnOmnWzJnku0C5eISM9e3CRaqQu5a8Oe/G
	 mgF7NRNl7geKwc5i6/KxoBuQ1UjLZ8cw1kSairJgHwiGOgWRHF0f9KlNvy1rrWAFoc
	 pjFRWKiAMJf2/ElJW2CgehbdjSq2H1NffuAjDm1ClpwUSM0xJ64ZSngKItVHUQyGMH
	 h7+bPGR2GTJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9BCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602119357.11237.3154571938070687812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a58619a3f2dda232cf9943a29b21f64b47ac63bf860189b33e8d71fca3a725
Date: Sun, 24 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756021193
