Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7212D1916
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781049334; cv=none; b=EAJFkYKwcyApHTeU4GUCnB7eAXYiB4Rjo4SDyN1xQrWxiAFcXn8GYgd8l38/r9nNa2JewqIcdCewophMQilAMeEca2lfDsex6w9NeTq43QuPWozCdkWlpwUIxROvf/QK58/ZdeqiEHZM5MDTrkpriFgqDqFNlYBfHVD/UivCxxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781049334; c=relaxed/simple;
	bh=dnzh0cvKUwD42d0KMkc0z9mk5ok7oGew71giOIvApRk=;
	h=To:Subject:From:Message-Id:Date; b=T3NU5VzHbBYS1xqy4/Fiby/Loe7qaBYh+2roH/d12AgeKBr/L1tyXDGnEAgW4kM81DjwghS6iX3cs41eSvSufk0hqo6pSEcNqAcbyb7vQFmUkuqiLMBtCVjkzO3KBx3WM2X4J6gfg+r2WDM1BvmMi732hgNEDnnrqcQPXqjM5Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqVetP9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqVetP9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5663C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781049333;
	bh=dnzh0cvKUwD42d0KMkc0z9mk5ok7oGew71giOIvApRk=;
	h=To:Subject:From:Date:From;
	b=TqVetP9mc0gY5+XddKPTuHVP7KQuNx4/c86qg40yuAixwrJlRIN4hbHiYsFCossse
	 8JfM7FwjyIUbmNPxXTEK7KrOd7oRD02BgQC32a6ZuDbr+k2PN9hdvA6L+K2JwSktUE
	 5A/YjCMSB0dDj17S0gvKQEX6fMwQClDOacINzuIQCoQViOelgKvAB3UU/nQBSOuv1/
	 7HHikUD/5lj9pOTxZrHs1W9pCPoMJ5638VRlYkKC9p39Gcclf9TxXVYCRyV2HhuV4y
	 7L7HSjzx2jEf8Bbr6r0pULX47shE68zCMHkNIHX2ioJHUQ+4KHRarEt89gE5SeesVl
	 nAsHT0xSft+FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7BECD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104933368.31022.7866206561971098746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8095b37b3dc5b4e98e1f48e5f244fae50a6b41693ef7b7ad4b8bce5edf8c0b
Date: Tue, 09 Jun 2026 23:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781049333
