Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495DEC8C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737168954; cv=none; b=lZoZyoQervHe9XWxMOc8Ls9GgopFjIE0JTwiZPTS8G+kS8oLO3HR8kkWT/SrILzNhUXnCRqfToxLweQovvFRDFS17VDr8b+16SoLR2K0Wa/PuW5b0Idn51YhjbBRpR2a0wYS54G1yIawE4Vg7cdy08PSUylYE6kwgbskUrF7iBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737168954; c=relaxed/simple;
	bh=NN8zz4EtioGHtPsNovJEYXLdeCqFW1NX1el/lTkSkOI=;
	h=To:Subject:From:Message-Id:Date; b=rA6gGkpdl2GKDTBlIRP9ajckYwXfTCS2MvYlrGnj6atHThVkK8RQUs/hvGgeSl4d8Mhg77HjbhjG6WAj/Nf0EVd9lfXk+MHniNrMBYDopGtXGeiiu4842dl9XH0HAwWPYfyRwVZfPyFIym+7qYmf1vOYFoXdYr4kMBFncp3sNJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaGz06YW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaGz06YW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDEFC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737168953;
	bh=NN8zz4EtioGHtPsNovJEYXLdeCqFW1NX1el/lTkSkOI=;
	h=To:Subject:From:Date:From;
	b=PaGz06YWCnXvJyS5wOFNyhetak3tgDt95ZGWsCbyW6fzznhoe1fEI7IWmE/7+GUoV
	 pD/uaRamXxY4JGY69vHjmBr9DPcRoqZ2iCJ4R4TB/GBDwMbClNMApKaQnkeL8JwfSZ
	 4HjgBUUN25CRf1rpDSG2T2ALgAnVGUMdPtJnOD0ChJmnTN6w2FAoG/BHpR9qe7HoYf
	 aykbSjIdu80sGig0jFnK2JqN03HcvmrR3clh/ZSlUdG8nl3Ib1rusFhVDZGFg8hgQU
	 RKCdTUhnTnohac6/IMvccYO6Lefu/tedpBqH/1FVF6E6iYhVZQEwS1ByvPGMWBNHNu
	 nkzwU4GE+7PMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935FEC02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716895358.22121.9744280900616932849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28999666517ac502e125178b1faa89a5920586f4df40d8659f61e811d8a9ea46
Date: Sat, 18 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737168953
