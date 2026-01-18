Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128B424169D
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768761234; cv=none; b=lrrjPnQJhDbQ5Xx4Yq+5K8Bsqi+Kv0zT7BNaFO97AcBQqalxGC+RiLOMm7LJ+vLLYRbKnjPGWLvRZfvkrZWSQ0ehZ53ovOkFRRPunyOfEzSqHqIN9OBe0kNai1O6S95GJca36EgMzKLiQSxBNuirOLqkUio+fYzo7KpqzC+P+Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768761234; c=relaxed/simple;
	bh=1abCJtRwbto66SSEGH53wIqgky2qHy40RYHuFQyfWps=;
	h=To:Subject:From:Message-Id:Date; b=EgO9ghWDUtyqG3pLJ5VzJtE29+eEI29nohtlY1npqaNksM2T5ErUbwvAk5XDl3gr2uXuFd1Q3ZGrd996RZnci23N6adsTLu3qlcwVe056FbcxYxlSsrjV+AIP5sZHitmMGmH2d+QBuIBznaItuPPyYhIGCMr9xxqgUPIT8Wcb1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyR6CI6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyR6CI6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF0C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768761233;
	bh=1abCJtRwbto66SSEGH53wIqgky2qHy40RYHuFQyfWps=;
	h=To:Subject:From:Date:From;
	b=NyR6CI6BUx3xuzoEhtoW4Wq276TPwhHT010JANDfk6lyqqJnySP67KnGVmBA9LSrH
	 r41q3ZU4l+xH/lI0y1AyyIy+swaOYpP/s+FpG0IrQH3u+iVFwMcx4RzIObHPpVrkbL
	 2u3gic1CbbnzCze2XDtmfD9rHlgJpUVeMH0BaFij1SvY4vY3azWcDDq4QQvwzVHYO8
	 guXRE9PoMtrcuqykFcR10D3gW3UP23+PHOrstRHZv/HcIdTi+L/lvXiEgOFIVi/u2Y
	 eI71giXnIGAl4I9qwydLQRboDnVTNG73IlarHmTC6WtXQCazSMTReq4ZN2xwzei1qG
	 rsGSkQcXaQQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324FD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876123358.1004.9541902225203146272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a983b34767530e877eb83bd051ef8453757e551eb7d76b40e3be749a21ec2c17
Date: Sun, 18 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768761233
