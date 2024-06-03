Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B3410E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717374323; cv=none; b=dRrYNtqGPJIwHirM5ZbNOLAKwG+PZF/JbNaUr+8GYWYVNebm8XtSRVaLXLW78dKrlYB9GOqWb9iMwpHtyEanBCcIdeNjadPiMCSZZW1ockNkFgixE9S4NR5wvk9XHJBaa2zhZK+4U3osIlv3SQH7M42KSJJwxTA0gOh2Ix7gXkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717374323; c=relaxed/simple;
	bh=aC8Kp2gb4GD3jQhi9a1HIld2w2KaRlnx4gjkpliBinE=;
	h=To:Subject:From:Message-Id:Date; b=b57xv6NJtvbynnyIjcdXxkUDV++jayjHeyoYo7UTOcck3jtqjNouyFfZb+eyXYXC/StNUDPsHhvHcgaoeTfbrFGjpR7mJduNMwIs+cMTQs0PGM3FENx/UTW9/S3AY7MSDIPTFj7sKblHA0zkrXm0265oMUdmkssfoPpxA40JHb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qu9zgLrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qu9zgLrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5247C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717374322;
	bh=aC8Kp2gb4GD3jQhi9a1HIld2w2KaRlnx4gjkpliBinE=;
	h=To:Subject:From:Date:From;
	b=qu9zgLrgPt1506fiTkqpkQrQR8ib7gw0/JvBrMgADLP3i6urhKIS4PU9fQYs/Dv7w
	 mzVrMlVDNr1Eu8HTlq4oHTymgvwhP+JtQa5g2BIvJiMfTmwqtjDTFfsyH0c3gvW3Vv
	 eIVN562PSpFswFILDQ21lNsob3hfwRMH4s5mrBb0fZusitqj7/LpjPeYaWwaUR3Xx5
	 7ekO1V3oF6q99boS2z41m0y9q4pcRw5M/dTVlvTNzDPrEzw1P3FNDAF9GqWfmbTvpt
	 xKwxoOnXpEWIyNqVnLoTczVsQ07zhwSR3PVHZ71l1ZqyW+gHxCc7dXp80+2XJCIoaP
	 qurh8xk5ow9hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC57C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 00:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737432280.12854.16338413846833072707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a016e07aa5cda50af4fc6f071db7071bef83f8123b827d9b545f5d4a6046db
Date: Mon, 03 Jun 2024 00:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717374322
