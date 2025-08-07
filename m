Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CF8218858
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754610594; cv=none; b=b8i3Z/jhMYwvG3tuwgIPqBTQskOmWdPvTgiDS5ece3MBcdpYuPRlxJqro20zAqg0hxkAVRx26nigyOQtURYSPONnE1qxykrF7ZhSQFI4WmCjArddkz35UJ//CUm77x6RR79hS+fYmpJLp5ELg7UU2SXMNCn+U/CCcAj1lQx5XYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754610594; c=relaxed/simple;
	bh=eZZCe5GObNt8pC5Ezf2g16WjCcok1AZOTjAEm1jpDIY=;
	h=To:Subject:From:Message-Id:Date; b=GG1UaAhFQOWKgT4tpmIrhvhj/eclqh9uPJYErXvqfwn4dxMRfQVyHZXVU4HwipV0ZbUiUKTlqk20skc2ZYQ3C+/MMq+rMCeCXDdsOEHb3nfFka4MlT4OQxx3v7n0bDhtbsuj6VtdcnPI62PJPPati/cQWQVScvtfAsoYs6IMwok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/gPCBWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/gPCBWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F44C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754610593;
	bh=eZZCe5GObNt8pC5Ezf2g16WjCcok1AZOTjAEm1jpDIY=;
	h=To:Subject:From:Date:From;
	b=X/gPCBWfmM0DxbAUv0yy2fqUNhidwF4wiLY898QzTiZV7kZB/FTvDPDV2wflFUDvM
	 /zwCM/oRj2kcS/TcknNshIZzfujB4Ni7I3TPHOpd7DeSmFV0WHZvYVQhrHNdRsy3zP
	 Ldeyu2S/BTWvPIpUXLhWOZwsEqi8QoODLAkVaGlcTpU+OaMcbNOtYioh4huQDNZnWe
	 6DY2sN9gCNolx98rHoAuz8F58sx4Mswuu37ggk/00Q+uzLMWfU4gudtPJysRtL+u6l
	 mKuZlXEWnc0e4Rl41dQjUI/IPNfcCg9ZMcLexsSMUTrNAZ6fttu8orTnYhc7dmFAnp
	 jBG1L0eR/JlbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943BAC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461059358.3465.13410342465757896940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744a2e372b2172389ea98540c31e7df5a6ac5c650c770878c4176ca659b05d83
Date: Thu, 07 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754610593
