Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B37C3FBA7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747103994; cv=none; b=u8bz3IM5ubl5rn7UH7Uad+1ssYfcZy0kvOIsj/fPHkmSrrC/VP0fCUzv/wFXGqSHwhFS5A4XBYyeZQp68p1V2wRLPagR11wyjcQI59IX5ufmSxOmacCaGw2zeg1PRr4bpz427Or+mC8UyduPBH9mgei1mswWOrOP2wSCiGa3WZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747103994; c=relaxed/simple;
	bh=VWor69NvvdcBXeiRCcpcZe3DRvJZiAejltWNR/H15Ps=;
	h=To:Subject:From:Message-Id:Date; b=NTDaT9ceY+idbHJAf49loUd+6nXoQLt1h1wsQPysvwAe8Q6RnRrDk5q1Q/Lm/kGugPga7BS2J843iKa4R1wEDSQPukADG0n2yIIgCOFct1ahgg86ZT0Ai5RBZUu+QBLotDBIXhmMGr7HElZ/U7/qt3NC6aiiD7NUFgP2SEsYyAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TD/rNZLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TD/rNZLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D37C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747103993;
	bh=VWor69NvvdcBXeiRCcpcZe3DRvJZiAejltWNR/H15Ps=;
	h=To:Subject:From:Date:From;
	b=TD/rNZLMaLCie+enBfUvRCtnEoZah5b6zsFhRgw2NSVOErX1FWGdi6K0Ft6Qu7w9x
	 pxCpqp43D51cdm5aG6n9j1qqWKSTkeZHdH4BHYt/C4aM1GxybL28SCcM2b/HmuOma2
	 9jbBzH3N0Ai/Fx83vGtk8SF/Y9xgvBuQ+M6ALm10wk5lCP4DI8KUJm8o8JAeF6JC4z
	 M75byEWVJCa5bb4NRWk7k6scVmQBiuBZ/WRM8nWxAWLgqmqtPie0705H3/pIp+CFP6
	 uK1CIhtlZk5/ozJasF/6M/RLzvzrezKJ/FBw0WbF5ZRFLP/Cx4sKchtCB0/GWQfTyL
	 Pg1Q/ScsRfbnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E57FC3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710399357.2601.17783957660940888892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f38f52a6f25b7c525c3a9b0f409d97623e43a57be1bcfe2fb2cfe19632ae097
Date: Tue, 13 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747103993
