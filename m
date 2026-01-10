Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9F950096B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768037634; cv=none; b=CyWV8sVSs1FAGsrhbn1nJ29tIzqb4qeC5YDI6fjK7juVp9nfIQ4SmNU8Bg5dy5OTa1gah0CMyeXWZs4UZOrhWzZ8pTY0KTLfobczT8iXaDtzgVCo7owkWGWj2RwBoPm+ubiLnCZCu1Wqs3bdkAHWQPU+2ho2556WslHrGHPWaVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768037634; c=relaxed/simple;
	bh=4FZQvMTPW9ilGadfQlRHDRYLGFjGLOSekS8AlAUt0Zc=;
	h=To:Subject:From:Message-Id:Date; b=ZdwQL5nBj2Gm/HCKeMy8ObuDkZO5mxQgUV4MUSGvJDmdleWLTupXbscIhaS+ATiHTi2TTBxVopHP5URhARQno39YG4mk61puIVZGK7SaLr5tuWN5ROjSdQ6m7E8HsEdYuD7LmvbG0oaTXZU5pf66wDMsqvC1QTEwTbCb8Yb11xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+NjSzgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+NjSzgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A724DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768037633;
	bh=4FZQvMTPW9ilGadfQlRHDRYLGFjGLOSekS8AlAUt0Zc=;
	h=To:Subject:From:Date:From;
	b=O+NjSzgmfcbnwCUlTQl+aLy8DVvvd5pH6BB56fWuYjU4nwK2jqyf5KiUl2d6LDRkG
	 UMPtiB7J4Ab8N1xjnwSYJNnueCK+nVlYFhXuo2LUKCTqx8LVPWybRuhCZ8QBZefWKL
	 heL04bwTD1wHG772WOgCLZws+HWTdw7Cc0pqGZqJ6K5lH3lnELKf0aKRcoQ1QohGvA
	 Iw6jzNZFQ3yCLDxI6CdLbR1L4btzLRQl2v5dfx57U1BJFDULfncYwrJjWOgVscjpRA
	 yuDGM7l35ih5AO7OScv/p0AWSUbXE7CXbF7VN1TzhaPjfK5DQWeYJjYTyG6G3x4riX
	 lFkKFvNhEfYnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B6DD277D8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803763358.29158.16260961857107401846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3e8292fc82d40aa3f3cfd8470033f554f996a0d897a9114105b84481545c94
Date: Sat, 10 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768037633
