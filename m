Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAA0812
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720410983; cv=none; b=Jz64KuC7naIdfwfQ4Rv5Gcnum/qvBIPcgJ6kkkv8xYQNOFGf0ZT7kBRdrBtABMP4dgWdkmQgLtWhQp1pzSB5YErqu5YC9osTydYnM4U1sAwc8igyS4F5vxCRHaO1oriV+DQ7TCnYTqQD5zcZYnMUMgz8e/3ayHamHsSrPP7lesg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720410983; c=relaxed/simple;
	bh=rLaP0twqHAmvK/Noy59Ya4UhHRcGF6N4gnhT8Ce8smM=;
	h=To:Subject:From:Message-Id:Date; b=TvglRO07aLhHKsDs4s54zvFWH7G044Dcqhwp1Z89G8Rc1VU2ZGDta1zkPtr0GicFwSIr5FXSTvAOv2G7hPWArv54sJnI+kfKhT+9f5DFRgWWJAtwZEU+MFqv9Fj4B0rwDydPrZoGeJ3sHaChEnd35mfDlIP5Be1nWOC1Xs+N6oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atVEuobP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atVEuobP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7212C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720410982;
	bh=rLaP0twqHAmvK/Noy59Ya4UhHRcGF6N4gnhT8Ce8smM=;
	h=To:Subject:From:Date:From;
	b=atVEuobPsVCFw83OMgUzId24OSSzt4t0nZsl+sT4LhePR36f8VQPwg/R3rnYYXc7b
	 A1odEOwVEZwfTeMeJ0gL/IFbjwpxbnhYmX6VTu1t0S7mksnGoNdgzQhrBlUNcZcmJh
	 rAWbRZ2GwdmeyI9oxqg79SvrQt+baK9KeE/xRxK2P0oQq4wW9UdKScA/XZmwrupH/A
	 ekexugdLCVhPmTFCw6w+sE2THRa1Jj+IOKw1EQc9LnLigDyOeC35NT8TX0Lu/eRxwc
	 YmrQnRWT18HGiCuh2aJ50ApwUWYgzKDAStXLYQnKcBgq/0VyN8tIl/iDu7KvohSuz7
	 auxQ1Y1jL6j5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC2D2C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041098279.6462.6433230226577119729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c56e9ea6985a21afbb5de6ce28ff1ed8c81053ecb0547734079f6093ed3f31
Date: Mon, 08 Jul 2024 03:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720410982
