Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB51421A1E
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768977834; cv=none; b=JNTsJ/tdnAIk3MFHFy1T0AXyqTUglNrZAcT37bX9Uf6Xs2hSM3au6zCav/gmecvdZf9Uuig4kbC8XimaUSmiKLUWZbFTbtj9NTJgGDkC/GDf/ZaBbWWmrW+gjae4PTfH/PknD5MY/YTLfFxCuClbxvf5rcu3DGb9udW44xvbXiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768977834; c=relaxed/simple;
	bh=7yuG7iVkpudMV2ec7eel5xMEP1Qw3REMesmlVM+oIms=;
	h=To:Subject:From:Message-Id:Date; b=XNq3mxUoGRDnI1SN7DH8A7b6wsyBHoNZQKP/IZF5Ph6u4EbIuncbuBLur5uACDrLbp0waCJ6oxC1/chFT9tsLCiu3oIt6HDqlfFhlKO1/DpSDYKKYWxdo9pPXcKzyOGdZE8C/NxAqbsGsTlUjgM7l/BkaTMyXB2xW0CHeSS6l2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTTEDJii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTTEDJii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A115EC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768977833;
	bh=7yuG7iVkpudMV2ec7eel5xMEP1Qw3REMesmlVM+oIms=;
	h=To:Subject:From:Date:From;
	b=mTTEDJii33niA5BqmGISwnRdasSxsdxpMZaGmj9UZ8xGA5d0YXqwEiG6oSLbq7HnP
	 kaTpBcYkH63lIVuS4UhVUHwNEoN9VL2l3OSdtuehmmWiro+TO2fw4AfpzYSwaubOSJ
	 wykJMHTfpi3OrZIyU6QavzuRO7zV1lVE9ULYnxQGETaqCYw5KRteDDwEfvBFuy4nz5
	 9nFKMyV7wZ7khF6ziFA3q0+t2W8HWK1/RnamksWazJ94esNIe00F9oo7ls80QlVaHt
	 RfKmbsw6IC4X8iM9tA/EQFvdY6LydVIXLLpn/G7jmymFU7KSHPv33xJcCgDW4EaSAk
	 7HRil2ArivfUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242ED262B2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897783359.8518.7311730782509270371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 381c916d5edb326cb97756b0bfb40bc6a10049cca7caf1d21fb0db758744a85e
Date: Wed, 21 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768977833
