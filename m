Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BBA2F0661
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778059054; cv=none; b=jQARI9nfKkBps+KbHKqi0Dp5mLwuK4jQeWWKeXYVHB3CMAqrcV1xFxLAsyCRM6YCvM6TbrUjBCvCgmkTBz1qJME3yzrezjI/cZeGcqYTS+gX1vaQdfYQ4hXTuPcD8SRdoq/KPFPb+0Cxd7PCDbDaHAtdnFJzNehVpfVAKWsJC88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778059054; c=relaxed/simple;
	bh=lnnxs7lSsIS5k/6MUEk0uBtTraAkuu3antuSP/bJinQ=;
	h=To:Subject:From:Message-Id:Date; b=NCSHgfU/iNpgHSbUD4pZGp7oPpJRZj/Z0xZD7TsYBp2V1oyBVkfpKHhsP9WiaDkr0nNYRD3swN0vHgVf/fy9EMHz7Dp7FfbSdqACLCXMn4UgGAN0wrTfFqjz6hr5ek18igmSU3ieEsRz75euP0u/Gkx9H3OQi8sLAMq5iYkWSK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7lJi0G/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7lJi0G/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83B9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778059053;
	bh=lnnxs7lSsIS5k/6MUEk0uBtTraAkuu3antuSP/bJinQ=;
	h=To:Subject:From:Date:From;
	b=c7lJi0G/U3iwBsAdI+Uxxyssr6yWUxdleT7AX5poxut0ZUQK3fjMJ3v0Um2wlqV//
	 EoMn+G8Xiw8CI21t7AwwG5HDqW73Ym8uvXkV65DD/xIsCbD+td4kb3RQIUJwlxG0Ez
	 HsP0TwunMfcby0endPlozHFZz/7mbUOj3wdnl0guyTZwKYPLDcr71uzbEHRQ0EanAP
	 IY6M0AFEu0AUUnIJwC2InJjzXIpWpuVxD1CCFK7v8C0qFHfP6ugmoJgonPs1aTd0IY
	 absZgvQkoCozJIitYQkztfoo+6xVl0Le0asAkqhYVWExqEfcY7ML0qOquzP57ldW6h
	 8cyUl7fvjsEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACD3CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805905369.8647.7562702803619313814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d4fc569b2719720306491fa90c7631e5e3a6732de792b9c7606212b6b43743
Date: Wed, 06 May 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778059053
