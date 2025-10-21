Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E7C3385A4
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761053994; cv=none; b=ghTVBuoVQllCLKEXsEuGJccerJ778YT/qvYffXKNdpyjwWzlOEA/1SJ3sFZIQlW5sCMVlsmn1ppkbJqO9Qgygh9hUfs5dJDTIM6D9N4GDtcQnhPnfejpJJBx+sVVqrp0Y/3wTFq+pa969YOxlGuqdd9qCjtcxB5QV0Rb8iGtiQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761053994; c=relaxed/simple;
	bh=Qyapq/5QmgTywFhoUrwph0uveQA4JwHuREEdQmTFzp8=;
	h=To:Subject:From:Message-Id:Date; b=bYUMpH2gccPl5mKk+UHOL/Jo+rHEnKis4np2t8BUQHCDCTxivkOZweVLkhAyBQCuW8tnP3vuITW4yZA+8K9hAkvqb+ppSKpwQ7tIODgMnOTFJL+pyt5+n51+ASp8wMs7X3YtCTbzvi1wCAmwKlWS1Xpxd+TmNzI0YjAWXdVFJgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3dbF8UN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3dbF8UN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761053993;
	bh=Qyapq/5QmgTywFhoUrwph0uveQA4JwHuREEdQmTFzp8=;
	h=To:Subject:From:Date:From;
	b=h3dbF8UNdZJNldqM7kZjoEYj+UTkdFo0M4Mc1K2La+6J7RA1kjcEt1PJdyzxDQryA
	 jYP/EHTqinWU+y2DCTCNXzJNn1D1kQdLluZUHN0v1Hu4msA4huoiB0YCI7oHKCYh3N
	 cNQ4c+5KJEUbpdTCWP53o2HUxk9cgfQj4nC2FvsP/FaXGTBoarFGwRmO6Zz/xa32vP
	 +Hh835kXrJ3EkZ/w0/Ct6yTV6aENv2NoXKzanEMGedSujMDM7gegPCEnD0d1hRFbsq
	 ndiuT2rsTDMztmlgnXKSeMWBCDjZ71AYnUfCd9HV4vmNkGmFl7R1e/oKTSdkmj4pyF
	 dOPmz3mvtz1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D69CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105399360.20391.15501825097237803802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab63a57b795e3750306d65b6bd729954d87d1a7317c25d69001453ec36900e3
Date: Tue, 21 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761053993
