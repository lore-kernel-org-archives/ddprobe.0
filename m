Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A03289E07
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752132594; cv=none; b=EtkW2k4EVdtEfPyrD55XFeyE3Eo5Zoe1V+S+4ZAuD8Xm2cevvrlbN8ozW5BioSYQTr0URqwm+Li/86N4Zo6Q7PDLcQkBQ7GbTnvunlmPVm1XhTAP3SPsR1I42zvg6pdIC6VtMhvJh77cXclQnfwXgiuK0ZE0XFtk2r+DjAvNVwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752132594; c=relaxed/simple;
	bh=4OG/MLheuFcPCB730Go8BcO0MpuTgVUJPXRGeg5eoGQ=;
	h=To:Subject:From:Message-Id:Date; b=odmsEo+pwgNIkuZQz2KyPz0zX4guOxAJ/vh1/Fy7eQAC4Ygz6yYGmvjBxwQi2sMvUlxj6quFgQ5MCo6OwBZdseYAI8fM4cSPKlp61Q/5rg32RetaY5RoJNuWsZbcP1U0dO8nmpKxhwFd+RzzTfW6SR7HM4vm0/olnTHhT4AU3d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qdrwfnyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qdrwfnyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA44C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752132593;
	bh=4OG/MLheuFcPCB730Go8BcO0MpuTgVUJPXRGeg5eoGQ=;
	h=To:Subject:From:Date:From;
	b=QdrwfnyiUJVLfMWuucmJFDoKWx3wZNIIPH2cMimIwiKqI1pev1UyoQltwi+kc1EsK
	 vGgiD3iXbzvkl6rSu+BqWjLh7DHcjM5XuxKoZZRlN/gOxk2mwIi5kCk+UmRrYuR1k4
	 QCRHOmQ/y6mO9yCOaiJcXxuBlRz/de6OIyqMSHdaHhQS56GgA5Xdv3JE5qKFA5ELvd
	 +vmy01DZtuviVuHE7IfGeY92aaOy4bwCT/xHXg8eknv4XY2LpBsNYTzmSoJ+Bor7qu
	 zQQ1vRIY9hkH74aYD+V6WsqXK40dvJGYfyC/tzRGG9bdDhikdRxciC3bthtjDjcPKb
	 AWEOlpNaruAlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB9C83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213259358.25697.4465694219437454276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccd4865b8519f2c798e2e6cdde5b4b314c63bd4b2560b3305b55eea0fd4af40
Date: Thu, 10 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752132593
