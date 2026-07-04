Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A5E38B7BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783144714; cv=none; b=mFRYZu46Rrl3EQD3b+HEZbdOpsV6uEcYLV5+MPcR68s5JL3HnqNGwcuNg5Go7B2vNg9URfVeeqgy0KxBzfRL5wVWjzHKY3riu53GZwPPsr9P/YYo0u3QQT4ENZVTDV/wViFK9OXg3Uk6/iAvvSArRDW3keAlDV7x0ycuOO04k0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783144714; c=relaxed/simple;
	bh=z+lbFG2H0bXV3spgQbgkaaXOsmTGZNKCKm7CUSeM4ZU=;
	h=To:Subject:From:Message-Id:Date; b=tk1sk86+/NGls2aXBM9SQwlUqSWY6UMwdxUv30mLO7LzfMRJacxXItAyd6tg1oM1d+igb/2C070pbwYf3txs7AJ8yQ6isFcfo3o9df6bw+qlILUJyrDd64wDvqGEADBHvMp/jMFIt44zDgQqDwR+WZZeVqN9vvjJ+AwdXaOWHHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQaqpuS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQaqpuS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F85C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783144713;
	bh=z+lbFG2H0bXV3spgQbgkaaXOsmTGZNKCKm7CUSeM4ZU=;
	h=To:Subject:From:Date:From;
	b=sQaqpuS32XdsHXj5FHE0B/7kjrGpy5D5aha9spZfLBqsuC2mJywigPhqx6Knp70Fi
	 oMTgt3JzXF4QJo4N+6wKRKdhRpqHwV3Jy2lhzs1wonv8WbUXFrY6+GW3VJEZ3xRdCu
	 xAP8ScjlnxqFTp+KDAi/zBAhdmLVbf07RAcMbqRYYn+nAwHReGuqIStpApGEUe0eCH
	 o4V6aUOC85wuzhMFJbnJ84gJu7gvfBUMgAcyAF8fGVV7022Y1fAkKqvV9sjsZtaTAn
	 BjKCPH8UktvZtIVQF0pQPReXRIeRYzCd448QXTKEgtxAitEJN5hj9CLZGeC+fweR7S
	 z01wtycXRmTZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F8BC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314471368.13260.8678478089872205805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12d33a49c9f57d73be7c694105b1fbd88ccfd1bbfe7cd3afa510564a580869c
Date: Sat, 04 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783144713
