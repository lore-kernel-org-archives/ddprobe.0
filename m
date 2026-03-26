Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27F5188735
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774530293; cv=none; b=izUiAoPhQjvGZWe7+2B+t/bw268gVLooJctrUFr6Si02bQOeMTLta8nkvkCJy8UIXRx7Uhi7b4w2KwtweUpED+wCuqF1dn2KOmdbAEaB/YF42BxXsGC61zECX6hWpR5I84w/tfnX1jLIxK/rkucRmijMDECPiQ4fsllCKORPKDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774530293; c=relaxed/simple;
	bh=0Buk9mo3RuH9XtGC01oO2kYdTGSJw9dHJCyCXtpQ/9Q=;
	h=To:Subject:From:Message-Id:Date; b=B76b6A69LdKKDR9EMvTZIXkXoq7+yzus6Vf3mnDJAzCuratWlXAxPh1+yBlb6QW8uS/tmJncBdvgkWnrcTTUA23f6BR1mInSOTza6LZTIqeg+KA9VwVuHsUbKRcATxF1wQfWX1ITT6m/9mZc2xvAG2rzsVPl4rMYATcO9Bdvtl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUyqGTK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUyqGTK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F6DC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774530293;
	bh=0Buk9mo3RuH9XtGC01oO2kYdTGSJw9dHJCyCXtpQ/9Q=;
	h=To:Subject:From:Date:From;
	b=WUyqGTK2Qb8SVgXs42IVIoN4d1+/51grbtiymCijotjjzDuaNlCK4goXa35qt64Do
	 S1H7QKNxMtcnCByS5/t6q1QS4BRCVHdsiGlwvdqcrMbf9nDz5sqR8HIXU9l5QXLD0l
	 L4jl+uxuPoGt9eW7zoq4ywUg5YjtiFnu/Ug9Shuo0mx9daAm0yuSJAa07QUkU1Fsai
	 dpvufjbLSx+wqfUZOW77hihaqr9cRQzfppFKxRYwI/brAaLid5HhrSMvC+Ee+B1Har
	 HCCw7bAbjozoZv8y80HFIOLowNmNhhB3+wxGI3bVWCNz+JYR2/sY5VBmOzNfxQ1LHB
	 3tF53m8SuZ0Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9509710A62C9
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453029359.4923.8739247779241268071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129985e3e0a437cf7eff10836ff26887fae6d3334a2829a1205f1701478be66f
Date: Thu, 26 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774530293
