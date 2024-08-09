Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323D2160877
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723231555; cv=none; b=CoW0xLWJpL+nAFozb1FRQOkNMGQaBd3xl3s7j+cOQ/t5x3WsRTMzcl3X+ccIy4bPEkEynYK2sR9OsDOiKVbSqOtW0S+N+kgyZ7WtMwTDIv65ayOmE8iJi5GxVrIposgmNrK59s5ZcYLvB7yQuuNySffLra1JaLTo5IC/AjQSvxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723231555; c=relaxed/simple;
	bh=uHGnvHjlBG3z+p+cnVnpbpJ3ffIbFd8xtGKBsye0yWM=;
	h=To:Subject:From:Message-Id:Date; b=qPH/kelpjr2xlywf0N8PSTSB9YfiYpgCI6dWjaLaWjToNN6I/qFmqqkxRXwbsmnJEB6yNOArsZIPAak5vuoBrfeBlkGwutid0b6KRuxRTHRUDDFQMV2nTA0JTIbg+DSKdFPPDI7khX7XcoQAVhFea7HnfPROEiPiBBHX3vTg3oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJhBCcpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJhBCcpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E11C4AF0E
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723231554;
	bh=uHGnvHjlBG3z+p+cnVnpbpJ3ffIbFd8xtGKBsye0yWM=;
	h=To:Subject:From:Date:From;
	b=EJhBCcpROzV/ddvToMmopsHuaOSeB4EszqGiKlnvbw6itr/0X28K4WeC/EJMiCKj0
	 z+3eHp6mSaEotTetSnEObJkrtr/x9aOAKUs+7tWrO1fE1n7zVABcLmZHninJLjFYaJ
	 g1IyNHnjx+izl8XQz6a8OJArKaMW0/s/BCn9DtCSZPrytEXZO/jEQa0w/ZyPg8Uumc
	 ErwbmzqzM32gv6ITI8FpRxmy0AGtqADtOia4ermYLzUwF/BVFuOvHkFAOegYCcB0Y9
	 Wc/Zec4KS158JhHPdOeH6e5+beozu9MJzQRqGcB6DNtIk9gAHCr0Mf2Wi/jqgsHEDk
	 FdFBZAMdMCWdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A92C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172323155364.24295.1367663028068417973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013ddda9d790c3c4781252c007957192fa58f0f37f8c3419e28004a34777aa99
Date: Fri, 09 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723231553
