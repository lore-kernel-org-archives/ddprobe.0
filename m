Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7BC15624B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768272834; cv=none; b=hmbwPIdBIAopqPELpBGzm/xR6HwtgpLda4vayys5LsK6koR1ydBu7Uz+Zl/Bnnod6wXSKdfqM78j5PHxBWl8Et2BASrVZxOVmG+B5K2vZ0eeGCa+Vbsyem7ncRb+qWx/YOmARVHo0IJkM17DP2mKHHg0PMZXBkyIFVB4BxiAheU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768272834; c=relaxed/simple;
	bh=SMJhV0d7AA1Ss7mIu01plJnpITswS/FYQ2/HPvg7XWI=;
	h=To:Subject:From:Message-Id:Date; b=qUg8Bz8QUbmttmOsoq7hdrfzstwBObDbxHDuzHDE72Y/SksEHv6pNG36HziAZAKpIHuvGNLgAMHrLYlx5/nWXuiAdohR5IFp2xdNXSEK2qrei16KWpXGxzeEGJNs87yG9UIsCItdpmRyKOMFu6cZkSIlTWRZEr7quzLEuEtOVmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAnDXXHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAnDXXHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AD2C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768272833;
	bh=SMJhV0d7AA1Ss7mIu01plJnpITswS/FYQ2/HPvg7XWI=;
	h=To:Subject:From:Date:From;
	b=AAnDXXHGjRZUyHbt7rMWH0VWdPzwhWHyMZOZrq+TjiItzL7HMeesVNYFrPmBnX/sC
	 y2JvBU590lmS8Gva2HkvDQOy9zXX3Rx5cWLkL9a/Zum5PqGVTnm4xjV8TAMNUyXdod
	 uxjJmjo+D0DPEdq+VThxpWYj2Gl71lMIOFADYJbGw9L8zdYn8uEVvNzwOhyRSLGFX+
	 3V4Z3r3diSDW8fr4UUpdP+iGSyXfu2AkhPhN2mXYh2ucgLOiratde475Q9tHd3HLRo
	 PeeNsLnEEq8EAtsUQHkmMXnM+e9o4j8N5zvPvlgbDvYH0iwDkS8ylQuGR1fZoAjzCi
	 VBSM6zIfk8LZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9081AD29DC1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827283358.13965.2960348594621013343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28186758e074dc70a41738998d21d5f70085badd5a978566972fdb18370c0486
Date: Tue, 13 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768272833
