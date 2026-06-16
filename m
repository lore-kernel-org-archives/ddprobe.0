Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A022C027C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781618194; cv=none; b=Ese/MOifae5InpwRsWZjdkoCUITWzKkS6JvCbs13bgyEjA52hRSKaNdBvVnYDHxQf1wFx0ykiijNoesXjGWLnIzY8wZh3GFanSG8TVEoG6UKnUvjqOzLp2QF1pigApjbgUcpnOynvE/IP2KGMaeykiBx8elO70QYh8YjkYRHJOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781618194; c=relaxed/simple;
	bh=ERbPAwgOHNvHZtdF9Kn5R3FFvTqarJ8dKYbwedglTYw=;
	h=To:Subject:From:Message-Id:Date; b=TvLEnRVCpiR7HqhmCLncUtoiQ4+cTDWque1u6xR8CvvzsuSVAKxMbHALhDk6qIuPWKOEXMy+hCuGDmfT8PcS8vCz3wxt9HVfi/wSl9ICwQJsNBGNO/V3WZw1np96isYSB53cEQHx3tERomUiVJ3MX0O+VkooT1XEcJcjjLqIwfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OApyBn0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OApyBn0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD25CC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781618193;
	bh=ERbPAwgOHNvHZtdF9Kn5R3FFvTqarJ8dKYbwedglTYw=;
	h=To:Subject:From:Date:From;
	b=OApyBn0UDhvQuktdyvdtN1dnb9eRp/uXSjAKIrRd0KHIK7gSNna3c59y8AIAC76hU
	 WprQMdzBJfL84rjdXzxurtPH3sqPFd8lRLomy0mblk0/g7pGG1rEbmlD6ra/ioJIf2
	 nEirbeCidDp4AU3S6YpmJcF5PwIhY2UG9PMfXpODbDn4I9LLD+bez2PuRFjs1XG2yf
	 7Lmqy92Cd+CHmbkrWjXdNfC/3IIXOcBdaQdRpp2dVal8nAtdYEiAOJ2yMKUqOiq+0m
	 NYqOEsgqI8pjDcT5Wbm/vz5TCYvFD1h+JhfYZONRfObDtH0no9Pyk/vPOr44b3LWBG
	 EazxbVVjZNiBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CCBCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161819370.9357.17456316040830833511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00e29efd88d083b68b2d87164a82acbcb0f7ee6e2dee719a47bbbf43eca20e9
Date: Tue, 16 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781618193
