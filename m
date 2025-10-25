Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304FA1C862D
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761388794; cv=none; b=jgcD3kdQL9EKUxkYcuq0wQ+EI4IeMNgShFLrHBlJfnZCf0MjGm/ixAl4vOYPvWfonPwQhXHsKeErnoYyMtG+OCCyPrvCiWC5fBy+T/fwrjuA0drln2Qyi2pPvLgMDBsXQb7jBR6AHxopfU3RPVIpm0zK4Ia/PuEIVXhKkVg+WJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761388794; c=relaxed/simple;
	bh=Fn978sCxBX12EeCLsSGoiyVsi20YwDfdm6jYzvPl73I=;
	h=To:Subject:From:Message-Id:Date; b=WFYcyepTw0Kzvz98N3/mrWUv08WRgtqtG4s3aL7xm1X+qNLgBz813shvSYDGp6HMF/HBP6IslhpqBoWcTXZ9pdy+enlQhv55feMKmLESLjXij3b3if6S/onD12uk6XHtVpuOkC4QyYYxHsmKLLp8JqndL8ZDR9iqwhyJ+VSD1hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyisStx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyisStx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFB8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761388793;
	bh=Fn978sCxBX12EeCLsSGoiyVsi20YwDfdm6jYzvPl73I=;
	h=To:Subject:From:Date:From;
	b=SyisStx5yKYUKAia8yDXBf3jEC/2j4XsKpFKcq9Mh3LKm4yfGppOTnr6qP1OAv0GZ
	 hkDTTq2Goq20MFiR6ShYy04Y4oIWVKipkodpno5a9HD4jKKJ4BdjzJE2YjXbhlCNiD
	 JLdSlhX0+un2BdewuyLkV8mw6j7V+ZzCii+k9fhcD5bBZ5gXpzS9/wPdZec5JB1i1+
	 AxhyVdCs3dzrYaBQJ48TksAZ/aQHOnaunhCqC0SPFZLTO4Cnju3TXoWuhgareAqQit
	 CVB2czHCDT7rF1xP2aiYvls1h7CJ8TzJb1TBf11wU+7QFGbpeqRqTDkHMYxxREHLve
	 NGFqnckOJk6Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990D8CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138879359.15396.7169749699022312825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc5485591d5c4dc2e5e1102c65f3bbe617aa761efd1095fe7a42aa9dbda35f2
Date: Sat, 25 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761388793
