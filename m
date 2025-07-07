Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6ED246770
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751915994; cv=none; b=kQcAjXcbs34u32voWB2bcE9SCUOLnm9UFkn+907FHGU/kGskHjZWFzNV45OBGLwv0KyXQBRtojVnO9RHFS3fjCd1oJJXTOt2LLSvmNGI2V8XiMafjMR4PNMwE5aytOB/A96eCQSNkeGWwm2ZJRGjjaDoshNugMf2T/fE7A+iQRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751915994; c=relaxed/simple;
	bh=dFoIoXMZYIPcxcpouc6MUxTpMGSo9K+rrK14pcwLXqs=;
	h=To:Subject:From:Message-Id:Date; b=UjBGuK9S6MQqEtMphJvRks74gPsD4J3TEG7AZI8oJagvqkflT4wF97E3K5AnGIkMuQWiVYEnAxZpMyc/wFTATNcqqo/5HPLHkHGC91Rp/zKRN7tKOEInG8qdiZRu4RRSw8AlAjoE+2aH7CvMU3WNIp6U56ndYeGy/wQmf6NSpNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwThY0eY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwThY0eY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1054C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751915993;
	bh=dFoIoXMZYIPcxcpouc6MUxTpMGSo9K+rrK14pcwLXqs=;
	h=To:Subject:From:Date:From;
	b=nwThY0eYLdaFt4CWkOYS3iFiioCZ1W34pdb9meKhXRjLpzDsOIcien9pN3D+gKP7t
	 v6k3u+ItP0pC/WnUffWoXKm7nkTKkdKdNr9Dg929mDL5ltOGsnNTcznI7pabHPLqSy
	 qTCnrZ4M6VIlu5VCqO2bXrzRooKC2kjuFt+F9QkF9R1NcVafifIXmMXcl6+JTBv7ks
	 GAAPXvxzc1XPrl8cMToM+oIe37sbpV5bZdyfkjPBZXeBFGUoMG8vjRWtmVNOpP1q19
	 PGlONtxRqX8YODxR55w2z10a1LCNFJKpso4ln6luYWR0xY9d+DGR7hy7EiywZ5bMer
	 X+Sg/vXTwgRxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE96C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191599357.12964.14903587738059712288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ca16eab637b3296d815b6b613f2d0efac41d218a0f2c47fd7533868ade5926
Date: Mon, 07 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751915993
