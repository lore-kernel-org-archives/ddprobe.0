Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA053054C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763013594; cv=none; b=nTmVctCTZMyPdYDjLevB9U8vdIUF4OO/TzrqnAzDy16LNdxtTgZ4LfuIj0SSDOH9z4neu12qvwDzq09mDWY3hjhmsyhAxNy6C63JH04sO2IWPXbaOuwTbE0nT5PA7Z4z2sdpKWe451XMHmkkxM5bY1wBSknEWbEv/HY079gj40E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763013594; c=relaxed/simple;
	bh=7E+hGznMo0Us7wkSQM+qbJudvQxYjIBeJBid2ALgByc=;
	h=To:Subject:From:Message-Id:Date; b=CZHnv/X9p2duxyeKvfkk5aFB/B4ho861ErdaARfRtZCYiEJTjEIZDxYha9MAZxRkx8/Mpz18I4fhGtOFJbugDnhvU41SkWObhUcq30qH3TBidHmoD3ila7+4RfSRuTGzSuMdT+gtTuvoeC+XYaqsWaPGjckVsPL/K0UPgsd2wrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMz6gyuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMz6gyuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9CBC116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763013593;
	bh=7E+hGznMo0Us7wkSQM+qbJudvQxYjIBeJBid2ALgByc=;
	h=To:Subject:From:Date:From;
	b=LMz6gyuzu8VYtiqVJr04OJpVsYCIO1BnV6UMXXGKM21JXKlnYYQ90AvnVNXbAHnAd
	 3IPJAoB3Ky0+N6rkxRMJS2aNUaAvb3Y7FdKEowSVGtYiudt4UQbruisVAWGyvu+KJd
	 RBimzo2Ic8zHofOQVMtWmMRhJlj9uY2Xjtdp0KwgbMHsjpI9ZDSpvkrGZzm13pkml8
	 sBpgGMfv2aXKS25CyM7Of5PLlzujAq+TVXLGKcplVjTRZ1yzeeWZv813tXJt7C6fmj
	 L/uGznxcyVuCKe4hraSfg/9NoZjyalMVyu8MxtKdNBSwWo1u5KjXjxMzuW2qG+wa7P
	 MMSIzOrrYHDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91544CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301359358.2516.15215540868164849954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995f6733cce40d3b4d1b1e45b23d7f457cd0a9724903af0eddc2a5a0ca1580ba
Date: Thu, 13 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763013593
