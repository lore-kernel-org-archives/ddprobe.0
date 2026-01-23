Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCD02857CC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769129635; cv=none; b=CJ0FJhgby8sQgpeehO0OiZNLFEnrohACojEB4YteRsMqGd4JDUecEZ7CkoJNJ1PKzFvsbFqvbO/Pa8qrb12YwbFQaVQWZRKTeM4Adm4WsBEgO8ID68XkAwcT4CpjaIZFV1s0nZYyJf4Z61R5KYPziMNjN/U9llP2FDoMQYJeOWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769129635; c=relaxed/simple;
	bh=dQyqzzoFQBECD6VgHskiPjZDfE3ecUwecrSkvMLPygE=;
	h=To:Subject:From:Message-Id:Date; b=AF3WV/F6jrFegvOVd2SAFZiXqvaiSny8DXTCMH6XIBu8zDZtqoFBU24ofUZLQqIdOIbcLwtOqEFeOTaA6Iqead061dtQ6IfXsNsD7pfwYnfxasKjMk+4DcNg1rcBgsCvzEJ8qfXwHeszH84hG87ZVbZ0+zSqhvtJQRmBLFXIe7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4qKFoku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4qKFoku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8135C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769129633;
	bh=dQyqzzoFQBECD6VgHskiPjZDfE3ecUwecrSkvMLPygE=;
	h=To:Subject:From:Date:From;
	b=a4qKFoku/U74dt08hrcWAtclzh6CErvKc/Ogr78nks+WMr/XmAVDv2bMRMd8cvoUr
	 axvF0etdXdEl3dqcTYw0iBjDf3Rldso/WeuQb1Bd04G+6hQrLsTZ7AQ6+xMPk/Dkaq
	 RxcpanGw07q71c+htMeHtqpPJ+/pbRh4IHvbAObNsUaxWV7E2FUhY6J79538zfjasF
	 bjkFzpbX+r/60S85bzpimSF3bb8tl2cacMet/pqzpFb7i0KjHNuTK+2NIHtWjd0hj6
	 GIvXp20G+FF7Sn6RncTxXRaDBvtiguQxVnCHkUPEh2JYd5lCofoMabbV7RlwPYL/0L
	 MMI4kgftITPIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F85D6CFAE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912963361.12070.10539412203898823886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b8422ebe97b6db21d0226b44fd0ee03cbb9493dd5f88154b565faa3757780e
Date: Fri, 23 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769129633
