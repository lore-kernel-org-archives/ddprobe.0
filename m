Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05006BB5B
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757771993; cv=none; b=HsStvPWHE9m+xMQiXnuKo1nwgm2RyectCMwQBB6e4P7D5TQCBogEAVZMWU6jcpLjoLbSJBEaNP9uO7GUSgTIytTBR1jFgNbOm4UhNTHTR270v6e0uc78Xh2bO7Lrh2OKkdo9xO9UXVm7Q5HHdwyCcu1aJUfU/WA06duGSDM845U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757771993; c=relaxed/simple;
	bh=YHN7uzGTDLuKQwLQxGf/QVEndeYW0I+hDObdz/WlfT4=;
	h=To:Subject:From:Message-Id:Date; b=cJCACFcdao2OFLJo6EPk8H0LdQWf3pSE2uXPsrATLNzpKxgEAMFRKkAXd+0yqmbUh7oJnL3n0lCRQALyH3dcNfmO+BAu0zmWZzJI//cvqAkozOxkNHBpQP32nygXsuySeOBS20U54ssDdMgH2gZ+1AccCumj4StKTlVTW/6t81s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSW4gA0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSW4gA0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1980C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757771993;
	bh=YHN7uzGTDLuKQwLQxGf/QVEndeYW0I+hDObdz/WlfT4=;
	h=To:Subject:From:Date:From;
	b=cSW4gA0P2NsWMC/wP9IqsASGzmKzVhL8H/guMR4VWQdd8F4vHK9QF6URXUEIFxWSk
	 JUqogZd6BvMg5k6HTBwXRGOrgZVQ//27xj96bACh4SPhwXJmm8dgNCjw5ENwg+XfX+
	 2zmWP8xJt9x+wTI6hwTznylXnKrIMpQvy6bgcg/E0za8ubiVWpOvmUZ8ROJ3uom5Qp
	 QrElL8Vl7pNCFe8UsXKVUAerHEmQG2UyzLdraOXjqhJnNIzUL6YMmK2Cn/3SqV85UY
	 HzwDAOHiSQ6aKlRFmMY8i47158+42up6zU9cV6NfnQEjkuBaI9jhbxDkHpq+OjILFv
	 e2YZQ/cB3KWcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0FCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777199357.23414.9427301812680159185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9506e29616a288a6c00f073b136803b6ecbd85f048c8097ef72271b08825b525
Date: Sat, 13 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757771993
