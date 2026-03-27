Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1342237998A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774650294; cv=none; b=km2vk1M1BbUjH8LZwuKQ1fxbGuZ0yupaHRXg6FsCLIcPRWLiwRkwGZKCvgPSWeqjJEXzEGqYmQegvno0UbCAp061Nr6QbKwTBpJd3/2QkDVs5c5ba5+cB95Jf9/dTTRms7oqV/TLQbM7hxIOQBk0v2qoePa6YipLBntNkkcXFQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774650294; c=relaxed/simple;
	bh=8XOublVTvV1/lJCJ7z2hBIj2CUF+LR41U697T9iysVk=;
	h=To:Subject:From:Message-Id:Date; b=JB0RtoYzL1QAuQhfPPkHtTficuuGVJBr1kuBIoAcHXSsjJ+bB8EpADEa46Ux3PHxZOKITREO6BrC3f+cKtOEDNfW5/+uaPzFmEj0RSNcop3s6MUxTDO7ALKQlEYzmn8T+8ldWQOMvnAyKiVN56udaDQtlt/PbZI3sVRNao5Xqo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONzZp13C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONzZp13C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8857C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774650293;
	bh=8XOublVTvV1/lJCJ7z2hBIj2CUF+LR41U697T9iysVk=;
	h=To:Subject:From:Date:From;
	b=ONzZp13C58bjmprlmFj0fsndHEhbNkGnw1SPCdSrJ7+HKSIKnhYV3CiFieHrthOuR
	 S7tU8kQIoPlMiadJidrhiIO6ySGlDY5NerLodPI4bfVrXOQKvx5+yNYtJPWhz3a1SG
	 38GEyADb/NPhLM/Byz3szejkBsLugkdQB3HyCIkZ5qWr6PLPy0jjWj7wz0TqDdj4m0
	 2/zGTILx7/mlXNXf+MLWx1U2PgpJJdAvCwHXtPnRPGlJSyj8QR6ejnUahfVAVfh9RM
	 Iv7bboC+zU/otvBu0dmFZHVcZj40uK2TI2FiCquC94okcum+6x55zb6VliJCnEkD4Q
	 lMwQfJPyZABSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A553710F2865
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465029363.31548.15031943566574738785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d4123549cb9a16e03fa690a40d5a05130e366888b4fa815926ce82c65452a9
Date: Fri, 27 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774650293
