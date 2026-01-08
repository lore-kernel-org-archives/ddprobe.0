Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD5950095E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767884634; cv=none; b=nsswWcMHFpdJvYWAvoCanJ6BHEbQUAORWLJVkAz1SISM3VlV6McuoNCYCfdWLZPLYKKtUcW/I/ljkM/vMxBfOi3yS3pp4kuaBl1mjq/bg0b793bwHYqcNkpJvf4W6AI1Qzpj94949kT1P4zTqT3F4iqsJWyVnOkDLWV8vO9Q4GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767884634; c=relaxed/simple;
	bh=LadmtQj/z3XaB26KRq0AcHEyCUETwiM2NunmTlD/HfA=;
	h=To:Subject:From:Message-Id:Date; b=gjzzBrvokSJHBKfcZS4wTGB9fdp0WUwNA19iS2H/zATkBXGPOYahyngFjx8JJVHTgrsbRmOse58SMR3pThuq3hrW2mNsXOsPDmbDNRHKyyaa+gkuFujJbnPKcUNWwCGqgBget2WHsMjsliaJK7VJv290KTv6WJdmT52BrivlA8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVd1uQur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVd1uQur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE11C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767884633;
	bh=LadmtQj/z3XaB26KRq0AcHEyCUETwiM2NunmTlD/HfA=;
	h=To:Subject:From:Date:From;
	b=oVd1uQuraRazfIukuOmIkuD9DJgGBd0IeXadkSt5yQGGKyDxu4fOG32ux0gz8dbai
	 //VaqJtPkJdXQ+JdRr4JcZYlIn6iqg67hTvyDjZG3h4y/YOQSHX7pPSXieG51gq6aw
	 MghHutiT02MnMEGK1c378+2FmyPFlShCzJJD4COSM0HzGFN37wt39NXt+yihbRlWlo
	 lb3IEmJoOH6WPeI+EpP7h8RLlMmRJTZroSBxspOkeoLs9FI4H+FLWW/75+6XscVPaD
	 K6OO4OxPpOABYafWFWBQoQj4MSMc/9jhgeuKMIDLxMblGNhK+x8dfj7eaDdEiHvc9P
	 ctloVqCb7o2zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED04D1D461
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788463357.7320.5361528497421410746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe58f72b0eb1b3aa8441ec0f5c14c4b79dfd6e8af984e66dfd6876864ad3085
Date: Thu, 08 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767884633
