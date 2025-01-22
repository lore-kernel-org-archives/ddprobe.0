Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F0B143723
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737530154; cv=none; b=BQpyrnz75mQ+GUVyw5/TLZZhpcKifiPjMNfu4rAeo33HrqLvrHCRirkXt7VtgMCTy4uASHTmSJRWu9rw15uFbrDkV527BwnZp7UTwLEtUyWUQ/28ivsmnZpvmqiXsP1PTfY/otgjTc75l7GMs//kB6OgQXLEoc8cIo7a5nW8P0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737530154; c=relaxed/simple;
	bh=LEDLvxRjunFcKx9tQ/2ojjuyXaUElw6Z7UYv0WsTFBg=;
	h=To:Subject:From:Message-Id:Date; b=Ahs8HTCJLbpulDIS9ye5h49Ory69TJ2ad0b6bUFsi1dhDg9W9UfTQRWGL69DVfbXumamVyHqO+ijJIbeaDebbb1zlHwelaUwY8Sac5GnyGk4ifMXb0Mu0uhn5yt55JTsMPntAduIBgOa0X/Zr5gf4rGTH1F2ZKqJ77UOubQNHUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRnUbRX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRnUbRX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73FAC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737530153;
	bh=LEDLvxRjunFcKx9tQ/2ojjuyXaUElw6Z7UYv0WsTFBg=;
	h=To:Subject:From:Date:From;
	b=XRnUbRX/Bqj4/G8TNH8dMpjUuYhvMEF2QXcEJcXa5SZ6K6mDNdif6yICFq2HjzcRy
	 cG3LMXq52023z4rpZVLavfOdxur7yz14I4Fof6f0MB4uH3SpXwm8vJMP0Ro6zieBMQ
	 az1cgj3JiV9rd9YwoJuZJ9pQuJRVvzrg4YCFf2mHT/KTqEwIpRSLuMKtw+Ch2foVL5
	 m6ZAFrOeQqgl5rrDY5RADKn8ESac8UfDThZJRedjX4PHeon/tz8s9u93+t/3VVa6oo
	 EVtxlbMlnc1YW9J3imVp9WUnJwHqILC0bRj4pHIIZSt4t1DPOFPD1EDVMvaV1ljHUw
	 7bEQBBjzq6iiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE9C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753015358.22439.18246769207379121878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6e0218b7d5174faf3acd3aac517de15639ea86789d0d2abfdc43667e761f7e
Date: Wed, 22 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737530153
