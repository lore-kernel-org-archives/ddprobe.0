Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42ADE43AB7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745059794; cv=none; b=AxeX5AT0k0U75hqeDsRUTlpDsOyszj9Vj2j/s3KFCP3e9qpWjbqHjmW/EJyTi5oxUfpZfvhOGqGMRZnFogs95SP/0KFSHKkmCjOuLVvorqYG62zya10tqRKKtZcXPWjDQKZgYC2yr048O4Y/9REMGljQxdm7jqTITJ2niyGiuHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745059794; c=relaxed/simple;
	bh=K7vzbBNLlhFAuP9GlZjMuGjnJQDI86BBEMF6levPYD0=;
	h=To:Subject:From:Message-Id:Date; b=WhdfdG3cP1yzINEis/YBJjZuNgnqjNUyX3Pa0FlL3HTWG2Xh/wHuUKwv5iaUIq5uSs1v1ccrCA/hVwmswDFluSJCjAXMaNSm2AuEFY3uzRhTmgh8VUu8yiYMLkbH0PGyN3lAo7WuIbs9ep4zBAAWqRM4h/xV2XvjhRXUr3ten0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qs2DTpAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qs2DTpAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC663C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745059793;
	bh=K7vzbBNLlhFAuP9GlZjMuGjnJQDI86BBEMF6levPYD0=;
	h=To:Subject:From:Date:From;
	b=Qs2DTpAGKawoSOODyr85A6kn6Uf2uEJdfHb4O1lzK2nbyNWkRauA6/dBnEYPg/nlz
	 QK+qk+NY3aUs6qPnwThdU3UsCHdrOiP47fjS7DOEyJaIuglnAfoLLt9pfzoULY9vMf
	 87mBvsyWxTMkDkLAdBCU8Q+88jwocjpo7uxa3FTCYEr5FoM+rrP7YzUqS4rAVaUZRM
	 Z0q68CtL7PELyHRjkfdRCpqP4mRDt22U3cwnch6PUzw4pLgwbNYEPEWg0a5rH9PTld
	 0PpbVMxms+OTdBhKs7yCpVX6akBYmtQwoQjRZDqL+fu6J7VtXwq+h1zskzMRJfh2Nc
	 lhbIsqN58UV1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D18C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505979359.8213.505952722152034704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb6d715ba36bb5147ee6f535f9742d1affe7e6d2662db62c399ed93fe0a8792
Date: Sat, 19 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745059793
