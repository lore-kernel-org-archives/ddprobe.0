Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE8A46C83A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786629634; cv=none; b=Tz/ZI1XYRGs4jysb0h2H62Ym/AcKdgLKR5UKt9MtNkjyuk9Bv5O/QX008+0XsJxsrN2k1ckBhRfNaraTjTIo1mc0nF2PLw14PYMEiYHgRdrLGIJCgwot0MF4GGirA3f/RDspNSRKaMfXVgraejxZCCXixG4DNpP2kyRMmziQSwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786629634; c=relaxed/simple;
	bh=7iy7jwToPLKtEnzMTErnyjYIB+2ZTrzYtkV+e6ri/kw=;
	h=To:Subject:From:Message-Id:Date; b=X4tHmJL45S2soXwxYtGhB/mTmH2X7FpsO5poge+b+2rsoFDHq3/ywBRQA4+3KT+bQohyMi6p57H/9ALZLqasPXuAl+j5RqxRz7dRQcBP+0Rau3xGMc8qmOTMuy9QJWN5a97W4oOelS4s3wShVnaX/H3kZoRXyOZKAlrRAfDbols=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4VD8Ser; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4VD8Ser"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD291C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786629633;
	bh=7iy7jwToPLKtEnzMTErnyjYIB+2ZTrzYtkV+e6ri/kw=;
	h=To:Subject:From:Date:From;
	b=p4VD8SerJk0mM15+qUGc3gk/LJQVVjS5ySspmVqJmTyuzgDKcp0lDe+1m5ZOxMHVx
	 afPeWaHdqBfRRztKS4PwdY41ejfXBj2DygR/LldWhJECk0dm4W8zaHnNmV9ycjqHvP
	 kjBvnNXOKdY4taBHvXYuz6AzBa0do4sIkILiKXiuqovNYIkHThGDhcjRYGYK73PpQG
	 g4p5fPwXdu7AjVfRFDVcXjM9axRy80QX2Me04gicWnKrRVawMrmJB4ek5+39JW2u82
	 ngWr+1LF3UkkoxZq/LvVQwrszKlFGkBHFVgc6ILj59mIme/bozwRSE0MZCa+fLGydc
	 /htGpNPjRIpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A884FC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662963368.32735.12432262108385105631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06237f5b90001f5f828d26bb91d1a1b69612b7ff76b5412ca9aacd08c6d1b2fe
Date: Thu, 13 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786629633
