Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3137F1FF1D9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744477794; cv=none; b=qFtdP2vswPlq8+U0S3JGD/dhctW5yD3YuVcp+8YiaxslFJ8DHMaK1IC58XB21dzX+kA3voITmpRBSoP0444pKw7A7ZRk0KVSCYJSSJe55HlOBU0Y60l/r0yolRlqHCI+Z48lc2vMKCKIOjgOWE8EJG3qQxW2IR5O6OJdCmPCv1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744477794; c=relaxed/simple;
	bh=Osa4deRi6njhn26Bvj/dpk2DTEhEB44wr4qnL5iT3qk=;
	h=To:Subject:From:Message-Id:Date; b=Cng8lC2z2gtXpUTC1ZfMO09WuupyVI8j5iir/IpNRIBKGsstrI2/Fs6SKSR7KfJqnfPmnAYFqGmk88rW2bckVEMpRi8UOR3QhYdGLW3mwSsyjXbt1ez4brrIY0J2wBDWcSaDmOFOnJ+sbU0Rj3ajdWNNme0Kg7UhN4PfdoyLUyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CO9kojZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CO9kojZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744477793;
	bh=Osa4deRi6njhn26Bvj/dpk2DTEhEB44wr4qnL5iT3qk=;
	h=To:Subject:From:Date:From;
	b=CO9kojZlQ/bMamfNirwqvjqFfyoYyq3ML6H29mAZ5S6GILOuh9idt56mNGdwdtvBr
	 zyZaxVXia69uSNpJKjbpzqjZ/NI8Z+mjxRUgz3XL0fqgU52ogXL+qWzJ330loMyDn5
	 TMB/0jaZ9vZfV6dagauemt2kWlOOaJXPYNMeVQaEn7TcPUOtzo6WCCJAmw/1dXPK3a
	 CH/HpheZ4nVDX5YCeU8o10iFfALXZqbMB7CsFonkYpM8tvTHi713w4qqRfKCrf8Ex9
	 SFNhdEdMuZ8g0PmnXjJZIZhJTDyzs8lVfY2thCmFaX1bTinhtlQZRamRfFF5sazZrq
	 A1GpWRumL9yzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078FC369B2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447779358.31627.1128942715335506792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5567e8d28f4492635ac3ee8f7e25d8829751381780de87e29195af5e8a41083
Date: Sat, 12 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744477793
