Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745B41DA5E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720384583; cv=none; b=PqKguDyAUqDHewQByJACOzbMFqqUie4hb+uFXcFWNXLJoXIDUJKgWxgFF9C7CF1mrePBAQN7kbGpGFewYSUwo51xJJIN34olRD4uOVmoFK+uQsCupulSkZRlSqBgxCuNt9f+Snc8zHgGdXaaj0778Pc+AKkd67JxWHM4QAKLbP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720384583; c=relaxed/simple;
	bh=mzF1SLdAs6wbdrTtdH7gTFz2Qa4fjY+pENgt9UkWa3o=;
	h=To:Subject:From:Message-Id:Date; b=ehibx4v39GfxjLwmTFWATlF7qFRtNVHv+khhGvlcfQgpYoAduhWPTm3RsemJ2XcgGxFu8kWHhOCxF+fTJtzQ2EYS23/vomtbad8UIBRfGwz2FkXiQCiqdzwSsXVXipLr1da9AeRWJyhvJa51g9Bv2JJ1Mxo9tJdCPZEhSJihoEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cse/JT32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cse/JT32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E98C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720384582;
	bh=mzF1SLdAs6wbdrTtdH7gTFz2Qa4fjY+pENgt9UkWa3o=;
	h=To:Subject:From:Date:From;
	b=cse/JT32XfjmwEpTZIFrE/y2SsdAFiAK/WKkrEfik1M6HIRJiWXjrIwZg94nxtMjP
	 glBLWVPdhH85kksHUIi77l5cEokwexUD4FPyMf5XiBd7F01RvxOzrNNTY5++3Sp9UN
	 zvh/p4pn/vJ+bizzNYaHWAB2TgK9dxrrlGjnc7PjB5YX6L0pVkfnuBC7pZX0xXmhDm
	 pnMDQFms7aY4nrDHHJNNuBdQbXlMR39ADVsb6HGfDuhnpXbVAZOHep7COjo4JAz+0w
	 S7twDNanrYi9TtrUBUGDg3HzsJog+CoC6vMYhg1x9/Ziiq48nDZ9ZQ72l9RBtJN716
	 gewRERq+/m1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFAA3C3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038458281.13705.17612708791090668082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120e2a5a0a66364d95f77198e16405a074530acf2c432fc4e357d696dad10242
Date: Sun, 07 Jul 2024 20:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720384582
