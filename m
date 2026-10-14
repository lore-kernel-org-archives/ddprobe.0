Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5239B4A260F
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792016434; cv=none; b=pSP3o5o2Q2YFikNQq5svsENkpCg3t4Rm4h4+EMaezefbdarSiEVFgdn886VmQeKF7mSgJlXG9RCFXP9veW2yB8oqB8RoOeuKzMtdo3zneQUP0VuKWzGQhU6KZzjz3qYRdaeJDI8Runex6rJJNaPw6RE/URbFs/oJFwZaWMiLdHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792016434; c=relaxed/simple;
	bh=p5GaBKDsAGLWGs/HAC3Ej2A3P2GLPTH8D7lNu+fWwMg=;
	h=To:Subject:From:Message-Id:Date; b=YI+cdu7ISWcjGSCFL/M0ODPiBxCzqGcfXq/eMmoMNpz4GoXFhCkLwUB3m/+fMv4mp6d1hzcfBq4Rq6vEIF/nj+Kgjs+6jUPoiYjrMOoh89qKeNSOOxvwBi5aIqT+nqzMtrBE8I3C4+ZqDGzgx8jRA9E96GkZyntTAPBD95Jhf7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAvUyueE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAvUyueE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A3FC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792016433;
	bh=p5GaBKDsAGLWGs/HAC3Ej2A3P2GLPTH8D7lNu+fWwMg=;
	h=To:Subject:From:Date:From;
	b=VAvUyueEyUh/dJ4aDyQJYtwDBF/qQHTHB1ZDYPhoZK8nUUpUENW52zPWNxgC5QEP6
	 rWBEAifZydJAkIhW16+RVceatxdmn4jttQEep8wKHYQ27uf6W1c2Xqbyy24Ar+L8pJ
	 TwqPw7XDuSELB30DEqjJczPP/9GkgLz2SoALAQtR5NFWs+wPyWPrvMCzj6tWeKdWY0
	 NFEdevTAam0Tq4oBcBmkbegMxEJVir533s3gqQLNCdS0MmVgpxxdpqADgmoDIlYvcM
	 YFtjpEttFwpzZioc9KTbsHs4sh0h5JwTaJU4uTA6onWu7CCdC/tkSYgLTFaCLq6h2+
	 xdNfi2sw3uFLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDB5CC6B24
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201643370.20372.16690608486648180442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4b88cea61b6d119f81a541c437174fe4ad28a265e6f22151162e49275bd1a1
Date: Wed, 14 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792016433
