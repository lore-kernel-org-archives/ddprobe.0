Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2848221FF5D
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748462394; cv=none; b=RJLEjuIMre1hF/Vk/b0TlJzYuPDhUxiDpKJBAKB3QmQA/pQO5BFuC6gq9KQlH45FlPt6cpohXINLZNYsweUDP1IapeEiu6DywZPDrkL4PCl1wl9Njfu2AfdTc3O1YZX+2CPBWbOoqQ1wzKR9BvI5swLKmanod3FTNJCXk/xDqhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748462394; c=relaxed/simple;
	bh=rwPc75Lsr4LC73h/ek1U9ohhy++uVvA3it9ROQj6838=;
	h=To:Subject:From:Message-Id:Date; b=lJuP49K1hJOfEsX+mXPOIhOcC7Av26VkI/vqs4BI0SnjroR58sbaRmqoNEfGlqmNuiwiww5jWCmdfgMA66bHwYAe/whopJ/e90Fh5J61rGq6ymrE6bT5Qmk2uQ9pvrvptpYhEx5i7kAMZhI80/XnKJOn1JB7hGhORhIWGUXqO0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvdqyLEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvdqyLEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C9C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748462393;
	bh=rwPc75Lsr4LC73h/ek1U9ohhy++uVvA3it9ROQj6838=;
	h=To:Subject:From:Date:From;
	b=NvdqyLEhEqXwp+QyoomZIQ8esSDaCLp6jAdA7iY3+lt+RY4zT8YLYT3U2/0l9LvBD
	 4il/VyyfplzfpKT4+6IEdmQ7zLscPdeg7HxifVt1Tcw9K5lZSHWYoBhoUKLeRsOAni
	 umcqebyX24GpnB1Ac/6l1x9O7rNeO/M8Fb0DtoAM1a8dmGE8GRCY8uskLjquDu79HZ
	 QDOnLiwNRO7pCEOUogAkmom0mikH8kvkxOGP1y/uYA7U8sttpFvkDOBHBirlztqYoY
	 8R50NAvFsMfPlhkuGhbd6xfl2K4SlKhfCiR0lj1VxpYM6WzUvPyDUYlcmtXNHV7OkO
	 ywqK68tpD86+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91525C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846239358.23983.7305416822699713471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb621219f225944b1a0e0b05a884361b679773c811a059b260ec88c3d703acb
Date: Wed, 28 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748462393
