Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8122F39C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789618834; cv=none; b=lkO0r/j9kREOzcFhHmio49jjarWwbjhtTYbKkPK0D76uhOuKfquINDoSGb7fjvJbybDrsi6MgtkgJiqj6lhd89zymGIUFjNT7F3m0Fxh8IVC9mjjQwOw0CprtbxbF7U1zaQ4LlB3FMaI5/jVotQDxvqdHIb8vw5pXurRGAj78TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789618834; c=relaxed/simple;
	bh=o9O7Zq4Usf2CBBCOUM3sJRT+ukYDtflS7d5EwImvjTU=;
	h=To:Subject:From:Message-Id:Date; b=s7JGIAour8f/Rbb2kO+c/5/t+RLAzCzc6UUAY67d0T+7ozWQHajNbrKhi7/H8q7UK81lol+7B6m1vkYpgmxlf5GAvpKpKHgDv4ZfhwhlDsNFj6jZt0UlWgAroc1Dbu8WNpkwskZ2eMGnzIr1SKq93n3Bi3+FOeBfFitpT2S/9ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/wysQ2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/wysQ2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC230C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789618834;
	bh=o9O7Zq4Usf2CBBCOUM3sJRT+ukYDtflS7d5EwImvjTU=;
	h=To:Subject:From:Date:From;
	b=l/wysQ2EpeVsGjg3J2vbnRLAx6/vR9/uQgsnp3NhzNSToKgh8spnyM0fSlxGZnA/R
	 DoRRQJxYMnK9LGwzy5gIz3vGv4QcT2P801ozot6iC32xG65TnSPGYQ379sdk2PvTUb
	 eTRRm1Py9o/4Kih0s0qWMIdcWlP4a30six5APz+neIecqPhxTnNz9abWBoAYOKE8Tw
	 66JTTwOvVZUTrp73UNCs7blcvC8OqbvklfT7ulLLPZa4SbdrhG2jF+reZLFvukAykr
	 oosh5mfOJE8G6lVALKvb6L+NIkEy5p+hrDqlwBSFuD/5CmjQz9JymRR1tq8PEuDRpd
	 oQxPWh4tllrgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2ECBC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961883378.25291.7855352716578061471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eda07e0857168fada1fffc8b3172b48a1a87594a992eb253f712bfffa486e69
Date: Thu, 17 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789618833
