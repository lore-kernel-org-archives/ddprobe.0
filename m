Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151613C00
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726798554; cv=none; b=AJR9Y1g5QmAzrcGR2OXLgzodmqc4g8a12oS0jX25SvSBQU2yrQAHNBeUgYEH2/Gm4l/cuXOz8uAeVsZBqiHJw/2zjl5Om4G5u5+X7LYpu7kQet5nnqF3Hoh57PS8RNV4cf6NKlIdqnKzMUKoNqO2D7ouCRlQ3KoNORMrBweflj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726798554; c=relaxed/simple;
	bh=n+5HJvpQLcuPy3ULDA+zUUNB9SMUCudqT/6SKP3ioi0=;
	h=To:Subject:From:Message-Id:Date; b=Fqq6i7SH0B7KGo7/8CCZvQPzmDSnFMFDtkPjpDBmLFU+JJPVBAjAkWTWwNZpCvQo+x/Dc+gOYPqNPT4vRdma5YAwPdOxCUdcfOgaUlYrlh0xRuX8w/C3nIrhMRdaV/jFtWwTM2tT3jwebYdEgcqMOZmVY/B/Ukuk6FGY3IL+uVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZZUMWtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZZUMWtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07A9C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726798553;
	bh=n+5HJvpQLcuPy3ULDA+zUUNB9SMUCudqT/6SKP3ioi0=;
	h=To:Subject:From:Date:From;
	b=kZZUMWtzVpKC/cSUL4IRbudD4v0yuWlfrdqxR5TCiiHGb+2JcjvvDslcjrIMwXje1
	 raJ2i+1CvLSWQEcm2rjvuLGjD6hCRhz4rQZvam71rgOQzXVbMQIUjsv4/+gTDpMn0G
	 W+XzY1mlK8uoiXWNLWQpv/vkAGq1oh9kh/hFcAtakzIxMISCdVf/e3wss8nQWi2KkG
	 qX4r6InM5AzlFuZSpA357/gilD0LJrrXt5ZAp3RBWqkFruvloqVw8NjXsOZkl6omEe
	 MskYaro4vOZY1BTmR1uzI05mJPU82lrvdYBvN7ORneebBIg6P03u4/mkGKwBa2XsMa
	 bCBjRQzbpTgNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D285CF397F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679855363.28827.15113331913117078622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2f99d51e4d025581ad341128aa682cc7668b982f97fa9a126ee7c60b0966a9
Date: Fri, 20 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726798553
