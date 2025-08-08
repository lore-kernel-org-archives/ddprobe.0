Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2705278F20
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754680794; cv=none; b=iOMMpnuOIEKkyAx/UIqfvzfQxTusWvrEGXq/SxDm8kQt3w/sUJVeJCoT5Z/Re27AX6vbLkxToAQ7oSSdyEOreR3pHw57MkJwKHtmPmSp5Qyj/zMvUrRhFTu+PKC/vXs7dzF6dcfCBMbDt+urrcvd9VScBEX+tCUXDHIBRLHbRPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754680794; c=relaxed/simple;
	bh=n/zIabOagaGWzHX/RIxATAl4uKmSi0ZWf1U3MuQd6Ik=;
	h=To:Subject:From:Message-Id:Date; b=UEOGLXiry7GA+Ixa3GGFsmislLJ3oMr0RQWSflITShinv15kMGoM+uYyokdRkuuNDAeuWaNsEm/X8CsCPJU5CG0idnfPlOU4NbmFOakifPXElacOcBlqFj/j/xp/9LnSzZAvXoex1/vzS71hGKV8iw98kbRYhCkhq3o+sIa7fac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZpUkYuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZpUkYuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6480C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754680793;
	bh=n/zIabOagaGWzHX/RIxATAl4uKmSi0ZWf1U3MuQd6Ik=;
	h=To:Subject:From:Date:From;
	b=lZpUkYuC/o+j0n0FgqmxY2zyKAVpttvRicj1G0Ek4N949zR4kZWeBQVEv3OeU6aXj
	 TB3zL25nttzsECK5hPzvIY4xvtRZA+ApXV+NF91JGf4EnTMVEVJgVV8jjUbAyhOP5w
	 0vJraaTPZX3sLFfO6UkhpfabL4ysKzS+c6f5GkGk0q5fjGh938oAuP7oEAacK8guQV
	 vdUSch63H/jNfBEJVs1mb6nXLe+m4ai2i/GlTEfua2WaSLrKHj8allhhxcGjVfNCCU
	 WCApWVDZpfTQkKpRp3aKyKrISoQu4DEUj0eKcZQ814k4DpRhJ1YEyM8rjtU2cFMN2/
	 yKq2boJfTQquw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B0C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468079357.27800.13009446532990254551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df3c1b047854c93ddbf706a0e5cf72f24cd24893bd0e971dff803df2244895e
Date: Fri, 08 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754680793
