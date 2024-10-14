Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDDE231C9F
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728880554; cv=none; b=l/w2U3O6I6t4C5+piIX6qXdF/Ad592hEx11RGcVyPVMcJFbh5Qy5o1AedYfdKdpyK+VPKlZRC0OttJXy9rH3moeN5gWSWWzr5BSroj2BS8pcAp2HpLKPHUa2oXxctFPAUoIccU9PY3u5KRr7meXLNLj0/vh0jHmE4zN0L2b3G2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728880554; c=relaxed/simple;
	bh=OyI/F7ddmEtlEmH43KgsBrOrGoFTlwtkb1EgT0RfCvs=;
	h=To:Subject:From:Message-Id:Date; b=F3QK/h5psEEJjNJ6OBCHc16S02+vjFHuYwQDA0hfzzzu21LxJgUQONtnJRvdql3UcMlmKIebnLa+UncsB4nzw3beJXEbuWRA6CC2LStSuPfOQU/oZ6iyf++/wbOiNJei4XeoOgzQq0ggGXJJAR/e2cFQhCG8rVIwdZ4vp4sZ8Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7Ji9mV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7Ji9mV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA884C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728880553;
	bh=OyI/F7ddmEtlEmH43KgsBrOrGoFTlwtkb1EgT0RfCvs=;
	h=To:Subject:From:Date:From;
	b=L7Ji9mV9JFVglZ+poXIiTx1RaPttsRf5cbjil+zk1fap1wnGb2euaUi3jS5ziXPNl
	 Rfqbq/tpOfFIRU+Vn8lBr1Xq3WTUKjLMs/MN3eESS2OZc8wIqp3aikBXM3EgyKtes0
	 cBmHEreqO3QV2HzbiYt8d2FeKTdIYNiAbZvyejjHob4WFCum90wEio12ybUEkGipn9
	 4wbkvv2Ep94eZ6yZHchkLlu0PLF4jEESl8dg2bb0fDxdPDbyiif5Q2FrbLNAVYxgAI
	 v3c5ksdgI8deVAdAZRT6VKvKTtZ/7CdsdzQRuMLl7yticynXytqikLVMPqY8w635+Y
	 7vmEbpB37oO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FF1CF2590
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172888055359.18519.10744188790797761003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b304aec7d17c140797fcc1e6ae6ee5bfdf6ff204c27f4d230a79f00b8949add2
Date: Mon, 14 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728880553
