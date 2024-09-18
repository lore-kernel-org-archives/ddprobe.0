Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F9C17E011
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726655754; cv=none; b=YlWA7lUaP1aa3lu7nLbnmM1DMsktiKC2myAgLX4eo2Guh0LpQBWg2+CaXIvqCAct0qdMO+kYzmmI7uRpzkZW8ukdXQuZAFgKDUBxaLl6HiKV3CdYLdm1h8kVZBZUy/sPFn+NFx/yipvy3MOFAQYt2UFLLbUlah9bUIR7edLRs3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726655754; c=relaxed/simple;
	bh=Tl8eBYBoOthRq9P02kohVZnEX1WuYcXRFh4apGurZQM=;
	h=To:Subject:From:Message-Id:Date; b=MUifVhvnnmAlHk0oRK26hP8HIr3gx+EKcHdpwFchgmpa1SaTp2t+b2zMYH6MlTeGhDG0o7YvvbVXOqKf/upaLaf/WJuHb9jc15gzVnTLhWuLXydFoCnEZ6QevnFErMRdD/gCDXXHKU7CTq548CXSjS7KeclbGOSnkMoTsR2yLe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF5DfKB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF5DfKB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B293FC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726655753;
	bh=Tl8eBYBoOthRq9P02kohVZnEX1WuYcXRFh4apGurZQM=;
	h=To:Subject:From:Date:From;
	b=NF5DfKB0BydUEHXaLXntzrGpcPLIuNGVv4SglS4et+fUpIfiAi/G+mCaedfgSAFeS
	 3/FBM49u/8V+3DWvTHFQW32zRMpiPMMw+E/q5Tt0vxb1N15CVYlqokILkCIV1hPKas
	 evM2l7348JiR68QmO44n2tjuF2S3/L7jw9vyvOOAhHfkxAYVlDdmihQpAT6XgoqLhL
	 xIWuHfSBegALbmWbrqp/xWMEcldQpElF+7+06gN4L1IiSL9iQoBAd79ki6qes2Y+Lx
	 fzH9AsfqQfOArf3xnsojHXGsybZ7RiW6NJ2Q/vo3OuQY72fZP+UTpPIwxL2RLkzDyG
	 a5SDEs4+a+0lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4EFCCD197
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665575363.10397.5881359615782087909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d441ec60e69152214581a2e2349962542e252d28e917237837c10865b65912b9
Date: Wed, 18 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726655753
