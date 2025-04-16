Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF871624DD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744814394; cv=none; b=Qr+cyWJ8GFMQL/gyX5Ly3D5r3CVtoqSewcOaCLCG4znSz2LFQAbCrxbgubk3+TlfMnFETFjp37qOQPshrVy3NbYyvdzFjm1YlPf2Hv88UTTqASmaOS0UljHTIGa0/t9maK8M2gCraQJ8YHSM2Cnx4p5jbpU3HtMCty1yYLvgPTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744814394; c=relaxed/simple;
	bh=L4Dt30M3+TjllpeGp6vGibSsjBAPoCiHYhnByuqingI=;
	h=To:Subject:From:Message-Id:Date; b=YaDQ6RGMY98i8/FmhwfWBw6PpPavmajNfIMSIw9jL09dHIgNEPwQXdk8deZ6tK6ELHq8x40MFrxRCVeoh3JK0hIN5AvkIsG4DTMnqAZ7ExjCZrvd5WZXZJPdehlS/3k1b0RsLTfE8Wlcn84+lR1swJgc7Q0DIcFcLOyxzbZdRJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zx2lu/eq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zx2lu/eq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF559C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744814393;
	bh=L4Dt30M3+TjllpeGp6vGibSsjBAPoCiHYhnByuqingI=;
	h=To:Subject:From:Date:From;
	b=Zx2lu/eqKKSN4P7QyyCWSVADUJAADU7yf8K4kbBqU4twny9GEc2onD39/ZqOcVQta
	 1y9e75jpM4KtgHrdCrmfn4UtSTjUb/8tLo8//Sz4K833jAtyaw/oF06O9fVcYM76M4
	 acc56jUeI6qpwOqHo6C10HRN/IGqI2QQgj8znI4UTiJbWfGK3GLIN9DRW9xmdqd0/B
	 +mRolbk3PadfDM36TZ6+A4aAJRbtu41Dw+Gdwu5eBe9jeY1v8adZpdB8VrpdzwQakh
	 q2jaC7iTb/12otLWpxW8cl8XPrAb0KZZKo0iXpwCTSYRZHRDI+Y//Gc4ZDH1JsYuEL
	 UTrNh+dIoC/eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71A1C369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481439367.20265.7102425530237225933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ca6393665ccca5729f237bfb5f4cffa5f46b200d693886d036afbf7c25e56d
Date: Wed, 16 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744814393
