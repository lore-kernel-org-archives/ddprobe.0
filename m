Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72689B640
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755994194; cv=none; b=RPdsmw0D5t4pCiFCZJwc6fB//SYfOqQJx/Ujln+0pnR4e/1O3mv15RnOcKtOcicyPnuvRh6W5lTg6WbKGzR8kb+Fd5YSI4KHkuVP4T5gQ9FOSrYLfaRZTzZ8u53wm0HG8Ps1wkEgeahDRuitzmWN7jQT4QiqviVrhW/NwSxiFU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755994194; c=relaxed/simple;
	bh=WSERDudgohOPFdzE8uDku0Y34XMomtPUCjPjZpPOIHk=;
	h=To:Subject:From:Message-Id:Date; b=IYFxhb08TYHlZyZP9/lGtuIIM+p9CZw/PINnFLvEL2mt3+F+D3vxLbe1j7HVLHVvO+lSXTl+ktA3G8w86UYeConZid2vp6Dnx36v68L51CZFlbkbFjxvWRahqygLH7o7oGVEE2TLfZOADbaG6rkUbAAgq1f30rLq0zZki15MPnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlwBjQmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlwBjQmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A08C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755994193;
	bh=WSERDudgohOPFdzE8uDku0Y34XMomtPUCjPjZpPOIHk=;
	h=To:Subject:From:Date:From;
	b=hlwBjQmZUaOJp/+MFwPkJiQlddVzd+zV0F6PQdLmi6UA7MF6BVqlrU+WhNLakqdBl
	 VE+iks6FcXEpV8B/VDEizKchqf1+QRmwfk7y9PlaWUIVaa6b/8oBDm/+VeHPq9R2DH
	 qadebe9rgZRBg06eLhkvQvX/Knr7bY6o4YKdnMiQpozA+4d+3YNWJeNtbXUb+Tarrp
	 zvPWNgjgip+M56U2yZ6Xbvf9s2DDDNsnqU8EnQej6ZlKZ1DOy7ATvJ7zxiLyDKlDyG
	 lLAaZWeT6bdy/Rn/5B/v7bSAmp6QjApjMj1pN5tlkRDYTEcCxbCBDt0a2j+AXGE90f
	 D/KJ+VrrU9DAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242CCA0EFA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599419357.9891.11133481345219765525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898903f0a1b18e7f395c40afb8b7ecaaee15d47bc61cbd20955f82b9b88eaa21
Date: Sun, 24 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755994193
