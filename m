Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A335391
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727829354; cv=none; b=gQJIrbC4vf79vKhnXaN34SZCyZ1Vyw5vZNPUQtLSdIDcnowrxBKg8kEjPZs8WhdGD3dgRghjABD96TuEJBtD685f6UlzpVyoMdOEDw6PszoRxpg/aAiGKNKM8ZBwHLQ2P8uuVroT/MbuH6V1ta1t9GZlMmswr3z9grFju3uxVB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727829354; c=relaxed/simple;
	bh=rjk6zGTBCCVS7bnNUBhAxxMtaMPxSirUVON3j9UKbd0=;
	h=To:Subject:From:Message-Id:Date; b=aLGphctmmowWGhCbfiFQCey5Qn7MjctH3YwWq2q1CtY05HD69baGJl+kfFhPWeNvA/UlNvEYlNyRw9FqPqaPFO6et5GcCAYa8+VmjQuDMIfpeVTTCZtHTWlfQOD5o0V3ZvJvdq6eInH3hBJewIO9UMLFMkcHTCkWzB2aNMteq7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a81dc9Z9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a81dc9Z9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B68C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727829353;
	bh=rjk6zGTBCCVS7bnNUBhAxxMtaMPxSirUVON3j9UKbd0=;
	h=To:Subject:From:Date:From;
	b=a81dc9Z9tu9g6bzuYgT4P5sA8wyJ6MPqLX2QCOk6FNsls1+YI8CXYW1txKab5j+dX
	 FkXE7cX+CCYQTcD9gdEzRjFblTv++m9rOTIjmedCQ9KDbN82wae4UR0N+EGUsSfxsB
	 pSxUs+P4Zftiq4LLXYeZNoEU0hAa09OL0CzCbugcEaE0fhecr2D6T2zoms0uqOBsYl
	 zm4TA9HyTPZJjFisjNik5xu1zzyKRWoVbBy+FPu9Mk4iJ4ZS+zN76aon043VJ8He7q
	 y+SHCAsV9yHGHOcBtir9fRU5drOYZ2blKG3+9ayNRDjTxk6PCuF+NyQE8Qwvz5wtkr
	 TKZTOMiSNoFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9AECF318A
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782935360.26430.536160650856721404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5656a584a06f72e0ecfa095607253898b9571de9f37b5aee4aa7c88ef864c135
Date: Wed, 02 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727829353
