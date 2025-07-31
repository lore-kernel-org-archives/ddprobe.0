Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CA12F24
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753972194; cv=none; b=T+MMJVVRLi5ld7l5gW3sWFkK0JsCnyRTuFJgGjLBiL5bg6fJGmY/veIPd0NQdftRqyCJMYKSgZ1nOYnNk408vMAqARXpmLg2ZVxLraHBVT1LXTTyw5GqwjntZvVEPtK7R7/tmGVd+lhJ+Iu3YE4IwQd27y9FmBGXSiEecF6KTcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753972194; c=relaxed/simple;
	bh=wO7p0p4HD+yGCmCRKP+Opul8ipD/gJi0M6aOxGOMEko=;
	h=To:Subject:From:Message-Id:Date; b=b8ap9n8fO/uTY7hAsED1+0c/GiaTyq3rGAwzaPKHLat9RTYGhp5ghtdvoeism2cqQmCgTdlBkwbJcCYuJgvpYdzA5M3rrmyuhPgaKfQXh0lO2A826cCzvrWcDjNoZAmqk98cbD8vtW6o2Y8z5xRxQxgV9H35BOMnoWpa6R9Eu2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkRH9LLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkRH9LLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65D3C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753972193;
	bh=wO7p0p4HD+yGCmCRKP+Opul8ipD/gJi0M6aOxGOMEko=;
	h=To:Subject:From:Date:From;
	b=PkRH9LLZ92tIiMyqSTxbisrPQvMVWV9+edhbODCGbbxCQk7AZthTT79VPQzXQgVow
	 ipanUZH/+YfC9em7x+dOHvNeA1t2+MoeEUjcxE4CDybXkmc0mE8jiQV7iibI42RjOq
	 NUv80bXTmLoFXBMTc5MnY0cooBEe9SkR4MiZUn+5xNQrR+AuB/s4dzZmvZvZO7Mqyh
	 t5OJz0GOQSYhn01ZQ3+ipUMLZUVUDUfoxe9Up0imeKvqErzuHEkGXLMvqMo9YHF2sA
	 Ccsx6iZJE/Kd1cJiRgZahNre7Y/JJVCaaB+1iNOC9vKiZGjwZ4v857gv5W0urz529R
	 OSVxeREXDY5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D9AC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397219359.7272.4494482732428599139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85249fac451122ea1d2f97f314394131536fd75b15f07b9ee1785aceb6e765f0
Date: Thu, 31 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753972193
