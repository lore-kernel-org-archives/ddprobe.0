Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F58B3624A5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789204834; cv=none; b=oE9Ua82ulLb3e4SUUfgWCpyzQwZUl58SWdiJnCuzWCoEX9O2H4XlvAcVaXc53iU7wvX9QMyk8QuzcPviljouBfr8MefFBqAqPWLmPtGAcNjA5+WH5RZMBU4GC2d7VrWAN1nZYNOIs92W17kqcr1zfVfw41SpJEo0ioLqCWJIHo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789204834; c=relaxed/simple;
	bh=GX+mi9cEUZdDMD3fkPod1Y5MGUQ8h52mfuXDFFRVlRc=;
	h=To:Subject:From:Message-Id:Date; b=RqnLoLWXp7VxxtOYUUKrcWtcXx30jE2WgTDe6zyCu+EuRVOgnuR5kcUkc5XTidyas53WvJV8w6maeBLAS7i2BVT4QhoYQqI3KMAShz5SAEC+i1O6A4oAlmtXXLhOpuipAfZGKpmHZB0ksqie5AEcJZpNtVQkw33GmaXNkEo1c/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdJwVHNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdJwVHNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBEAC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789204833;
	bh=GX+mi9cEUZdDMD3fkPod1Y5MGUQ8h52mfuXDFFRVlRc=;
	h=To:Subject:From:Date:From;
	b=KdJwVHNsoqE7k8N60yJZ6BIpn/fam4cFgImlJDPnRR9WI6G5XVBADhVMNGvKtgcbg
	 I1pHFESDAOe20VmkiImIyFAug7k7dAwwPp9Bxc44JKm8y3GGPL6cAgmp/w5NTPesf2
	 537enTHeaSAtHSi36Cg5X8hVFBp0qEVy3O5ms/1dY1RBntaFJLTSpLZdQGaBhY4qji
	 q3DDXZ+D4UWM5Q2PEiqpY62P5oL7xfSC5kBigiPRKnx0BL+MkdHAU/+6ZKAdn3TFca
	 4RSAhyQ/9iG8U5R++pRZ7HOEdqz5mgZ+LgfRUiF3xUQxd8PnF8ZSjE/GKgEaT3ZMDR
	 F/sPwlpu0Qvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA08EC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920483368.19319.4154747655591906306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd0d14b8de35cb78c73fb22f5762f0cc314703a5e5a0da842b87f9d5ce839ec
Date: Sat, 12 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789204833
