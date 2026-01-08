Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149CC2C0F95
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767848634; cv=none; b=u0+es2PT2LiFzRb2X4EfiTZJ0x0MpJMox6lgIooaOZBfodELy2M88T1qzaifb6SOs5HvBubAQbAF6L5FvoklJWHpbso6LGB6PX1S2X7MktyHqKRoYPr2ea2mlGWAU7EGmgVamilgeVg+MOuZNSNgeQ2VfOLP2SGXWow9Qd0HMKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767848634; c=relaxed/simple;
	bh=8bBkvWSbS62U4XS5nHHPWzvNss11CFMKGOj7iB3/kEA=;
	h=To:Subject:From:Message-Id:Date; b=fZ5JkyRvQzw7uIdFc6dmrfI7sPs38hvTSrk84ijh7e6LUIjCTevW+xPOHY8rDA6tQH2rVCYRSj6bZE+wm+7zAOuqo+l0XaBJU0qmct+vG/+MdSyLJMjrwfTG3sPMwZR87h/6bs38aNlgWpD+T9VkSV89j1JAvdp38I6mNcbvaEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av3Uek8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av3Uek8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F991C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767848633;
	bh=8bBkvWSbS62U4XS5nHHPWzvNss11CFMKGOj7iB3/kEA=;
	h=To:Subject:From:Date:From;
	b=av3Uek8x9TzJAOI26FLU75jrDT9VyXfzMnea5c8Qy/61coQEIjfPrMhnAGW+S+ZcV
	 RiP/5DGPm0x2BJAvjnLJwHUe6gJCx0i1vG/kgGUAXKnQUUi7h8x13aW+MpRySzOplw
	 WvFsjV2iFZjwSfaxHw3byQtjTPqN9CbwCdW9fJxuSkY53y0YebM185Kh6zjhfaibeA
	 996RKSzNuHr3kDtdSKTl1SPDoAuR3MFccue9YRzZ5e+CkLmGLpffCo77EojdQoCwpU
	 tlxbaUdwTDIG8GKBiAfvEXcxu8Dv67MRLbJms2Izgds/7K9Zz7D/P99FbD0nguoTAP
	 L3A+8X+diTkhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA64D1489D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784863357.13464.13669897427611594455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3327d40b59eb8c7c22c053cdd4a02b591b5269699a429c39c6ff66dd1edccb
Date: Thu, 08 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767848633
