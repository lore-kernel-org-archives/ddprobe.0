Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B3234BA5A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758239994; cv=none; b=JVXPoHNTpt4ij0UjIFiGiFMYlykDbOA/LS8ojyWuw9ur7cWE8i1rdC9kEz1LRh9gJyW9CjGMIDmhy/mpL1hWGF1i/rLGRm0nxZ71+dl6SWELR+GtmMUupRBR6rBUwSu8J5q9zSV6e+vFqruoBMos+UNCWPrX4bmaGquidhK1zYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758239994; c=relaxed/simple;
	bh=wfjNjBS7Alsu7hLHfbmVY3rvXR1glPAiCGBGdESn31s=;
	h=To:Subject:From:Message-Id:Date; b=lqWenoc/M2QT/alSr98xxPTWWnZfbO8xnWrnbo1Ld5+AVFcR6wF653BbGFj/WT5lgU6QgdLx0+2rXqD3LBJTwYwhabrIrIZnx+l35G1hhOG0E40ux3cXilVY3Hocf+/fMWKBXAHunXppfYEaKr6rsCDU/J+b8GrsSN08Z2v0orc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+hU39aA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+hU39aA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A442FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758239993;
	bh=wfjNjBS7Alsu7hLHfbmVY3rvXR1glPAiCGBGdESn31s=;
	h=To:Subject:From:Date:From;
	b=k+hU39aAP2cUc33d+4fE4YxJ4EsuTW1mrele0gKnTSK9iWRaBMf+zkS9Q8YQ/DWGP
	 SPE1TClX3JvpSaAhWveFHEBvoX3ckvBDgfg1G/gOhbD6gp3d/HyaEa64jASY9Sern8
	 1WyBEph5LPpNgjXvpaGT/eeAnO5VBtyFTFJyVovIAW2jr4q5l5l11Rrr8rcTgDspsK
	 Djx8HcioKjuT1SxunLMXfks3YRoqucuLnpCdhXUtO0bW8MI7VSoBu+y2JuQ7sN881V
	 KiEAUe6JI008kQakHXlemPffBBL5EAPV7oH87CQwsQKd3bv5pSyUhRwxxWgJ4/xkIP
	 uqfKkq3/VjMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DF9CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823999358.6569.14465180403359697468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e22b4e8fe752eab0268127d9512ae5fb47905521f9e784f0abbc2faa53c1bd
Date: Thu, 18 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758239993
