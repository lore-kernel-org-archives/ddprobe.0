Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD9038FA3
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724080554; cv=none; b=bTZddjfWwb+8LMB6YlJ9qx63iTMiL6ZCk0toufuCalGNZCKgLCWX660V6eh996n2Yi0sDZPEWKatFV+6gjdoUK5Wb2iBaFu8t0S6+uUJlP+6FsehwSewvG/+vcr6w7C/BwAcAna5NQLYBudFr57po+0OH/GJxgVCJlJLOZpimD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724080554; c=relaxed/simple;
	bh=mA8eN0Q6jGNgxpUK3GV/zQBQn/y99vEoGFy9oL404xw=;
	h=To:Subject:From:Message-Id:Date; b=VhnOOeCF5wNSHySXfDLBwqcfXwpg1nbQMbcy06svmJaphGZGB5LlDOmrzGgSnbptZ0kZeHPWWBe05mT9PXZ57+WxHnMrqYKYSjtL38Y0d4Od8troQYPttBgfC6D3jXRZpkZJH0+Jft+U3lTLlGEdXLztUqBFeU02LJzKsYwAqRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKPlEHIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKPlEHIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E2CC32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724080553;
	bh=mA8eN0Q6jGNgxpUK3GV/zQBQn/y99vEoGFy9oL404xw=;
	h=To:Subject:From:Date:From;
	b=EKPlEHIFEFkRPUjT9QBqlLry/aIGfETbRghjyNZwFQSDWBazpcWbWZvCeDVFxTgdL
	 PN3xeoKRh546j4GDvIShtu2m4WwCuWEpdPrKJvEWd2WBUfYYG+JL762zwrPl/KMMFP
	 rFUIcNM9oDo4EazWTgB3jn6C1YTTV0rD1eqGPV2DWXZzc4+QAkE2SEg4zg8f1RwnFK
	 KGg+Eh3JMLjAmsjTL1RdrcrRuWdvawpNb2PUuV7+HzGjhEF4aUJzrRaR35gYBsUlso
	 l2eRxRvJDqXZWtvi4a1NFGDgTJBrVoHXKnlH0+Z3X5X9aJYOcvaVfU7lrTaqebvXCV
	 abMNorMBjmP+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2BBC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172408055363.25254.11454594563299193244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce641ce1a5839e65a76597530d7866d82d4683d44d30ce9d2f580ee218ee9798
Date: Mon, 19 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724080553
