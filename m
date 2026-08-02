Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3163624B3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785670234; cv=none; b=hyyhGjjpzEeWTdkiyTCB1s0p5F3NW94KtJjaEBzWiabHn4iPtfuHW1BbzczBDv5ovWVHTqVF/MsLHEIiJRggt8ajRHWX4xdDPVuVigx0UV79k/plT9WkTsasWRWp3cROZZGPHCflZLhdDLo1df5BpcbjrNQKgrBGYDTy44ZnvV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785670234; c=relaxed/simple;
	bh=BYSkuFFmfPBhUZfCSwiYs60stbX8ulGV6YAQEdfl6Q4=;
	h=To:Subject:From:Message-Id:Date; b=F+/Y7+o3GHQdPzZ/fePdwGrd0J86yjSthJ5uWMAEqbOHtz+08Ce+F3YT4LJLNakFVXUzfnQZMz+/zWHM7ke4l1lYKKXncbgpV9dNvjgZpQEtu3+P7CgVY9AbRxYiJ7gLv1i11bM9aNBwpI2Z2dDCJ0nRPd5iKY2qN3UJ+9wo0Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkG36HPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkG36HPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31CBC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785670233;
	bh=BYSkuFFmfPBhUZfCSwiYs60stbX8ulGV6YAQEdfl6Q4=;
	h=To:Subject:From:Date:From;
	b=YkG36HPfEWRhs4xfbYvYy/qpHPwnBgd45utzwFTVEP65xN1FMhnqYk6xVVeKfNWxW
	 j2j7yknZYr1U5XbdWY2Zv+mZXP+3LCh5lK7zi1pU7j1XPQDYsIZmdCadgjYB8QQOYx
	 oOxPQYX1JLTLgxX58mtZjxoIqGhAzrpDm4HjqVj/JdVhY3B6Y4mKfHh6lXEJxM9s5a
	 MW/jUU4RdOpC1YhfC2FtWOIw4iafsIMA8AUhUu0UNNM3ZyGsHcF+uCTEghpQLNQ57k
	 l96rNbPfjtcQoIbLlkMMvixNa060RtVSmPThiNiqLcxlcqWLBh2Qf2T6NdG+J6nwMJ
	 AroEjUR6yOUag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC110C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567023368.13733.9395455587315981991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920457342e4f2adf749b3c8aef1a6ac8066834664c4d4cecb9934cda8f5db757
Date: Sun, 02 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785670233
