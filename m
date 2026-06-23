Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31051331EAF
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782196594; cv=none; b=f0x/LLN60jgHVbPkDcrOLW4ol8jZxAdPpE0ZKxCfXORaGU6h0UsZoiWQOH2vx/Dbgg5x8g98+7jVI5nsmNXUMs2EhpRmEHWqQwNm8nQQOfgxKMOKd+L3mdxNvhLTBNJ50S7fIDdoRcJi1pHl5njVp0VtScD7k4j/4Bj+VWxD2io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782196594; c=relaxed/simple;
	bh=GTwVzCigRml4bvxF9Hhn6aYhtoB2GZ9R1lk9psblBz8=;
	h=To:Subject:From:Message-Id:Date; b=SEqwMuZZAx02pFQEIMyTI0cdnb8rxkma44mXLA6SIoAN/txWz0wPvqhX72b7cOZZqzw6laWdT0BX95NkSU4zG0lqLZ48nnV0J5tPW4IShSlOW5AoHOIkfwNV/D6X8UE9uzi1EvBnWB0F1FvbeR05WEauJ6g3HX+/9yh8wpup1GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmo2hU6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmo2hU6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52ECC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782196593;
	bh=GTwVzCigRml4bvxF9Hhn6aYhtoB2GZ9R1lk9psblBz8=;
	h=To:Subject:From:Date:From;
	b=fmo2hU6Y8iCvvcFxWN1EuozD14cvBMR/HnovNiXZlXamVHX4PJ8GRra/UVEd6pa8v
	 trwBcWhbisuC4LlES8w604bJwp2RIyanzRObIC+nxOeqm9DdC/QTIjpshZBiLSmbDC
	 b3sNGmv+Hch0ZC7/InjHfc2UGsQE4TEXLw4CATo7uSsscazaEp3yxE3b2CgmFZJGyR
	 +YXFz6IDuyKCiLMGN03fG4D+JZNKO6KNqdQE1Pu0KI/kzhLrXrWV30IVSAHtYvYh/b
	 Jik1+82N07BItOnrCDl8Bm3D/xgFWbW8S0VT/50k3uL6q6F39audG0jvPUwzfNAzr9
	 2hZYe7k+rKhpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B39CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219659368.21863.8102201180765285234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12502800ff5f64a87553433e25551ebf3163326b34c24015308ff849fbbd08e
Date: Tue, 23 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782196593
