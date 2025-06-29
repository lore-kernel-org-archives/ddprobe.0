Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAB1220F24
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751217594; cv=none; b=Pr8SbBtjG8/dp3GIAvhWN8x89FMqP1kyvunf4oa5pfFfMEYLIQ2nuKg0RZZLrHmVRNiYMBwytFF9tiFY0mAQbQv6wiuMscLBTNp9aA0N95LKfF5/U/VEE48rL9qi6zIfDsJGkre+E1jITZpXx6pUVZGziZcX4VbMBqSge+DGqcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751217594; c=relaxed/simple;
	bh=LArexe350v4bd1yHo+Fp5Q+yFMtHxSrERotUX2yF6NU=;
	h=To:Subject:From:Message-Id:Date; b=rWUKDR3sCis1+Zs30mdwtYCt9xzXPm3cor4Mw7V4/0JyzqvAi/fcEa4Tobi8difsEfXYgtYIoe8iUxH5knH0Cy5A69W31pbn0egQOLcOY1lbbF70y5ZN8bPxVLrxsyvw7U6xwCJuyC3Qb/CWRJB7Ie9MvIrOIIetjbwZ0ot0PIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIKYC4rp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIKYC4rp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFA8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751217593;
	bh=LArexe350v4bd1yHo+Fp5Q+yFMtHxSrERotUX2yF6NU=;
	h=To:Subject:From:Date:From;
	b=EIKYC4rp15tFOYzUum5qwKKH3RVs6ZPCRz85usvAK+I0jZBWHEqbE72esO1exTNwB
	 /++6K6wtzM1Ai3FmkSX0krr5Q2ZUhlGYQTYfp4CyB9MFOFUEu2PiQGicMPSM5tITso
	 RLJXacQZJVcJFRnqDObivYPF0IMWZTR6QY/cy3onGKec6iE5XQumb9yOaJab4TDc6B
	 RqalF/3pNZ4Twv5EHu6zulbi6VAZDlUGhFTksw8Oyx3f/AIeBwx5aURaOX+I4I70nv
	 czh/RpZs1uNqoiOge3YBE4nSPruCCmFvwskGROYY/OOQddVorO8Rbhu1Yjm1FBTq6x
	 bNLIPLiFOn+ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF5C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121759357.6394.13992608675625659486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c207a087f7e2442d248730b7c482c100d5110203a090a244f47a6b47dda06b8
Date: Sun, 29 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751217593
