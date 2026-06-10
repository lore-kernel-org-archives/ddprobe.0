Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F34A392824
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082334; cv=none; b=Cc4Z83vDA8ka0c/mYksB9WQilr+qJ+SUHVoNdsvs2qCLXuJLDUc+5AFf2Iu26YNYhbK+TeQQz+CLgex/btS4iT2zbQobL6v1xT4X9BW2PHnkVM8NIhJin+B3uSK7P/rZkgwSSC3CkczEtxk1y/hKadA4Iij6tVX9mUewSrmwR5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082334; c=relaxed/simple;
	bh=joTsD5OYyRVjfwnPA6U2ThHEhQmmwhe0YtxgNf6g27c=;
	h=To:Subject:From:Message-Id:Date; b=JXH1KUJatp9uKBkt7+Xn3Gatyz46QA2Zq102ECZJrtBfzywcMupim2iRVfe7nrlJOk57QAD9cM6KD2ConFz9+/dWh4wQrxe7I8kQ//9OLABi0+kf/0S0BYBdTitnXEvOLMOL84pSQHpM61MMs3bCpnYQOzgXJGUifKdfK1yQm2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HciVSb4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HciVSb4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0DCC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781082333;
	bh=joTsD5OYyRVjfwnPA6U2ThHEhQmmwhe0YtxgNf6g27c=;
	h=To:Subject:From:Date:From;
	b=HciVSb4WcWuWDlH7AbCHWl8yE5lsX9ne91ghwbx8YV2oq12hN6wSn9y4i1dnWComQ
	 p40bEHhetjoXVfSczhomVYZfurS6+1uoTlIthvmyNg9rjFo1qL9A1ZJQ3ZlLoAVF9U
	 JBRH3bZ+TjJzvGy0qloxcXxaCh+oaui7QczZ7kqc53varNw1xmBEFNVx4gpAkMdhdG
	 Beb7INw3kjfpQ8wzODEOFJ5lwu4YkZM5g3FcJSUjQDzNKZk1wNlZh483gL4ICMSNcc
	 p+y7lsH0ScyxvgIBNNdHTH2/gJHr9A9c/wRr/eOYLs1l9HBzse9AJ/5Ouwqp8CiETe
	 pwsyMq6oqDBXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD68ACD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108233369.339.14825352645524961548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3278b19ab948e6dc2acae6567e60d5ab87d7621aba2fa871b2770d71d7280c
Date: Wed, 10 Jun 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781082333
