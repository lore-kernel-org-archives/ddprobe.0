Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AD417E4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747373994; cv=none; b=ehSEfsGxIX3+Tu0oWCgdB+VSUSQOuESY4mQfCOLSiMDDNOp6Sq/ZX5f7GyvOi1JX72HlGkOdyPUw2lDIBi81P6iCL9aryvp0m1ML+6DK+Iq9GY1sQGDskUveot8DQXMH1LXpS/N8AD/zVCcOn2En5SOIR6L1QWDAV09NKo7ZuLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747373994; c=relaxed/simple;
	bh=wWhIDvIqFhSGH8UE2JdWdrX64xyNh53/4YuWC0zNNGo=;
	h=To:Subject:From:Message-Id:Date; b=g7blQS0y+kAsC7GzbzUPe1iu0HCQ/XOwKsp7lNi4MP2miIC4Kf56R2DAUmBgUiMhlfi3ngy+T8ncCJ1IJv5futMsXQaH9+RP3JlH/YjAfoMTllzDUgG3NYOzKp0vZ3YczcrxlrIsj7xhVoCaLUXIev29BE5KzDMjyajcolhuMdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHf+rUrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHf+rUrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF61C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747373993;
	bh=wWhIDvIqFhSGH8UE2JdWdrX64xyNh53/4YuWC0zNNGo=;
	h=To:Subject:From:Date:From;
	b=fHf+rUrWbL0jBRoPUJx9ZQx1E86aUvYNKw6rD5FNryb2F47PwwesKvbf63z6vvmsi
	 d8HM++nVeyIDWiaIwLHBb/YTnzPsMPEJ5KFgJ31dk9qwpJcEb4kI5CkNKOY7ABDAZw
	 TyVVwgDxqXF5rhUuu4foMoJEbGv+6DHjGwbsj1EJY6n+SBY8G3KoHpuGu00ocTkrju
	 5gG2GCblcTUJfwtcavP0h9WJ9XRRNuVBVcXWRVrH/RNAVvBVUFDn5d9CLz2QHQ3ZFd
	 lSBM/kgikWDlx3JOAPYKCNDZZMhggnjn5rr2s+1alknwIE8CJZvY4LZRBrWzjS9SX2
	 zOHn4pVDsJ0sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E939C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737399357.28446.7706465620974619735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a26b27165998de8c8ec49be7365def657aeb7affb999a33db675c3da65ca7a5
Date: Fri, 16 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747373993
