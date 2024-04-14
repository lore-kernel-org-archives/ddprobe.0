Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F74B1E504
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 23:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713137963; cv=none; b=N8etyRBd79WqMDm9EdXn9XMU69/uiaX3hhFsUOJ0A9wS3ckgs3YHyBQa4VtZR0PIyZOy8GlYh6uMkc3Cdt/thPnbvef07OhgF1at0hJetBFKHs1yUTAn9l+Og3LvLDI/7kGgpzqkvI+h9qtTEpAsnpPv63rPQQIsbuvPmPLCgs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713137963; c=relaxed/simple;
	bh=0GeH0t/kRiEpoY8zI7ULM3eMuBmPh2Cez/WKgUfOJ28=;
	h=To:Subject:From:Message-Id:Date; b=cKN5X9wyoTCC1DE1a3kwkQ19kdOcGpEjJhWR7ftCIGd3r8fp/KQkbm6fDngoVOaJWShAY3V8Hn/vkqJ8pemYHPcRvgDz8MVEznXvzeCl//1yTBBzhIZToHPHCopnNIb9T4jvi+vllpIX612tCIkK7ayndw+67k8U35yatkgU/rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDCPw9/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDCPw9/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2903C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713137962;
	bh=0GeH0t/kRiEpoY8zI7ULM3eMuBmPh2Cez/WKgUfOJ28=;
	h=To:Subject:From:Date:From;
	b=jDCPw9/wUDN8hXaffHAocTgZC3HGHyB1ypNq69OUGfLs8F2dlQkGWm55QI8TFyR/d
	 JdydhihChNyzFBFBR4GkbhvuCgQOS66o/zvWVWtrAEvxcS/IMQ6vzmblP0H/3uTdnq
	 eVajd74uTn5ny4XCuLy8vCJj/t548zgBdzMpk+qCUL2b+k58IZOjqSEUNwUGJ4O1oL
	 LTvmBAbp+O8iLpVFU7W0sjsekd3pUYFlyGjNtIWo6SkzjCkawZSkmx/QNqhWaN8oIi
	 rkEY4XyQ7u7x0p8ChCrfGwzi8h2qWwUGFb6AS3JUFVWi1l1fm89RpEHLFCmkaAVojB
	 A5zuU0Rm+2fFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05F8C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 23:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171313796275.15407.14560031465232120978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511d9781194ad9e2bfb8b7da2558de04b9b13e247c43374eefe215942a7a79b3
Date: Sun, 14 Apr 2024 23:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713137962
