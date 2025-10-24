Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D11228DC4
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761274194; cv=none; b=Z8xu5his7fHxDdJ8ublv+ccUTT2gpJxyx272tRhzo/1zSR1QulF4vTJ5/6+bXxCk8ZGx3Q/G0wNVKdh0qIoVMBpVugirb/Yw7w2tAQ2a1m13w0bGm2a4V4cZkVn0tsq2HslsvTsS02AJ5W/SiYFbKK+625O7LTvO53UjbGvusQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761274194; c=relaxed/simple;
	bh=HYEcw9jDH7KTbq59v15+zLtpTOEREmJTawix4F8ZlrQ=;
	h=To:Subject:From:Message-Id:Date; b=UfP4CHeb4j5mPTiGPvSWQo/Duz14wguOcDh/Qfew7hapEfj1rMNigNUPVlyKT6yi2kFyT5Qu0A8WWTKBABcrFt+CWc2pyIY+QGNGjsWpN8WFPMBUfXZV3tsPrSxd5SKTdj+9gw5y/Hkc4lsDSeFhYIii9kz691P1p09nwDEYmKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ikym3icJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ikym3icJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2291C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761274193;
	bh=HYEcw9jDH7KTbq59v15+zLtpTOEREmJTawix4F8ZlrQ=;
	h=To:Subject:From:Date:From;
	b=Ikym3icJpRHwIdqO49ckQRyKOQsopRjfyWl2MHIzz1xSGHKGB474bS2MZkST1oMJz
	 CG6efgpiu6p17jEbmTgKZ7b+00SyERmxo5VIu+IRdEZpe1vUiLKqssFxr54WtsWTGp
	 I/vLfDJXNdsYDNSmkMBFZ7RMTFs9ImGmsvZEiIMVnw1NMaPBOZ4uCzdStFxNY6SEHd
	 Yg30fH4LNa1rr11H8WXI0KtO3z7iOeka77GwpvkhpW5N3B2xeWRahvGmz64qm848oq
	 Q6WRxu7xMRzOr5hgCXN5AyCzeRHaTWd20af2ZcrctR8LeecMuePRlphBvjQZzZTHto
	 PbQ4gm/+dqkNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4ABCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127419357.26340.10974400277055997695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fe778ba64c11c2886f9013b6f696df90f825835482f0afc070e3fecdae56a0
Date: Fri, 24 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761274193
