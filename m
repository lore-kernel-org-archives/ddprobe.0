Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4EB027B343
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756507193; cv=none; b=WBCl+BmIe6nBvnSFbXIH6YG+KukfkH4YoH2DL5LWR30/fq/JJiwRs9WNsoyQhNpU68ka+/5YzqqSnfOfcWsoTRQVOYRFmtav7nfXlDuaC1nfpq3XAR+wJap7AJ9yj3QfBDYxQu58nMdTKp2Odrv0RvTSdW4QwXEDqKGYxEM28ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756507193; c=relaxed/simple;
	bh=81slESrA1tmhqF9HgZvkq7RuVOpcLx6KZdoC1oQqE7E=;
	h=To:Subject:From:Message-Id:Date; b=Ae7EcXVI1LL0CG2t49FyzoZbwaXnqN6RyzkbAN+lKwgErq4iJwyFGSi+p5nZz6/ACfXdo6k9LFhYRLDPBiNF040QRtxG2e3zXOPyjcBuM9Vxt0XWamYo8aSM2HRCMMG6c7ecRhlJe9lRW1eh2wtkdI8BVOmPFX9q1bsbvnUErgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8/CdyXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8/CdyXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A51C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756507193;
	bh=81slESrA1tmhqF9HgZvkq7RuVOpcLx6KZdoC1oQqE7E=;
	h=To:Subject:From:Date:From;
	b=r8/CdyXKMiWAN/vb/QdhASCpC/TvupToUWG/LQbA3YWKBxsteokgn7/Xuz1ZzYp03
	 IdWwC4kGN1osc7S0BGXRl1hhdOPyf4i8xGiysoE8DSFXXC9+D2bVCxXzvEHg1Gk9cU
	 Mt8Sc4v6OW/XHgxr2d+++JrKzRLbRM6PiUDUwcQ5SxBcMC8KjAhPTUh8P0vayOjp5Q
	 cu1Q0POMYsTrWYvTWE0cDGi+cNm7nALp9u0vEVhbizgFvGnE94mpjouUCTxIq3LTT1
	 rVUS7pw5IMYfm/lTDtNsv2nURPCIGId4pooRXWFQ67TvsTN+v1Urr3+WpzStmE+gnP
	 numMUSEHJkang==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93907CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650719359.18154.237156227011447750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9c86dd1ec0ae920ae4ecb6f56af450ca22bfb237903017b4c2bd959129d39b
Date: Fri, 29 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756507193
