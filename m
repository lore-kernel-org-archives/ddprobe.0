Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585EC3BADB2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788217834; cv=none; b=iTvSic+wphgh589ZgGjFVB+7EnPib5q1kkGlqYUNf/gN3KZq/WpXNnqPF86OyM3o9dPCG6DkjgOK2XlzozSMuv2UFl6Cmfbw8YmwW1Kru6qcL5Ur98QbmEY5nh0sdAHUmcVCUQ6bW6t6IKK2PqUyeAfU+PbMRTT4OUeXmRSN1rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788217834; c=relaxed/simple;
	bh=pyoQ5uW1e9yiG4+GUs37X8nC6V5cagA/OoMuddeOZJ8=;
	h=To:Subject:From:Message-Id:Date; b=GJDigAGBwrdaYO13mx+BbBYeF2nORXVVYQEEetHM8z2Wpr8NJdncStCokNdHv2ze+1NasGuBeX/UYitNwwEHjtUDWO0Ef099oMJT5FVwHlqVfGjZBe3Ll65BDCPMA7ekGA8XsNZcVlz10mEvbGyEkM0aTWUSDl0ZCYB1Dsf0Uww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khkUnuZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khkUnuZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D5BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788217833;
	bh=pyoQ5uW1e9yiG4+GUs37X8nC6V5cagA/OoMuddeOZJ8=;
	h=To:Subject:From:Date:From;
	b=khkUnuZfUxhr5NA2ZDtlGs2FHkmvgWSJd3AUj9dK3fPZK+LvrKaEO33pUtKQQEJ6v
	 mvbBjhiXWRbLYGyRXJRNEWNDLV/koe+X0tuxVyzb8F6WezoVp1NRn00eUK0Z1nSjj0
	 LapzJ+g5FC5ZEEeRjs7OAd7f3drNMaOOZPTYgl5acKazHdhgR5/kTHBC+4hoGRQPnp
	 /IZVJBBmhG9iCw9FiDRDim0ZzIbTmkYhsMKoTESz2soRF/U/HV7O6u0miUutBuAAmE
	 mlUsG8QDnsYjtiqmaCsWFVqSsDBme7ixjHZEOAHPG1VGHaVH6sIz51nqskyx9f2tSv
	 qHi/89jQfXyig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16ECC61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821783368.19669.18365816410719368144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8175526af6ca8b01793e8723fc616e7f60ec84524e868af5c29b246d6ee69c6b
Date: Mon, 31 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788217833
