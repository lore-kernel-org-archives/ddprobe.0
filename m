Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EE41DF724
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733265954; cv=none; b=P6PJTUoCxO8l3nftw7hRIcrL5Vo0Vg/LQmIST/I8gOA83kLDZfAI0nwaGbvXrI5bKvU+lsUS/8+6lIQX3LQ1U+0D7ViQTi4AK3wn2Dok/gh7PWMK81Ia70HvHpvQzW0AEnxcmFHTyw4U/tRo/vAnRn6Xlh/rpGO6Ty1pxR7hSWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733265954; c=relaxed/simple;
	bh=IaxeQZLR/NvRAxp75sh8aPIKT6u+psQvY1eKAJ9ulUk=;
	h=To:Subject:From:Message-Id:Date; b=UCrpfKeqYJc2WHnffy/IV8wcn5dX9DD3keAibIpZhfsrHUwMI/sYfdD5WthtdlM4YP40GoN/ZBSBx9+JH6V0OfNzwgelEf+XIYXr7vbkQSpr343gfPssvH6lq2EBEKeYXOwVY5pktS2RXn5aUjkdrQujoY2iGjg1rVz1Y5JCIu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSI7Nrhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSI7Nrhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FE9C4CEDC
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733265953;
	bh=IaxeQZLR/NvRAxp75sh8aPIKT6u+psQvY1eKAJ9ulUk=;
	h=To:Subject:From:Date:From;
	b=fSI7Nrhv1IL8Yz3Ff20TxS/NCLQm/izFJoDs6m4sEQQ8dxpKjQFq04WprSOGQQAAX
	 ZCRoIoyFYM/ishKdkQU38hIUd1iL/45vLyfDal9OpCS13snECwkjS4DxJ7lpXsBMRG
	 SBrfD8UjgFGGQYFCxM1ggQgZPe/zBQO24cYmz2aw/NdtKJ1/GCK/CdaywhsBeHo0bs
	 nJkKOrk3Z5cIJPkUl73b4m4l5EVwPYNnmSYpsl6xmfwBMM/zd9h1+gqMDhg8EC/sKm
	 rRulrMApUtcvH88hnHwtpTiCBMKsjaOsVLioOopf4y/3kMCpuuVCmuWzJ8RFfNmWEP
	 OD1m63EQIKuNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF1FE77166
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326595359.25351.13170710945850124587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f71de141d9b791815b2d063512790dcf522cd5df62c464fd0286e85eef94ba8
Date: Tue, 03 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733265953
