Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8E81DDEE
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717362923; cv=none; b=oBhTRhY5654XZYflaSKto0vac/RZsdDc/sjQ3zbpXj/KkVsnxDRnKxXmpXWgCaAjdi/NFxok3efLe936uAO77VvTRZ7fWeCB7CizgTsdDY6+P8cYVetAgxSh7NS8xkRaklywoM9i9RfDQwSfcBXC//Mz/HHJJdi5051fCdVz2VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717362923; c=relaxed/simple;
	bh=I7BvPgWNNxpy/LW2mTZIzN52f5tDuyI9RCzopwGPHx4=;
	h=To:Subject:From:Message-Id:Date; b=ugEDxgxHsredg7I4ugT5ZlSirnWEOm5seMDiOnixTUh9uwdyZu8EcVsSkLvd3YSQL2eACgDv2/J7coFBiUjcB4p91ZpMeQYGLVot+8diuVIgAiGPjEEcmtHHLcbALzqL55s8gRYLMdimop7M7yZk1PQoe9h6JgP+J9vGOQVFrkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zdl0v4WX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zdl0v4WX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0E3C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717362922;
	bh=I7BvPgWNNxpy/LW2mTZIzN52f5tDuyI9RCzopwGPHx4=;
	h=To:Subject:From:Date:From;
	b=Zdl0v4WX9UBPDi3H4n6tki+QG21G2R8dkettfLZsUjAukJpLd5k2WvPv/ExhfOrkH
	 fpedGYCylMGdECV7evalrhPbsQIh4b4o/3qw8Hk72qAjnvDmGeR+0/EaQ0iiLpRJHF
	 cubnmuZTuOvCtslJPJ/b6c8gaKvuzODfFVc9N5d0b+R37ZhST+k3NQHDoo5ZBp64Il
	 QNBm+aG9ABGNFnlRVCEAiVHUPkpgxyu7GCYPXvB0UoRxcU5ksoFx6ZdvsyEv+EU+gg
	 Qf4wUskHFaBmRdiXQm8jsmvaWvkRY/dMAHiOQxnKb0Cgkm6xSsp/WiN7tSEIxWzspc
	 hYGKvvuGaOGlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7315C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736292278.10891.13352516029120674190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481e48f30dd7068b6093ca8dac82e565e290fa0cb4375be5a5e11ab94382d197
Date: Sun, 02 Jun 2024 21:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717362922
