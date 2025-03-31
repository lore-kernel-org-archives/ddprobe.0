Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20A610C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743406794; cv=none; b=c2BfwZP+dauPxAGvD87dJN4XRsW7vUbpiZz9rn827xodOgEUPscb4BYeHrBHXRBd0gYYga5MldT2yWcw32I/54v9qSS9qm2R9MzBII3T1rdSdVnSlzu0QXJbeNJbPtrp2rrUE5tro4d2qbU7hNWm4cAHdsCvcI1U8IrIS1YAT4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743406794; c=relaxed/simple;
	bh=ySjhOKkghsrWjw97skvOFEHfZ89A9rpQitPitGpjfVI=;
	h=To:Subject:From:Message-Id:Date; b=qeMJBN0DQEIhBTfUk4IFK3mmYCtFgG0ovXX1fWjTKQE126AZzmz87TKu6w6ismkFPzBV0KRkvihYoQ9BzOO7sJdUpebY3Im/UY6DVtxuc2tVpTyz3dtYfGeDuViasEchaz87Vnr8+o6Am9PQ36FzzMZ1LkW/hMz12zGpNnomTuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sqf7+6Ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sqf7+6Ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73D6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743406793;
	bh=ySjhOKkghsrWjw97skvOFEHfZ89A9rpQitPitGpjfVI=;
	h=To:Subject:From:Date:From;
	b=Sqf7+6AcoOIqh1Hly55OCorBL4SQ7WsgqmUr9xH9dA3r6AmqHosDMfpV9cb2tmhYu
	 UfsAV16BIW2geQg7V5wflLcUkv+ko7Qbn/Ei9/FTDxoxdSKVv5w+Ln4998UzI3XVeR
	 LimqsucTVyUOZb8aS+aSPYc4loIwF6iozXWVoedq3rGSobCq87u0VT4O+r+CkFcMR/
	 BCPx7FOEZ4aL5PRyDi8OP6lHyN5a2V2Es3dRR5g24eErplgWGhjTMzJLB84oPHvvN4
	 ULWQLs9tNcXtebPOlTk5HXpm5GovTALKecgUULWRJ3oNnJHj6Ob/nYWVk6ETi2mU8B
	 lczXve22cqZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12F6C36017
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174340679364.31112.5254129686950752961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7bb2e2fcc7893f3c8a404d406dabf43d888a214558b3a9e4ec3e90abc4b984
Date: Mon, 31 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743406793
