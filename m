Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1A32472AE
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790542834; cv=none; b=ZMeew/C+4yShQS7R3AhyPP7XQzlT/zkorapZqSqPG7IaEgo0CJqyznLyChaCZw0evWzdfWPFn4sdMsDmPmqakgyn45axwCk5pjx4B4q61TeHN7T0BygitVhHFV4OaKdTMHdmlCWNEtHN3JyRxWQy4488cKEZnLoCvB22muUsgB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790542834; c=relaxed/simple;
	bh=aKeq6xc2WYfCeoXTOmA6JNy20wUcRQOvXhQOmwq6JCQ=;
	h=To:Subject:From:Message-Id:Date; b=MJzqqGmkD2McwtNqDu5vRPVjNiD5xfiJPAO/s88y9VigGK6Ohr5YBFDCZyF0Ovd6SKMScZcyEbMZil4XCXlaI/x5cDCONSuIAMC7l2xULV6EinZkMq1LoSsaLsGkL8FxWSvqxoE8wTAcXDGk3oROpM/LfoCnp1aOCugJtFnpZVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTnNGk4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTnNGk4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D444EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790542833;
	bh=aKeq6xc2WYfCeoXTOmA6JNy20wUcRQOvXhQOmwq6JCQ=;
	h=To:Subject:From:Date:From;
	b=nTnNGk4TUfE67O09znV7oGKEoNWtOYurQo/FUHPTemdQzgdyArd+WURSjhVAFpohY
	 gXCLX6jhBjNpurWQ3S7g5HE0SVM8ZYEgoE/jEfb/bCuBLGI6HZBBhpjJ5TfYIVTw71
	 ci3p4Oz1Myd9lBBrRo2Ika1yPXdXeV3kY/CbIcSVJ9CzMWMgSvEQHLFFoQgcvjMUKq
	 Hi907eGOzLCChIdFqEYCvuEhmnX6WoflRduNP7xXCVqaqOYxCrfTV2iXqoqc0CKk9j
	 o61e/eZ3vepstqE23qZIHoM0go5lNkUBsqVb6j/tipy5B2Ham3bISXI2GEglGLpGIy
	 wZAOzDB6aSwvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B9CC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054283371.16454.6989268550099670445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e26bc7a665858c9a4f29ec86b3ca750536338f9e65b10c51d38912dffe676d8
Date: Sun, 27 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790542833
