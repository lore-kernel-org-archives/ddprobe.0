Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B814B563FCB
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792001434; cv=none; b=B+mYvPDgBngew/Bcw6gg+xy8hceWYeH+AHznl/cOrUb/rJD2eLotbPtRnbK0nPF4oRyxUqnURCB74R/U/e38J6NDGZOnJ45bJ84HXjMGGbKeIg9M1QAokOP7C0tX+QiX6PjOF4tyjrDAiAO4RVsUMnbSHL6xnkX5JhhdjPVmIQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792001434; c=relaxed/simple;
	bh=be9zie0+FK3FWmFkpwf0TGiiW6Mfiszargjx5REZISg=;
	h=To:Subject:From:Message-Id:Date; b=JweEDRQXjO45SJfQFNGjIFnbwkXeddvNsR3wsUh9mMTe0X8WLsCeRVbPkauUUd5MogWsqYoc7V84iOlD2jgQqiAhkBC+uPaQ6n1rbbs0/sDNLr6BbFkwPNVWE4B7Vp70+RhxpYyWOUTsSSfmwbxr4VbP402X4FwmBj811lxqLK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLiyap9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLiyap9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0413C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792001433;
	bh=be9zie0+FK3FWmFkpwf0TGiiW6Mfiszargjx5REZISg=;
	h=To:Subject:From:Date:From;
	b=tLiyap9NX+zAvpKxm91wpyrH5/l7gE4eBRnuOSntOG9yRqsmahpPPvUKloR/nOZnG
	 I8Fd50lg1tLpL61QdogNfLqloM2ahAbooevw9c0sPVhdbzsQ0clgceVZkUBoenf8uP
	 HA/AGRlDzU9ZCoBBo0Udmo941gM1uo48IsP/AiUuwImd9sMY+twSPXxwA1d7r0m6TG
	 fg1q9G9s+IkxrysBo06NqvPoX752mSr5B4hpPs2knzmqtp+fhTbWCiy9KF7J1puUNy
	 HuVaw/0qUvm0LRAENX46QWherOgfz42qA9RR8M+t5rYUkf3XD4ongKach+aIf2nXuq
	 0WoVSRnOZ8Aag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDF7CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200143369.32458.9289990480121248541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d525451e468a923794707a062911be74e6df4c9d5b69192e86a1fa17accfc2
Date: Wed, 14 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792001433
