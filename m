Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CF223ABA0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768284234; cv=none; b=ijuZ3MVPtzduauQ8WrMFivOt6gJUzC5ydM7Jj5J2EeiWyQbQiLXUDHNeBnmTG92iqW9tP6hJl4w+N8n26HN1tNbjhDv0K0vFYRczXQfU8Bedrfp9kdB5WTp5tiWILC9/Ef7V1nmKOO8g/ZHs+XkTSJqP4EpgiVIvst0CCnno23E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768284234; c=relaxed/simple;
	bh=BnX/Q1x+nHmXJJSwGiZWS6mKaPbzb/QdSFNROvFsCnw=;
	h=To:Subject:From:Message-Id:Date; b=aNyZopQRKQWIunvIILiQZuB5wPNb6nfiE4cK77Icw2gwZSstNc65EtPU5rTao9vrtEqluQ/ToeVXW5lFfB6mJFHxgNuDxjgHqMiByAwQONJyFTy7Hk6AkeOAAdM2i1VcaFZVxHgcfhjNREcFEtahzNQHqsgCMFb22yLdZ5nqvBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwqSiOYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwqSiOYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8615C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768284233;
	bh=BnX/Q1x+nHmXJJSwGiZWS6mKaPbzb/QdSFNROvFsCnw=;
	h=To:Subject:From:Date:From;
	b=WwqSiOYtpwDfMGnkuLg73CNQJ554AbpEVpP2ip2a/JtgXxkTAbUBOo9ILdYA7nKRC
	 pkZxeRA95nPAxDV0j7ENqaMgUthUTz0waP+wsW2nUccjh8CDvEKojEXL1EPawD1QRv
	 Fw1WD4Y0ySqagnhqQbVPyMcafBX6xef8mjD/NH6EHSE1eENZE/XN5eTptZqbFZSVha
	 rWx7qykbkOEc1hgvNGNvAMpwt5Iv6a0RDRYKkSBGIrDhbhIFfdJ6yeX+l7mkV2LMBZ
	 Pko5T9OULYLuqEw+nt6QyLwEErGNU04HNV3Y7G4rOkC4PAYpod12nHo8KW/KW82v8P
	 JdQyLAMGmc6GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98888D29DD1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176828423361.9781.9002332759156451556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3616d0f553da672815f6257d1904966a763b04e5e26ff9b6491ccbeb32c16e
Date: Tue, 13 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768284233
