Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442DA37B
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717986443; cv=none; b=mEJm6jlo3mG9posKE0z7fQ7CUra+zYmT2w6H2NIDpKBuxllCF4WpkEEzi+aj/D4ijHICUOUp3Fo9uxLFrJfi+I/HDFWWml4D2hsb4632jm8CL8REBtprhM+hWrSNQdYKQSBsWfwS0LMaK/eoSRWiy2+ZZk8AaUl8hNz8+pONSu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717986443; c=relaxed/simple;
	bh=DywMlhkOVWiIyJX6HdJdII7u0IYl2B6ZZRjJG9hBAl4=;
	h=To:Subject:From:Message-Id:Date; b=i8itkpWXrZALg1PYGUeXskAAwYdzb04aHN0+YlCuCY+WQTEZGLlXsZAR0uQ9N9hgnJpkIiR4u+N525MJgPRGgIWb+HwaIZliAG81Sb6BcZYMSnAsC764Y6cEMuBvZQ1ZT3OOoJVma/KOXQwB9RqIVAHtHz7bzi90cLuuGEM1Bwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDEzPqfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDEzPqfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A97C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717986442;
	bh=DywMlhkOVWiIyJX6HdJdII7u0IYl2B6ZZRjJG9hBAl4=;
	h=To:Subject:From:Date:From;
	b=lDEzPqfuTaSeok9ALTpF7s7z5uquxv7xsz4C9U+r+KhICpntxjHPnhyXBUAPFqsGj
	 GScw5IY4P74b1V/9RUIbVvufXI+yP1eW0qobXIhc8YKbrQWZTjKOA/QT8QGX3xgr+o
	 wGREx39d5QLDfuZ1p8iS5wxS8oczdMfJk8YP9VQoCMdzDazeJV82q2u8hRmSbwMwU7
	 nXLvf+59ilE+u53g5NL5uYmT8PkgrZLj8ay7dZF86Qc6IwLqP509wV3aq5jAKd1xBh
	 X5SO+6DucFw0x8DX2hLswU+YoJVH+Yqz7ELir58I5emhQUdDaqR4icuxDm28ObB37B
	 onzzb1lswtsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD44C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798644277.17710.4271731114966477066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37cde5992a00a48e6a2a0ea6c3295379aafc77f69d80e838ba484a51b3549bc
Date: Mon, 10 Jun 2024 02:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717986442
