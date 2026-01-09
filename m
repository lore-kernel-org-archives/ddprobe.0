Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6E81A9F93
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767990234; cv=none; b=R7Y+kcFQcWXIey4D7btIvZjPnaEVV3EVh9w9uyS44/tGP0ptSMxdXieIThy5d/88EaMd91kF5F+ejBtmRk+2c+3Mc9lKu9Xw4Ar6c/wISTx6DmVuoxaBLq1nh5D/Hl7lMDUROGSs8IkHZoWMoOcsJ9jgFe8Fei3RPvJqIHcvqKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767990234; c=relaxed/simple;
	bh=PydJMg8lEJZRdxlBNTMabVTl6xUixl1fmSNRuH2V8O8=;
	h=To:Subject:From:Message-Id:Date; b=D2I8TnN28FRsIj0Awm68H4ASfjTNkaOgTsBZDNISEC+LpBROKAGgwb/B1UG/BvsWemobwdyAVPSnsTT+PhQ2aEs91PyZ7Q1sXj4Z/KsU7iAPAU1mb4uPQwCM0qEV18dVO+3yo217kaDm1KB5Qp0qcP11z93cHAcR6e4CChMd0ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPlxhoN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPlxhoN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01DCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767990233;
	bh=PydJMg8lEJZRdxlBNTMabVTl6xUixl1fmSNRuH2V8O8=;
	h=To:Subject:From:Date:From;
	b=DPlxhoN/9XzV1BhDFu89EEc/gwbWns2OFN2wsy/q5VVFATwLZY0fVP/rlZ4x6UOqE
	 L6jRDcJQSuru8dSPvhWni+A4AM+glvjy+FkZumbpz/0pVHGYrVtXJQarj6Wd1zkpNz
	 ypfBZJxeY0yEPQ9bAZYpsTLWz+Lg3LAqvuwGdlkVLDnKwKBh9cWa9o5T5KpHNimm+2
	 ZNk22NafA9OROb61fkvpmQpgrDx/+KLeO9CRYdYXE6HBYHpnDBmaHgeNqFKCxxgK36
	 VlMWUoeuOB6YY4kVgv22Q14dVVeZacTYb1MF9DkYzc0etscYzyz+/mu8ZtvQRrA0sv
	 sjU6nS39tyHzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6ED26D94
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799023360.11938.16638149663566398005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e771377542c1ad0ff38791c94a5ee9f503a6b7b2719e308dc3d0b2e3276554e6
Date: Fri, 09 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767990233
