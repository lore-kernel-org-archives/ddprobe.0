Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447AC1547C9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738223754; cv=none; b=TjaQSSotQTP6fPTKP/9YybAYV+CZgFlQZCalj9VsgoaRDM5ZJLWjmOuAP/WaOZwcNNbGNNmtE3QeBCUmUVVV+5iEVrRE+ydupIuv6HTHwcBB6FQP1TYteCtmNZXwIl30UV4kRMw2DPANo7NuHnnyUc7f1D8Mw+ni7tMdtzSIkjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738223754; c=relaxed/simple;
	bh=iwLMhiuYYIoqwCOkla0Ns5PE3neDi/m5lZulShr/Tgo=;
	h=To:Subject:From:Message-Id:Date; b=roWrLG56jcquTyNTsZRR7OeYaCdZbwQtV+ykOWCxF9gRFRLMZG1iORxCda9kS27dXpDx3Axi14yIijedvv7jQShk3BEhuXSHwhC0BZqevMbgM6d/5kQA9v7eAuoN4xFlXadLZsjqq2ZglKmtt2iar2chN9MzKdan6SeDwPTwAiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVsaimad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVsaimad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61B1C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738223753;
	bh=iwLMhiuYYIoqwCOkla0Ns5PE3neDi/m5lZulShr/Tgo=;
	h=To:Subject:From:Date:From;
	b=CVsaimadc9CJBFMoUHRYEExKpiIf8+Ls/rTxqbg8MGlmkv70Romjhe6xIKO3ETV3Q
	 5CzZXsMsTuPSADPCUF2RYOjbexuCocQFss8X4bNrQ1qlFYYkyI2gIgYvHBXWKrI80N
	 e0JdBQi++51FFxJkb6rMnPH9s/9Go0MttKn8wB4rYyKP9pQqACaTh9XFC6VkBj0jMt
	 N23Z0Oul+2H9zgmyZjdjz61+pITXYXRRMV0MSpBAFWgjcYSi81u4INb3V8dhkODFtB
	 YSnFGRCW0m2kDwLZmq9Mqr1UFkmKry8OF9R6UTQaCjQe6irp16OBV17odeNLDTXA2X
	 0qH13ydx581WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E84CC02190
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173822375363.668.13399081532193881385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfc9ab98ed5126f208c7c8e098d83e3e166ebf399c3b22354290a7318eba995
Date: Thu, 30 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738223753
