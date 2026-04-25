Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB49D36B07C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777141053; cv=none; b=B5y80bNd4ParT//1GZCnIso9rH51jVtNu03E8DoZs8bc0wRd27TBTQlTwz28Rw+JJns7VT9OyDVbs10kaWwnKpdXSJO18tYClW7xsDH8yXF6kpPLe4LGhZTadH1JlXlrGPgtC7H0fgHwgt5IFWN4NdNzYmSuvAqp8zWvSWH7fj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777141053; c=relaxed/simple;
	bh=rXoV8UuBKmfXr/CwxUjWZNMCY3ZfJ+98dJ1l7vvvAic=;
	h=To:Subject:From:Message-Id:Date; b=lDP1vy7YppQWD+FgmnYMkd/ruRUx4t4aKDk560Y76Y2S+DBjiPDm3Fp8F2pG5YXQYP9oAKZPY+JRkLsM1AacMne/+Sqdn+Ymff3SBnkP8Lol4AID3qXozkwb983234fEYdxQA0Ka0qBipytEolIPyBDryPL2k+HMkbbuIXHXp44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1TU1bmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1TU1bmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8BAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777141053;
	bh=rXoV8UuBKmfXr/CwxUjWZNMCY3ZfJ+98dJ1l7vvvAic=;
	h=To:Subject:From:Date:From;
	b=X1TU1bmD2KXOHiBDV6WuUYlm1F6k3o3o8RJqD1+DUs6gPN1mDdlTXx3VyACfoGu4A
	 ew1o+hA+sE/LE+CsnpxU0axT7js7+SX0O2X9EjxSqFvyAK0VwvYLUcyZWWzD2K7Qxg
	 Ts6vFGhPknL21Paz8PNWpg6bWZ/0FJAl7KBFBUqrepVW707fjk8KZXDQCAI2UOG7yC
	 aZ4qzBxeC6grqbDZgyWqO/p43Fk4dBTqUsW0ZCb24uc6Xt/1nAcLJo7Sg6CjMzhpC9
	 uOcGIO9Pid49ZemIyAyjzVmUVGkqDzhss/bioUjo3fwH0M5vY23ftOzBAJM0jEXWTm
	 T44YZcLwyfYEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF31FFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714105368.25918.3564228332462085220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f415732662f62733f1235847460cc88471840a4b5cc346db4ff1cfce7c0e643
Date: Sat, 25 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777141053
