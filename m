Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE95175D50
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745050194; cv=none; b=m2UpemL8wdl/obqu+GL26blMJi1VguoZTNUhmEbSc0l0loo/s69EBwa08pZM/rRDu1zW/FGLeFbm2jmS0tMBCcI3r0DmFcWKLrnlj1Z0+WXOnlAXdqIKpfbjtPnig90EH5TD8T2AGM+pDe8URMGm2zIk3e+j5Glq1+U/DMJc+hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745050194; c=relaxed/simple;
	bh=Afj4Was0NHIuo5j/0GcvAOxLxxgisSTq84HcWEWu0os=;
	h=To:Subject:From:Message-Id:Date; b=nzh/Ze52bVJDmsc1Pq7wcLxajapg2x6T0v7ui8mtsYCUf30Bw6rZahhGOgYZPhZFmDyrYmueXQNVRDYwLir5eKNUJpwxgSeW2tOO8OEbhScSkvEPEKYOj64NgTYDOBTtKHQv8JX1r0RVBQF/qdc5y297fIoXVt97SFsdV5fUyc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMoq+vRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMoq+vRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C643BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745050193;
	bh=Afj4Was0NHIuo5j/0GcvAOxLxxgisSTq84HcWEWu0os=;
	h=To:Subject:From:Date:From;
	b=TMoq+vRkgDcDfWJLlAZJ9RbpBFzKXynfe16PmfdM/OvV6LRoN/u4Pu5CJhYYXCZ43
	 hup2Vozsj74WU4O3B5fJWuJH4CZsF/NDTMEzI8C48U5TRsK3BtgIAyfN8B/vdcJWHB
	 Dj0pz95j9J1fnrdME0jAH7CuvQUzMVehGLguD9UQTHMdQTr4nmr9K2wSGSowTLmzg/
	 u15s7DVyXTSHCTMSjgNRKGr/Itlt4/+eQU0RIBAZzvtHDoeLYSlCavgOBd+kAHZ5cU
	 bhQFcB0Ta+wJsjWwxpakYzypbVbku0A/WAwkoKzAwXnJhZ+jSnTRO/fgYgP6+w8ZrH
	 nkWYUbsTZb0HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9382C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505019366.29344.966642570822390734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54da1846ad590d0c3b73bbfda3b90dea046ff9454d2fd0fb0a7455992c61708a
Date: Sat, 19 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745050193
