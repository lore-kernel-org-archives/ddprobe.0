Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30830298CA5
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778982634; cv=none; b=KOuX1l0Hg/w6x2LADg8iUW3wDCpm1Gg9ZMv7LTCfAzsLdfxqnFU1kRrOlTYKOzpCk/HFTawIfNzLzLCO6ByI7/MX3HSer0ml2YmQ7LSvsVd5+B8k1bCrOP/BvUT0ht4n0GMsIz5YBjORGVquvv7FFqgfsjAoCXMW6VezPPvM/l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778982634; c=relaxed/simple;
	bh=E8Y34ymDOUtCzaUa6qefSPKpsn5IpGrI/OuNqtCB53g=;
	h=To:Subject:From:Message-Id:Date; b=MPfG5p2+m/++iOavklQeK0+y0JO++IV0boDdi84Bo6OqpQ9Tm8fI1vj988lkpRZLhQxh3QY2xM6nlCwZgK2BIKU9pVP8l7pjuJLJ8QdQm0/6hBgGybwZkRGWVWt715Xs3cGUcr4ou8+unl8xtD4miZf4zYCtqrutpFC6/PEt5ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk7Sm8Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk7Sm8Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3FDC19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778982633;
	bh=E8Y34ymDOUtCzaUa6qefSPKpsn5IpGrI/OuNqtCB53g=;
	h=To:Subject:From:Date:From;
	b=Tk7Sm8BdFLU2IpBtFj8F+UjPORAyHIf/K8Izw3As3aT9kCtosXEMqnasKa2aF6rqL
	 EbqmUkdT8SCLLCVGepY625eCnZOvTHGB5vIWkM8L6nY3TBcdUeeGe7V+4kXCYxeR+X
	 Y8QGs65lfzCPCOBiBMMbhTxO2lOUbzzhbEFKWIXn3rMFCw/Xc5drJvxAqq9AGUbiri
	 msZ52Cl631tUKMoAfmVg+a+IuqvAXaehVdUB7rr92po74xjcTBfZtcnhVCYJ3Wejat
	 Jc3uJVnSx39AkL2UdgWFa7dFu19MXWcif7UpvB47uNC48C81wExv15BGddHoP+OTGG
	 JK+SqpU7ud8qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA283CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898263368.20054.13620009248117207120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5935b06d3b7e8e38033d275682387dda44f40a94f2853f3f62517e119ce7a7a2
Date: Sun, 17 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778982633
