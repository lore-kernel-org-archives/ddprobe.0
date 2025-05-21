Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3504C221578
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747792794; cv=none; b=KRApk9T+Enc8pg0f4CnaZEA9ONBA4e1embUbEPgPw5+Q0AO9x6EuWFTYfC2bgOeWlqaAjdr7fD6XfvyYbpNiPhRTXGDPajBNZrCCHjbaXC0ctPeKxu/nF8lpdeejekqmJwMav5nYMxmRqsfcQriDS88IQG+D1mm0gA66dIFTp7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747792794; c=relaxed/simple;
	bh=hxv6rKxBpgIBy2pbMMOwKE26pMx5M9VIuP3G19ARnrI=;
	h=To:Subject:From:Message-Id:Date; b=CzlgcKQSlsOvu5g0hqTz3l1nvCrKxiZ5pFKRe0aCnywcuUju4uJR8xBm6+W5Uwmiv4FWR8aeSMkc17ad9lu3x1hakVICeYDrb42SP5WCgM0F4gRnsCTVPDn7qZ8BysmGgiIe/JvN4scTAE7tpQnDlWNN731QH8onzbzOwLYDxAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M70GQXvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M70GQXvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E61C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747792793;
	bh=hxv6rKxBpgIBy2pbMMOwKE26pMx5M9VIuP3G19ARnrI=;
	h=To:Subject:From:Date:From;
	b=M70GQXvDxdq3CPl9do1h+2Qx2jf4RhlEnpB50n8z6x3GW+3xHUpABSPdyGbF+XHxB
	 lvX6xZBxN+iQOqcet92r9JQAfA1wMhiGA7iMnfuecYJDUkAm4jddxC1AXhUNPKSKaY
	 TgoMY1bdYJHOfMQCJuIAQg3q5L2DBukBGFDlb8CziCWM4K+tiAJA864q+PrdMV7oA/
	 wYFci+MpTKcTlHRgWr1Wl7eZpN6T87LWZKr0nUG4MFcGup9Hkz92ju+3Vjfzz6LmK2
	 jpqSTNHNCyU0BaKmteOXds9mPrWalXgrU/yhs+VmLETUw0LazRq+acUZkpXdchDema
	 +4H2+JE8zzFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92087C3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779279357.30572.12637220734977898821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff4fe05c7b339738bd32325b4e61190e47ec24421b0cb1099a42398471307c0
Date: Wed, 21 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747792793
