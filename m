Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C3C238C08
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754348994; cv=none; b=SiQ50vunuVkD7BYJoJ0iqc35MmG2wIPqUl7D/CaTudR1e3+80yJQFCLFaLyORoLuS+ajh/IvCBchUaJ46qxN5LUN9gs7aH0+iwVaxpQl5B8Vv8Kf/NHoIVcpL7Z5K7s9Uh8ift69XtNhBw855gQN19xMuYMx7eldrRsVDkf4Kj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754348994; c=relaxed/simple;
	bh=T3na33a1DpZUrA75nbWeTsbqJqk0jF7xUivlXeUJjuI=;
	h=To:Subject:From:Message-Id:Date; b=U17LBPmZR7cbm/uPLFSEBjT9IpIvlBOJonCRKLnjdfBIv0pcJmpXynxNNeWXWtYMFfXTO5mtVn6yHLcYx97gDANOJ16QE5Y+Rq84rRUJH+TbP5oHR0F/qdZAadrE5r4B97lgb6VWTrnggOSEnxIfvMWk1gY1GAUpGinVQ3DDT74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d39P1/JO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d39P1/JO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754348993;
	bh=T3na33a1DpZUrA75nbWeTsbqJqk0jF7xUivlXeUJjuI=;
	h=To:Subject:From:Date:From;
	b=d39P1/JO2aoUylawIZHylGygsE40ykWytyyAa0NWAP6dabpkWaWVTQ5NU9yaLg1vK
	 WTcYvJKXaGR6OYvAxruxUCMMOjB6meqprlgEEQHzDMOcErPV4XxaSVWO+NkDF13SFE
	 Ek7Mi1qDVjt5b2PjUJ/iwsBuofdkKh2gRD3zUUM8/1pQx08W7uYEDFxOG8ll5M2esD
	 q9/GVSUOeokB7Y7V2ZWZlpWS2SzhPdHFjKdRDNxFiakSvLc75PPzJCYoZcmZYleImC
	 5Xqq82nj6Dpsl4HJEozV4jwVho+HXgf/c/ts/wuxaBoIvRHfkkD/Fu0gMb1JUffGv2
	 g+gldXMu99eVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A8C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434899359.18908.10575621844940557617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5f6160bb86fdf277ade8e1d909d90d8e98f2b65384858841fdc04a7fbb36b7
Date: Mon, 04 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754348993
