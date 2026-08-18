Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AC82C15BE
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787055634; cv=none; b=G+Qe0VJZt1zxomW4CmxzlLxt8Ll5u/yhLhPAmJm8SkUg1nT7C6slZIXonysNZAndhyE5ANTU/w0AhZTZHkPgiy2PuYdZgf3dg9ehY01MYPbcF6FMOCVRiEd7SRNSJWfCn+jO2+WaWrBk5BpCcXX2jBmdG0AIfRFQCTuMftrIPs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787055634; c=relaxed/simple;
	bh=7AuUGHZj5+MoE27t5eoH4k1SaDeuG6hr6j+TbbAnQF0=;
	h=To:Subject:From:Message-Id:Date; b=lXXxfJt1XWYB5h7VxSEJMpcqDjXbfjXZghhyLnadROFxoN6dk7FVhT+p3RmAMqBbc+ZzOATRijA+TT0Q8tpzKEr/goqs8annozWa8cxLOvoNm6TEmGLuiJv8WnYV3mj5m1ymtZ917cvMZImsgHMu4CmD3wjHJe9hO3DU5ZdTFKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdwzSpYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdwzSpYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE96C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787055633;
	bh=7AuUGHZj5+MoE27t5eoH4k1SaDeuG6hr6j+TbbAnQF0=;
	h=To:Subject:From:Date:From;
	b=jdwzSpYdch19YaECZyb7mugJQqNGmfZAhhqhWBaO2FbNf4fcP71bfjCjKsbdXzMYW
	 bfFurDARTaWuDBnvoZv3sFjKDKggNAhpuiOyIjbn8IM95dYRcU3rMokdZ5/6zSBhKy
	 jLeDo06cSKFNzlnfVhhUKZisFhBmyP/SmTEtO+evrNoqDNENViqFALNon9svfcGwaB
	 TXAaJ+EdwtaLX/YoVL/ufhP83Gm8kOujDh1g+gDahX2I6ZRDl/qRBl8NGJD1ZrZVwT
	 CUNJMIUsFtdJnokBKEXWomA3aUb2wFZhhpjje6uUehu/ZFnoLfh0uEHHvs/p2G/uJh
	 qLglnk/AUeVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9757C5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705563368.5098.3961487010981533525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abeeb65747c201703b2c3d51c19dbcf5101a8c2d2d00acad432cc1145800068e
Date: Tue, 18 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787055633
