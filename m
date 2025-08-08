Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3621F219A86
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754633394; cv=none; b=pPyHnyp2KmaPHb6CP/gijYDmqL1CcXIPm2sEDh8OIOmQBxSKvMOlzEnWlMujhDZpt0zxjIF3oxNF9oCF/+jVbJW42jLqyXTGIKLUoTA7fsbw4ex2ASOuIUGCVNeTMIR/yDPiW8uAbH76viFZ/6j7vpVUZlWgBnA434ouZpdocrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754633394; c=relaxed/simple;
	bh=WCIzpPmEyygVQc1zd1D9OxQD+b8DEF2BwIWl+cGxs2k=;
	h=To:Subject:From:Message-Id:Date; b=E0nNIAEY3gCXd7LWkdMax8nmPWwVN3t0MLbz5juZqcE48xgHSMDm7hJ4/ljAXCeuWV9Uldk16lTgyV3eznHm1bPpPLzEONVmLkyXJvju8q4PZA6pPzzgFdaE7j4Oh9rg1aAlyRVxwPbEqQoFtfw+dMZU4cJQP1eqrghGUP7o6Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z23TmVF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z23TmVF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3038C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754633393;
	bh=WCIzpPmEyygVQc1zd1D9OxQD+b8DEF2BwIWl+cGxs2k=;
	h=To:Subject:From:Date:From;
	b=Z23TmVF1HsOP0eqW5aUKu7HkitwBjmydIXSybjqdZyZKlitRl3FzXSY2aFSeV7iHI
	 XJV9+tzQrKPXOv0DETENas0GmfYd2Q54acBcuHp+h3KvFDBDxswVSBXOKpaRJhxEH4
	 NDkB9i7I+cmBFx7St6tSKwg5C0sqfElF6toHbbsYIWaa1gQbflBPlpOA5I9MjGmZuq
	 vpQ6hWXxzOuqkk5yNSs1iqi10gx5aZomzkUD5Bb+Ns42Nu4uo4mLfSWjCXMuBMruD1
	 wJ1a+QD8AD5+6op5YWsE1eCrMwUfKg2+ft1BQCr4G54i5dRojyH4I/atHkb6e1yOGq
	 M9WRYhpqJe/Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF3C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463339358.11994.14815065416310728327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e5a6cbb2dc95a7f84e0dc98ea1aa88579ba59517913cd738edebe21860ae2e
Date: Fri, 08 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754633393
