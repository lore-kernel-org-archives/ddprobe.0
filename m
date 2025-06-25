Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486502877EE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750892395; cv=none; b=bbOgLG7gQNYbJI/f+GG9MiVSBw6CkfQg4KfZ0/pncl/wnxig7VpDUlurUWMcmi+yTi0zwSOtaCDk061mdfGOkSmIRwEfUu85ki+DODh/4lRxd1EaBmte+d0Aiwn2b9dKhR7WrAKrP8yBZJJJCEq0zwyg5zaVMBNIpF8B4J79XFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750892395; c=relaxed/simple;
	bh=wAzwUqlbpqrrJs3xVqO26JmpZB9q9KtfdZqe3/acbTY=;
	h=To:Subject:From:Message-Id:Date; b=u2i2vvLE4vXvtxTHDvElbo8ypvZ0NqcBnfqLKyuQf3KDyOaeJZm2oN0jnsgjw1mGDZ+ktZgD1eIIvglOHUqEGyxnn00hc701+KDyTvr1cRdd9aT5MbBDUazPVsDcCIRdMBx2k3ooIhT9VbIqFsldUfgx+hLogJ+7Xd3//i4IOkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8qiZSmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8qiZSmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D4C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750892393;
	bh=wAzwUqlbpqrrJs3xVqO26JmpZB9q9KtfdZqe3/acbTY=;
	h=To:Subject:From:Date:From;
	b=W8qiZSmGIMWt5vlOJjw0KAIa0Ar6l1QZtsPOQc9xg+2fwuVlnU64asaHZugDQwCGS
	 hDuRtAlNzzkAFI4pH3ENsg15A2dXjVe+jUx/NFZEjZFVmRAF8H44yPzXNtTEIoPTLJ
	 urTHQU/KzsgFCO8gBNWni+H2podRsFU1EumACkUvwbq/60S2rjsg/uyhiFTswH/roA
	 LxLU10B1sqn7wQKWXzmuee7ySvLFUwCFgmYz/rBYA8r3WNci+TEzBec8Jrx85zi+Gu
	 Llp8Vbgof2jQvNTkIcvdCDHzpwZPok3+9w7mNDdGE7PUKhWzMf1qs1TIMzHQhukEr0
	 QeR3NA5OSL2IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4FC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089239357.7609.13504630358542916055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321ea6d57413ff09891216ba405940061cccc0a48e1362372e101ccb733822f2
Date: Wed, 25 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750892393
