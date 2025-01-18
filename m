Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAE216D9DF
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737211554; cv=none; b=G7PvwB6iB5XDfgcHI6ix80Pa8vVKR3C1wxoOJvbfivaY0LGQlvGGHIa+1+hw0I8bODZMnxxT8rvrQSw7GVFdWQTYoXnvfRD3SKTUCMfLLd3WlO+FNowROOtER8usAnDi6JChl5FyTMAlX7OLkoxJHxjkAEpNFBtKxrtWr4hKwOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737211554; c=relaxed/simple;
	bh=h8yA3bzs37ZqMuxxlesSu9PHurXIbqUMJzd8a/dqG0o=;
	h=To:Subject:From:Message-Id:Date; b=sFov9d7ODUfhiCtthdE449+LXzh5e10rYWUHuZ6TLtpjceWwZTBtOgxMZByJPJEDr07cbwXXJ3iHZNs3liM4mCeOr2aIoDi7DU3PFSGJLbfOP67TiZNs+oxJuO41H9ocXnHnu/XJi0Yx43oVLGZwyT2lUkPfTXFt3hOBoKAIN8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN3sglBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN3sglBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61BDC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737211553;
	bh=h8yA3bzs37ZqMuxxlesSu9PHurXIbqUMJzd8a/dqG0o=;
	h=To:Subject:From:Date:From;
	b=ZN3sglBx5XQZL4gGtOR3Kmakrw6mCtrbBlKUjNliP3YoXYfeyWuXZOgxtELehEF3x
	 +ISvJZFOFjgnC7A/24VAIQTnBcdYKdo7jWKe2PnvCRe/xIPWNNsqF3aFvovtQvIJua
	 bIq9BnprVskKoFRarf6Aql6bHqfNAfFqbGq+lwoN6kc2UYge73I9JJzx3zDUzmjPNV
	 LUqDVAtHL2ho80qkW6XkJQd+wXsh12QQvOllAh1plUhg8+Pi9AQMjp32/UYyjSlnCk
	 Uz/AgyMvNpMHTpBakiQxYb0m2CV9SF9JVIdh1tgWjzpjWhit27XmKiouDmAqVdXJmI
	 1pUliXg5OP0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868BC02188
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721155361.2008.12892266419434515236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebbde7aa214f8c2daa2c9f8d2a17534dc46981c3e8fa6edb790ba435fd1d2d3
Date: Sat, 18 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737211553
