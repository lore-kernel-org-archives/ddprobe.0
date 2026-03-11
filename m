Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247212D2483
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773265494; cv=none; b=BYA95/iYchrOZcZ5pwZsgN1DXg/pNhA7L7k+BwK42CCz6bDW5mYj7L3Q4tBNs1ieuyWJAZcKuVoJ1dnGsB4ndZTLKPVmnR3C3wejyfENlP0Sjj/a+XPVcn+GakKsXcjoiOn5SJZCITx6ITKXZaAFY9o1lsJMWIPtCmRAoL8Npc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773265494; c=relaxed/simple;
	bh=inSppdIsGAEAne0c6YNwvpoI1uB0KujVfd3UzyYltPE=;
	h=To:Subject:From:Message-Id:Date; b=b0YOhFXIG/kn0+G+9bfJGd8e2ccmXrIPRhRTI8zWU3owST1niEf8LCA93SaWnhxLGNkwNZrnEQ2mtqP9/DijokZmYIyJoJAEc63PF/3ym4EoKkisecF2sKU3TMMKw2eXPNqhXcSJK8U+q63bfKwbcSVkA8t3ZK8DjphOtHC6qrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYDkVxVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYDkVxVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB96FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773265493;
	bh=inSppdIsGAEAne0c6YNwvpoI1uB0KujVfd3UzyYltPE=;
	h=To:Subject:From:Date:From;
	b=kYDkVxVRWRlJ5zGyTiO+K/p03AhIblKtOYMwum6qPgiAxL572IAy7fVF51sU0Jh7f
	 k0ROkfWiPGnLJrEwZVvVqoL4vbmjkxt/Ub0avHKCxLTqsQJx6+huekcI1RwdAqmBNM
	 hefE4XFfRHEjMN8GeAyotGaJTxs6L33fvz0g/dy+Q7Wxl5g/ZyIZDQ4lEpHFgsytlF
	 pQWAwpwrKLXBBrxxJKXkfbtv2l4PLl7BAZzXSJIcWY17sKViN8Gen1f98c6q9WwiOj
	 2AulHGIKf/3m8Gezd72qSm3S8S+wURASH7sm06KA31HNe0L/kBmXkvcV88iJoTVIm7
	 AqHFrYcLmFybQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3D0103E2E6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326549359.17233.10881824397970618988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c54a450822a16980088693248a4c8b939af5013badf7afd6a7f34b6e48aed66
Date: Wed, 11 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773265493
