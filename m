Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAFD431A5B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786383634; cv=none; b=eXaKz2IhLDiACFOAfaPQ/A18HqQrZseIuKC/lwredyyyx0oMxrGafdOXg93ssMFSFd0NjFoIR84mMKSbKMoibOnqw6Z26BjHFLayPCRw22eMxSFW+XB56HYQbzx8bMl2QxVWaGOlMXAcCORTlGGehAuBNncJfeHR8gLVxcp/EZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786383634; c=relaxed/simple;
	bh=fhDovjeI5+AxsZtsYtSgyUsQ3pXDR+WOnIQmUiFQG60=;
	h=To:Subject:From:Message-Id:Date; b=Opjpe9FMoudQl1CwyuF3o0Rb1uUtGEJYzFmPbQVYY8plx/JuxT/X5O9Dv99sLl7B9jhU8QnwTAQYPw5YxnQgGySIA05khYXccKP2dPGn0iyoVgdJn6MVXjWVGGGVk5Jj/HWPKJxuWF8q6Zs41s4jidlz8Zy849eVURgt30shxok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBus64yT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBus64yT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A18C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786383633;
	bh=fhDovjeI5+AxsZtsYtSgyUsQ3pXDR+WOnIQmUiFQG60=;
	h=To:Subject:From:Date:From;
	b=KBus64yTYafrwbSdDkGn0FElIK1wpdhJsMV2ZJJst2OeainlYp7+YSY096Zll08kD
	 dBGL7QGTo7cyojzqZ3U7k0LiMWrEuIBULOdQcTwN6h/cGlsUNJzzz+/MDtmuxdX4Ol
	 raaiXtITO0fe89/y94v7M65wQTnYSsTL+uVRCpSZZZefqgjmvjHGSbSAtWX/bs89Ji
	 dajQqZIJ9yrPAhSlHe018ds06rytQQaaVVBYBFp9o+h351kjGOw1OGhk5ZVJElMV6m
	 4YqjGCND6/iKvZruPpNI7LN+RhIUlwTraeApNdE/gyWUs2i1Om5BjouIG3+O/prlBS
	 JsA2Jv7xcX6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87EFC5B567
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638363368.19352.2189006950145198007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f9c18e49b64aba4734481138809214bb4f24462fea0ec25c9724694e6c1a31
Date: Mon, 10 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786383633
