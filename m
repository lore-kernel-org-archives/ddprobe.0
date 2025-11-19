Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8593254BB
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763540514; cv=none; b=rbAj4UDJv/Madp1wpToZLPuJxhwM9U435M6yjksVvR4oWiv9YdJwr/vIYBbotWTEhJJ2Ir11eyjbA1snGPW16i1tIAu3SybAwjHNop9mbSDIlnXRDrj+pM0h3jigawraOV+9oO7TukSCmMJMcLa9F/ZRqsMViSpefE9zSudMUEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763540514; c=relaxed/simple;
	bh=UVFnl5OhCKVAxgycLVVlk5F42EciRmrrpNydWEa1QhE=;
	h=To:Subject:From:Message-Id:Date; b=YuxfgARukoFaWhiKiYMu9hrNBXAaB92xDn2sA23b4JGkqZkAEHqrLKkRcVZgon2ewPsK5TTWh3nc/HkkR30/ecbPH8S+2wtX/8KxVh5Lh4I2ZP/w55rznZ0FJ5RdJpAR1hsffSIomrlNL5OpeqhO2AjeWLbrmWZcsjiR45FYRZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2Rhi0FK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2Rhi0FK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7369C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763540513;
	bh=UVFnl5OhCKVAxgycLVVlk5F42EciRmrrpNydWEa1QhE=;
	h=To:Subject:From:Date:From;
	b=d2Rhi0FKXnR/ayIfD7JEsKAxAFJZEAurWBV68vlfUEFURAXgMpRckCj5Iu2HKjXw0
	 vensK28gq4Sib4QsIuI3z37rwycKN6z1J70IYrlaTqVY4AzwKMMfgkkT1GI2XHiAoC
	 ROdezHaRhEQ9qkwKM7vbsXqUps1/2cClZhbnikP+E4fvxRJSGYIpeW4DyiAxunC5YM
	 GbR96ULKaVAhJPusb7EbkxRHJZzAfX5Vl/yinkNQFWR8w6gN+dtK1RpyJ+/TiiTt5D
	 TXbK2TUryx/FZVk8SgHvseUa1N6IK5iU3lIBpGLGqqnbwc08UTaNg0aB72bvtnxZXr
	 QibJ1Pt4kenqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96652CF2599
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354051360.5722.9828840949490199396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f69f1f1c8b9f884b0a7574af653562c3186012222e55532057c374a385e4c91
Date: Wed, 19 Nov 2025 08:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763540513
