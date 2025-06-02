Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E28640849
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748888394; cv=none; b=rrq/wBXb2umoxrgEmhOBbwQBf2asjib0wwhfKnoAiCV85fa/dwIn0jOn/kkKu/bXNNtTzCDRUmWig7YxepU1l3c6ObGxaXpmlLHLCnERBy75YtvOT13DXBNEr/IsmCR05bDjVDvtFG7JAOe13mUFuNE9RXvu6ZTGFHefmBGUBy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748888394; c=relaxed/simple;
	bh=pl/Ljmgw6ja+hxWxMVapTAlQ4783rMtGP0AmHuCvjac=;
	h=To:Subject:From:Message-Id:Date; b=KLu2ytTO4f8PxHosg7xH1/Abl+gaO1uNOVWx3ZH6J/TJVIMrMtYHEHJsfSKFi0zsskt4nw69vsE4qzdNzHzexxR8p7YZsEdE3LpGWPef/1NNrEJFfpjqU0IjXRH9PjuNG2qMMGFtpZt7/KLCWC9Whn8+8qN6Y9FmG2nCsHzWQXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRO1Jpn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRO1Jpn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8621C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748888393;
	bh=pl/Ljmgw6ja+hxWxMVapTAlQ4783rMtGP0AmHuCvjac=;
	h=To:Subject:From:Date:From;
	b=tRO1Jpn2SynM+0IUG6EaajSk4VkZSmbQHa/VtpKvVygJwgfMNS7vY65YLxAwRgpZc
	 mzGexY380Q8hhNdDF+9+6IOJy4iNe5bZE/ebW/dP0KFc9xMbByoO14IlZ6nIEqSaV+
	 P72jk/7OAHdcK9c8kQkcIRGzEPNQhl4ixD0Vcsz776YpV6OIZsVlrGiu/lxE6WEZ3s
	 pXH/MR/TgQabeEsz0AWyIBfC+tahJfUyAuxCo91uFqzOPulHNwImlSPKnoTXPF0Qxz
	 TVjZpEK5vslnacE90qE6wfMCzUKTUl+jCBqEFqVzcmgvsv4EInNZbeygkjE6q/4ayZ
	 /SCiSJ9faE5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97660C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888839357.22963.3713988703963023011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f481d54665dc51163be7a73103b0e64ff870bc6d3ea5f84437d543536bceca6
Date: Mon, 02 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748888393
