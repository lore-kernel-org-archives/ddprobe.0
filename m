Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA6919479
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712381297; cv=none; b=YdTS0MrQsLPi8uPZ0PnXL/BnSuahlRRV51rkCstZydm1BkobjyqI9wbXioQA2Qe0UBoZOes7XRTkthhTyVFwYOgOsL0WcSiTigAhmghHN/Ujxq6MeqHRZalx0D19V9Q010sSm8tGAtAesVJScSBg1Qp0j+Egn6mdtMUeDv2eJxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712381297; c=relaxed/simple;
	bh=YdGeGPpk3kIoJ4Ge2ICSCb7BAtxUrb9EluTcyCKJPHk=;
	h=To:Subject:From:Message-Id:Date; b=UEoe3MTmv6ZWiKckuM1iqtuIDg0lSWYqJI52a/aSaFd2PVRhm5b/AimPrCluETcM4yH/AkWXZgCY0h2aN6GPeIb8RdV4uzjvbGYYfDSs2zcBvhlUqN+HtDGue3AgTdvJ+uH4Nya86qYkD1j12jZmxnXcF0Nnvnp6070+m4ovoDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ka56vZHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ka56vZHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790A2C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712381296;
	bh=YdGeGPpk3kIoJ4Ge2ICSCb7BAtxUrb9EluTcyCKJPHk=;
	h=To:Subject:From:Date:From;
	b=Ka56vZHd8dsHUWWboKKj8fJQFnhvEr1cruk9FfBEwRGh7Qb/Wxp1eeu24+QRcFixY
	 VUfDfllYnnRMJ6mY2ysrrJVpQ5uG22jSsMefghtF/Xzawkz6p1QDVA0NRy/C4j6m7P
	 vAgTOIcbanqnxt+EeeLhEcosxDXkoLvTDulRu65fpFQJZC2ktj1blSJ5n7WdssdJxw
	 WfO2lvZ5O/Tzvrtg4AmUStGlaGy1KbolSrQt/iq1z7edgVG4DVT6VPnUuYu3opI90S
	 Yu4UPmnm7C38u+sTAb3d/65ohBJ4bG/WeOQId9HYZC8Np7dAXQp3cjp8ShgSXl35Rx
	 e5UgDDTXxY1HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FAECD128A
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171238129640.4969.5432280153340782736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3380c258b986d772d8adf923945fc57b94bcf0a786ca5cd00aba627cfb6015
Date: Sat, 06 Apr 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712381296
