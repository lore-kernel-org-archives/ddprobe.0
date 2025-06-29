Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEAEEEAA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751166594; cv=none; b=NpU8k25aK/I20NbpLJOEKsgaqNUnz+hPGzb25431x0x8RM3Blzl8OB4D3gDcNIi7JXmMXOYzQ4ElerNplXfVtJsG6+kVs2IIkyXXncyt0aloWZbc/AZEkYPNM1pFhdN523vyr3ml+iMIqCVvDrCV9avi+5omREf8RfzqEpltxeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751166594; c=relaxed/simple;
	bh=qTEIBZuuLubIqNd6i9umq6OiNKpafKSDGTyNra7CzYQ=;
	h=To:Subject:From:Message-Id:Date; b=VJbXW+SNAmDZpKqoEQ0nC396Z7ZbyH2N4L8xCraoQsfqjWDCORl7qgvXHSsXh3jjmCSoROXPZUwlNcS6z4+UUmdrM7EI5lQ7GjOpvtF+M4wZRyAJ/0upYs94ucscKwbpD/DYT9kBKejt4EPHPVg3ci2dFgOvcbYMlJiDgEzV6Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7ghGGTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7ghGGTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63C5C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751166593;
	bh=qTEIBZuuLubIqNd6i9umq6OiNKpafKSDGTyNra7CzYQ=;
	h=To:Subject:From:Date:From;
	b=h7ghGGTlKJ6j28rFD/9eIEMvrsB5R7RcpybmOaZk2YJ36Pch4itECvFxMW6adX9Us
	 /EHFIfIcgTijsjU8qlE2DTlBaW43nONFLMdWUDKdNRHLtLqemDEhiXZAMZy8JSLePt
	 l+ehLxz/jK3cAg4WDsZ5M4NpkwBa7H0xDS2mYABQrZUZ0EOEso6qBdnl326F7xo/sv
	 hR/B1+Vf9PXbwAeL2MezL2EDf29Hv2YfAUZub/eXU0YP92VYzzTN9OV97Uc00BkgQZ
	 dfYURC0vlO3GKQ8FfnZabUfkYwMniKmzHX2ojO1LtkpTm3RP/GGCzA+5qSdoiRj0SC
	 xCSDfFfRcmmmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B51C83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116659357.30048.8776587545331420928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bd2e50b1b6c0603d355fd224b9ca02b9aedbb84d5c63f76d683d1336f34fe8
Date: Sun, 29 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751166593
