Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713126ED4F
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787003434; cv=none; b=OpwDwG4Ffg7RBazFk18dzKN2JZe+QtFyjO2uhKB2Op+ROI7sESBuJxheqmsjbW5Df+ZWk6ZqSvXiNhpqWDf/8GcHaP7A0dONKs0P6rXUdG1QLqmtfDe67f26Mw4y0V1G+864TUrt8gcC1yHPpWEhRtuzppEWXybH7pOy09a8Yko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787003434; c=relaxed/simple;
	bh=epslonkFms8Fqbfrjah3eMmCV/ZoRIzXiFg3nNPjMfA=;
	h=To:Subject:From:Message-Id:Date; b=tGCPftbvU1mTf02Hr9VYfJngAng4yJ0Mrw+lRZhRMorPGX59VBcym3NocdW4Nmk6dV+P+565erruYN/r04G34i5X+H832MwyRWK9FJyi0VXpAQaB0S0AM39xiJeH87tQReEPsT92YMu4jGweRd6lg/kxMu9j/2I5w+6DULjwS/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuVSzoh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuVSzoh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13B8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787003433;
	bh=epslonkFms8Fqbfrjah3eMmCV/ZoRIzXiFg3nNPjMfA=;
	h=To:Subject:From:Date:From;
	b=cuVSzoh1qU9o8u286NZwnEWLpgS9xeT3KiePb6q9VnFtOXda+NsTpzdX6X7eCfTzY
	 0voLsadQv0TYUUggKaVZn48Kuvt/PD7SuMzlk9WBoWYESYWZICmshVRSyMg2jSWE1M
	 sXC9B1gm6+GVYvwp9VWM2e25QONPOKOF19j5/ccrXCw8WAIda1w5lVH/JVSm+p3Qzk
	 LojWO61wcVpl+rrLIhDVck8x3CjGYvD1urRtYy3UVUGNveV8SYUHGJFOUmol21w6lO
	 wjPylA02Q0vYgxdUK3GHHbieOmpI1JKwtg7bF1YJk4QEE6EILMpmgWlc5697dyha/v
	 EiD8tjy0vxjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE0FC5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700343369.30897.9401821554960643747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299ecd42312d32f069e58d8a04080e9ea68f739394ca45993154982680544a4d
Date: Mon, 17 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787003433
