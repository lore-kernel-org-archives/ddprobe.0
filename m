Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624D73446C5
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778956834; cv=none; b=Z530ggGRiD7LJJ61OjnRPablIF0DVgCPMGEZQ7dvrE9Y559MoEJ3i9Mx3ClvOut8UGMykirAXeRhcz1qTaxAswDBdKPyKWzqM/GKSJ9m/mOn793Y1Ck6UAly3Rf+zPtf3mCn2Gr98WSSvstHYNiKeawcUqRIOhaPL5tJFV7Wgns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778956834; c=relaxed/simple;
	bh=sIYt2Xztyt9eXZ/sthb6vLg33GMJsSaPVn9sbpmbETs=;
	h=To:Subject:From:Message-Id:Date; b=PnzbyZEcO3/7PWH7mNGe0KvdNqSekB/cS0vSmPr/wq/DTmJ++s2D3qEu2aXvf/ewUEPWfEae6cJn5Ds+LbveaSprbJGS9lGS/hMPD/7vnek4LXSujYC27RTHgBiOA9UDe8p08ekMSs0abxcY0s3kG/BDsW5T6A8Q1szyI2pNiZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXxc8l7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXxc8l7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4BAC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778956833;
	bh=sIYt2Xztyt9eXZ/sthb6vLg33GMJsSaPVn9sbpmbETs=;
	h=To:Subject:From:Date:From;
	b=SXxc8l7phKEZwMH+H967VnKjG9TtSsZktUM1v0fpeaUk48cUi6vnznpS9QGqLfeIn
	 N5EcuPrX0iHaMHZ+lGSx5rC8leGZEV9rESAWxuMrckVunKlSUsmG17Nk3/FYBXn0jX
	 MS+7ubaLN/vEh3DpCLZaS4KTX1L2SbbDQXpa1kqDa514H1yu/1V5GdFSil601IG/8n
	 9jrcucMYcviWxZ7s4wY5RO41XJG+oQimyMvY5tamSq3nzxnX0VaOgWpzXBhbrJhVrw
	 Di1ENK9IdpITVMr3tvQMad3dbCYn1XjxuBoKT7kQbnuWF3LdlwEOgLSqNvSG2BJhtD
	 BqBh4XvSgYywA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC52CCD4F48
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895683369.8087.3989632119657853310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6cd115decb67cf124f2171ebeb95646014fcd33191f4a7f861c1c3dd034c9f
Date: Sat, 16 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778956833
