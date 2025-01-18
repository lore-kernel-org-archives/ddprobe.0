Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB4636D
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737223554; cv=none; b=RDasDZCsTkfUG2xORWKfKaG/HbahRbyw+utBJXHq/5BwlcDsl+DQfsoJJnZTlyM5LVBV5JAYR3XuVD1tXTCvGT8BtG+NkytbpL39tabdxIyU5cHF92zQwmcM6A5cm6td3LjU+k5Pz1Njf+2nQOymcf/2i6xXmAY/nEo2Oo/2x7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737223554; c=relaxed/simple;
	bh=DzBpFoPGU3uCjQzxkv8U6KuV1zg+MuH74x9GhNl131A=;
	h=To:Subject:From:Message-Id:Date; b=apImHQJbCC6M5+02TQZQ/H1+yUpjoq5+1XKa+18rq3UtUvnL5wcGbSejYxeZZ7yCSMCiIsSUOmp8sDLWslwrbJCHqYo5orOtjx5CUSVIFjwz7NRmJEc1671ibjpMTTbp+IEOGjlmA8Dk3S+kgsh3LoHcWDz76WYrmmczED0elOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFewQMyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFewQMyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FC3C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737223553;
	bh=DzBpFoPGU3uCjQzxkv8U6KuV1zg+MuH74x9GhNl131A=;
	h=To:Subject:From:Date:From;
	b=aFewQMyX7LYD7hWTRvhcIob7dqoS84egA2ZPdmDRGVRstQldKzxsmFpwGlc6LeW6b
	 TEDe/UClAPNvxa8sdS/PmNuMWWUvnXFh7/aGjJT4F67OArjTmRLKIKthH/HiP1/rzQ
	 2d75v5wQ/5hqKZ6nTnhe6BAbVKmC8tcqKjBeVaY56LA/FJsIkdbL5ncES4emxQLEF5
	 +uNFSRDAzMy+Ek+HaHXrAQX5tgAIPjyOrBiUBoWrBDEkwzr6E23V3pamx4QdiAookE
	 2/AgdIhAIjSQw9p2vIp3TobQFZmSWwd6m3x5oQ0BaXJR6TyftC0c150hT/EAYWbdJG
	 +re/i6o3ft7Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF73C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722355361.18996.6088767255447162302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab142335711648f21e23fe253c2029ede766e310d92d6f98fcb2df9b802d36b
Date: Sat, 18 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737223553
