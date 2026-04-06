Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1BC2628D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775439934; cv=none; b=IA0bQb2FjzG3caWgK/KtFjhsLunMnjcaeKFRH3W75V3QDpWJchRfnqcfOIeaQe2fqMUZUsSZLkQJ7O71PKbEXlBhuIzw+7v+LVXRHPl5RvaPZx/0arDPb9qL2OQKU+tfebukMNT5uiKRF0lvbR0cPGOu/6PJEc3QydqPgvh0qSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775439934; c=relaxed/simple;
	bh=wZBsQNInDKTDFI//P9T+bwGRKiiHqYMRMR/oIqZVAYo=;
	h=To:Subject:From:Message-Id:Date; b=d12MfEPg2ehRXEK17pfRnGmMy/mT1hIK2ZBKiVY7OZHXt+GyuvGP1BlAFuH6VjW0goTkfYeqVjkTJjnTlVPVqxUpq0Wr9esf0kFc9WeBIaTZTgNlUO3n8YflGJs5Pyrr4EiS+ZESbYIcJAv91soAnBxYo4CteyGlqC8Tz/Q9gxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGV8OljA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGV8OljA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6E0C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775439933;
	bh=wZBsQNInDKTDFI//P9T+bwGRKiiHqYMRMR/oIqZVAYo=;
	h=To:Subject:From:Date:From;
	b=oGV8OljAQRFJD5V9ETIlKOsKQJKGmi65PKMD1N+ePfzCA3f21Y8h+ub7ccfxldZLg
	 vFdjHUgJuXBi+mffmRdcuG9Iv0VwU90I9Wh+JhCIemNEjLWXGPCUBXsQDCSP+iHgCW
	 /BX0fZEX896jIDfmvvQ7JIr3buv5t7p+mrsAgwF1QB+hDS0z4rRH+YoIoguK8/QHVH
	 MnLRFhoGG2fgVGsoP5shGMIZoJZF6z7LoKXT1ZkSl/XzDSECBYNsweCBtNj1p5jH3U
	 /aIhky8MJIZpn9d3JI7tx4hl+lwfQ8Tvu/EFJ5oOvrKKhuZUNmNaxDouU6mAAAoBw2
	 Dnq4jHHPCnFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC72E9D826
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543993369.18224.9832688030700888599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8811a91d2a19e3880a8ea34f55de3c967c02a2815579e9cb68ee90861e01ff0d
Date: Mon, 06 Apr 2026 01:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775439933
