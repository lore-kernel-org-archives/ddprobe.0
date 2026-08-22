Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D231493632
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787423434; cv=none; b=M6qMG/O7/gOaJvdKkJT2FOpqipQD4lp9bbbFj0KuejBlV068XsrauoO6OzlV9UT102Zo29AbDkFvG2mAzfEmwZkmvmL4ou6VDMJzhdJbmBPyoIzi/QlVMb+m7d1ektS9PgXxIUPRKRKpd7tJw8bWAjFftYP4Gg+ZhpU18vbyzGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787423434; c=relaxed/simple;
	bh=xphUaivQ3gSFCvKZug4yTIPcb8VW6OJK/dmepfHrWYw=;
	h=To:Subject:From:Message-Id:Date; b=k3mL9hhPmTcB43X763ZcI34t1kbSiomL+jOAbAwtt6aKQZBvpGthQXgJ0eeed6eZYjAoHT2x/N+MfK8aqJaSxz0BSvRPuyuBJgF2qUFmhOFuGSUQGacYsjlSYw5so1ZzEnfLhBSo6UFZS/t0XTJDYRSBH0YvvdGMgBhz/sI2VZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbLVKmAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbLVKmAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12A4CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787423434;
	bh=xphUaivQ3gSFCvKZug4yTIPcb8VW6OJK/dmepfHrWYw=;
	h=To:Subject:From:Date:From;
	b=EbLVKmApsyn9NuE4bLVPZqOke/Zh/73rtXIYXrAv4ZN4FwJ3jzrrFfAIxo2LsDUFs
	 HpBgkMIvN0VmHoJlnnSRZu9YLn0sZMk3X5PqrSMPzsOSxOKzh8yX31+oDRNk3aVQwZ
	 j+8esJNz2Yp7T4r6nsyfXdumTOPo9RN631xVHrh41+2PCkwkjlzHn/TQ2ftH91NLOj
	 TvZ9g5oMF9R8GCMZbSzE6+KVI8DBcat7bP4Kp2TsHakxoPvk6sUP4XIcUIT85vimTC
	 gRU2iANUlCqZs5AHbXgArBVYqOL/bMo1pvGA2a+mB75SFhgR7uCRteMwYgFGso/+fn
	 1vQlcnvLL41wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8F7DC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742343383.19534.12700205357968592526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6093c44e6bff355e9c263d022aa45dd2c16ed16d723e4b224235c22ad3652402
Date: Sat, 22 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787423433
