Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B753274FD1
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757548795; cv=none; b=QgEk+YTuA+g/AOv9Ol3SEgNVwje25W+JpxEmBWCLhe1GJnxpyrm4i9V5bHqoauxUmdDcTytz55AfUEGej+dk4FJnomiWmL+mpn2N5Pd0RcoEjRHOJmj/IKqjz0jqjc1fR3i7Vif+S2SpET/zi/4v4VFzpOcDuNCtE4kZYZi8PwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757548795; c=relaxed/simple;
	bh=aua0ycojvu+qrd6UXEB9z2GrLjoUQ0AkdnXxCxXLRqU=;
	h=To:Subject:From:Message-Id:Date; b=ncUERMWqD2RZ4ZsnToKvsiRve2nQoU6Dbq2vzry71hWmwR2ABF5bnQOTENahksSppihVhH6s1ojHBRg3sfyO0HDN1fM5i2OC3K1Umnw5fbGqxQGvCqssdLLMXlLgdnWCT02R32oZPpXDeiZEPI4UZotbpzPgocSiKP47mXZqnVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3drfDUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3drfDUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEBBC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757548793;
	bh=aua0ycojvu+qrd6UXEB9z2GrLjoUQ0AkdnXxCxXLRqU=;
	h=To:Subject:From:Date:From;
	b=d3drfDURdRPHnMNTfmLM7yz32Jfjjfqw026kdbFrYm1eO2C7IgQEnSnDirSiuD+yP
	 O5w/ICNK37vngUpKamB2rUae3+IEd2aGL9+F/XI9JNDuVN8kwSyZUJ7y//kW1ODRf0
	 hRGUeFWZUMiAZ5iDqdkKjtkLMMd/VsJpTY1uIGcluUWbfxwcYg9dZuBpxKWVIIfgtc
	 yB/SuDhGXexhq57QBFABneOsFbYz2G6t72uXJcsYW6I5zh2yG5a0nGSJ9rukSYmLnK
	 74nD2TiauHdgj21Jc+h+irkWLsMTxNVti+ZY/YwPr1IwDRn4CFvwxYOpCJGsjFhG8P
	 pfVBdMH3hmEGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E732CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754879357.10986.2812335463743945510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c796dd6ba722bd03a5637288a7596a3f52c470a7ce5f60178de886d6538fb7e0
Date: Wed, 10 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757548793
