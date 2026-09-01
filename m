Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D67C348453
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788282034; cv=none; b=nnLjcmn1UxvuMKtmkFAVJxnEBHqoE399HSdPt3NkfdBA65j/TdTeXeNPYgPYMPu2gp1vsnMI9N/u/RFc5Zry79va8QuWLmplXsCabrx7z6iQY8RjKHZ8Ojc4gXpeJPVRwEzuTOjdxlUeWtKL8GP9TGCQhsaltaDyLdUSfuPJ6rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788282034; c=relaxed/simple;
	bh=IBu1R49y2ZyVsF6tPsoRtMslC2c6Zu76AF2KnR8XR2A=;
	h=To:Subject:From:Message-Id:Date; b=k0WWdBtdcO4rDpCAnrC48x31E9ljf3BqDrU2izqlLMxAK4b1GNuZdhOOdA/rSAYdV4Y2ysEE6zk2arx78+vc+LUY9wE7ojlzYipG+ABlK7vPjYEPu40SWmV69TgUf/KplKhktL5YmCobaHtvwLnAsbJl9QfReoWanYvg+h/lfOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHizFl7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHizFl7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5DEC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788282033;
	bh=IBu1R49y2ZyVsF6tPsoRtMslC2c6Zu76AF2KnR8XR2A=;
	h=To:Subject:From:Date:From;
	b=AHizFl7d9gA9slS3VNZCbvboGBm40gqelJWVfcNOleiyNVcc+h0gJG9eh6XIRCaQ3
	 Q0R4xdF6Yy6qyRZfJOwIqhM90+lRERUeR2Ibrojy/pznOFEcvyRp0agE/OqTG4gpCH
	 KU8NsXxw88SblOtUAh9p1FeRNJbK+/F/ZPhIdH5Oq9g+v16wZd5fYMn2Mq307P9UcN
	 byXhRvBBZNp5MytOmSFm4HWwCArn04fRqxBSMoFA5VswYKA41ZWJDcAIpeOqHOEriL
	 PmXA6wGxLW2l/WOyo0utm0zwNOFY/JV8KvH8VDvz7LYjAcMPNwsFvImrmRSsgih0Zs
	 ONHo9qAveBLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5DC624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828203368.2482.16722084177695729951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02760e3ad33a3bce1439545dad546c2e0f660b8cfb83f5cdec76aec81a291f19
Date: Tue, 01 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788282033
