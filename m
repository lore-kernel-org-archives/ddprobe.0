Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFA5200B7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 22:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721860555; cv=none; b=qLMT+am5RQ32LcZHNouJ7gem+HJ2n/FC4K+8voAiCo4lUvNTibFztV9j+nZyu69AORdhNu8SwIu/QJFb3ILLStz8K/j7CNhsFYexzhgL86BMV9L0rF61Vw8zpPG5lYYP4HRuPJG1d9AjNYoUGFy+IdnYDIZA8a9xY+MsaqZu3ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721860555; c=relaxed/simple;
	bh=iAWvPYQgEv91rQVfWgjFjNcrSB4vWXcm3X3kG8pYOgo=;
	h=To:Subject:From:Message-Id:Date; b=iJ1jzK9uo85TT/4ObgJAKapEJx2TDiLTkrGVLSHDVoXbXdJ3Ew9fQHAlExNVAwaMPi75A+ldSR1H+b+pIeDkarQKHGbTF5VuQb7zo3Niwor9UZF3tMqR6wLIypUa1uQK6IH/AljYFJrLgmQX9LXZgeSeMXcnGniRffBgIeGXj1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdMu/8s4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdMu/8s4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A362AC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721860554;
	bh=iAWvPYQgEv91rQVfWgjFjNcrSB4vWXcm3X3kG8pYOgo=;
	h=To:Subject:From:Date:From;
	b=bdMu/8s4xYde9MY3r0CbQdZJ1WS+enVusundfSaid+Pzhb+n8zhp3UvKih9KdkG6h
	 YQ+tC9rCWEKmxkjkWQ9zCGDz6E4Sy4c150w3Cf9k5bF7Pu6FDNLrjAXwJpjMDiIkOy
	 xNxLPhl6LX1eJXcwKADD+XTa9P4wFVZ+TFig34Dnj6IOjCIu70luYNmAcmBWUMXG5G
	 swbIs9ZHsCCrXjWf9sdSAgBEL8gS/n/k5PrXK3MR+NcBrjA1W1ywtyqBFxH4fkBXhr
	 wdouwNa8OxhIkZixvE6FnbR2omJtDdPDPIBvorsGaymvvH4M/PMGeZ5TK8SodkDI5k
	 ZNUf9IjEnsLyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14FC3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186055357.21750.17512329216123154068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b4ce8f8a2382c68e83e1e6ace109c8effb8b019ed81c553cd2b6d6c94767c5
Date: Wed, 24 Jul 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721860553
