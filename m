Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F9830F546
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768929234; cv=none; b=HB28Sek6YFrdYkhAOygAaLNTWu8wQiipf71O8oxMJF4LnuennrbEClB0cJVgKTcSt9y7nZV2jbH9iVNZlAQ9lUf9RPBs88b1cxIh1c6c8tZKFGAQvLkYVq1VYu/wG5HWtuYBBMwEEFvWeXNn9Kbv2KGpnjNa4WHKInMiBe9BXl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768929234; c=relaxed/simple;
	bh=Rq4AuF3Km8vG9zTY0I+PuuKnnc0VQZcchL+fg6Ui0Rg=;
	h=To:Subject:From:Message-Id:Date; b=B+TH30ifz2A2QRHKkeqXGMVmT7hVxPhsLOD36Xsk3U9PzSmPs8xKRHfpok833NUCk3ygzS0093v9phVWz5BMej7Xpmcf5cHyqXj9rO+E7k79Ph1JGNu/28zC0ZL7dZpDyutVmdxLNzu2hFKWxfF8mMkxWrXdoe9+WBBwHGcgLAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fzrya+kg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fzrya+kg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7744C19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768929233;
	bh=Rq4AuF3Km8vG9zTY0I+PuuKnnc0VQZcchL+fg6Ui0Rg=;
	h=To:Subject:From:Date:From;
	b=Fzrya+kg+ibYRrtaHjj/9eoxRhal/oZEq3I41JYELWRcaOPrhVenWkR1cWsNLCZmN
	 tvmCnrdezcdh2y7eI2cpwN/Ar0WiB1Rip6dWqobcL0rG3UJaEH3yfYuAbLUCpuL0a9
	 WRfmFx8MITgLzAk5FqHKbcjIVjU7dqXvO3B9y2ccpMYBKdMjBhynlzJHZaArUP8Dgq
	 NQG/nexkncIqrQ7y1zid6cxNyJwzimjB4NQVrYkR73+sC6LK+3Ex1MZxutAzhZeUF3
	 GlMkwH8pl6RSgT3XzX7ZhwHqoCiOpGV4X/Cr9LUNZBZVTkQ9lgPrRBc3EuIb8lFprQ
	 0x98AFD0cKNFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F7FCA5FB7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892923358.8432.6297119188899560834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6021d0e1b33391128d46b4e95b25bb3a9904c6de40549da946479b9f754c4e2
Date: Tue, 20 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768929233
