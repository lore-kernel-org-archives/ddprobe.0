Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4089A143885
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715854343; cv=none; b=FeWxpv4QCPgRyWzFQjmX4nveeidm3Pl11hvByHdEsqfjzwKkWo7gW/qn9NQXk2VBx2hszUkrUr2tXLDn6+62xtvXQvfLAIILSBSpiKeg54pNd47wGhagPUzUTZ+diN2Cj3y2cgzIJ51jp5sGJ8rRkA4lJq0o1tOHkGXTLMg8vy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715854343; c=relaxed/simple;
	bh=v4qfwZVp0Qdg6o3lxj6dB5WIEK7u+Vauv7ifpUagHlY=;
	h=To:Subject:From:Message-Id:Date; b=pdQwt9Qhq+rl/auG0QPKZr6QHGJn3Bvf0DxoWREJ8RGCwSR9svNp4T63R0y0P9osaftXCUZBTWC30N6i3hgLcw16PN+oC18iJze3FBur5Xql9BWbEwN46xEwHskhPAeMAQP9jX9J0eL6KWhHMGsLv3Z/OSL2IR0lxRqMVaTCiJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKlpGKl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKlpGKl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FCFC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715854342;
	bh=v4qfwZVp0Qdg6o3lxj6dB5WIEK7u+Vauv7ifpUagHlY=;
	h=To:Subject:From:Date:From;
	b=BKlpGKl2mjylOfQF/QNJB2iUo7HxugAoVKyWALmHKlDU5V8IWk7M2u4+3K/PXycxn
	 TekqFc0sOnOLRhMpvc//3vMGXBmZrDXw5ZkqqiPAyQiYhvS5sdcKSUknwMlcOzBm1r
	 3PXpV2FRWZ8zFS/G7G2w4P1Yrz5tlD4DkP8MyC4PiwpwgWh07aaEUZ+lDhS1m99Ij6
	 hf2ahNvMNJ/DURku16Z5+gM96cXskjKRNEb9ptgzMMxSp5p4jqfIwjab9WLuGYJzCg
	 HTV3t3B9eUYQfNAXznEVwV+MJUg8LEcn+3oVJouEu3+eyF9B1Atacxc0FJvrQ9/xtN
	 RqDJFPXDNkUgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC8AC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171585434275.13120.7469893257377815174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2da04dba51d76c200e25b6c048d1e9b575a13584cc673b246941494cf5f48f0
Date: Thu, 16 May 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715854342
