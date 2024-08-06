Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339953B182
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722957954; cv=none; b=O3QgnQWq7trgBwZdNlY3BfgFVXPZYXkj3Hq38mIiLLBq7AR8FjugqH5xt0e/k7JTE9ug/c2a305NGq8rb+b0YVY9wijjRlPpOL5tjXlKSfaYvJ2Vh4hqbPDCyIrjkzE6Qg2+JW43Ng9CYdtR8RZkHDpgIgUV34+GlIOvqFQ6nuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722957954; c=relaxed/simple;
	bh=Eh+u9mb7ZkSn8mH2HmWpexandhBd9Fr1zL+w9v0GQMw=;
	h=To:Subject:From:Message-Id:Date; b=EegdrI4tjtTfVBgJ34N7ScTN/YltmrJzzjAGv3X3PZnLMhx/9TmFLWI910ZnImRqFPg/ccLEELno2g4WXmePOWthyyOZ1mWVe4ecbrWRiDmE9n6DKg5vR8QwBc442/jE3A392yEaxfRpebnMtitpul1dzqTIjVWN3U+ZoYYpfuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0NrILjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0NrILjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BC3C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722957953;
	bh=Eh+u9mb7ZkSn8mH2HmWpexandhBd9Fr1zL+w9v0GQMw=;
	h=To:Subject:From:Date:From;
	b=Y0NrILjn2d5DXPY27+GVi1qD0L1R13o83ldlHfDaOtQMwZomrceNaYpReGgFAXLlQ
	 t2OxPC8Js9OmzQTCWkgnrfbtdZXBkmjJpW+ylFDYub03zVEA5xfH3ujPi7oHa8sorD
	 6lk9dNEM8HEiG/SLkzI53zLR6DB498/ZK+JUZw/7GbhdhiXoz47hu8Nqa13eRnIjkJ
	 wrp+/ZOS+um8DInR6/6W1Za8QwHluzBeO7/SRjhz0EMyQzhsq4NJ/sTVOd8X30GTPI
	 7ekUgmY9UPCP9pTaU1J6X3ufnthO1TBbEVaUS9TIXXbsPH6jG6M3dBUdGgnAkx32pM
	 Zt+wkMx6ABQJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CFCC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172295795364.18170.844966402858701018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d8349e3c5fabf01039a820ba8a4d5630fe6b9974b6ca6c678057171bf79b54
Date: Tue, 06 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722957953
