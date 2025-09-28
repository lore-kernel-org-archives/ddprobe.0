Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCA71F8AC8
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759093794; cv=none; b=mLumAQglP4xwd+PvUQig1hLhp3p7zDlOdCUccTiV4rDGGToi+PT7Wy4gqqWR0HFBpBImqxB/O6l0i246867cLLsRNCsgeJBRc58E/Ze+zxcNKinpauwHyG8HuxNM57/7fuy609Dx7id0Ef/PPsqKdxeIz9qAFFag6dlFq53nnP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759093794; c=relaxed/simple;
	bh=zTwYy2AiqRBm87ghhwG96exLWnLwUjTYN3OBieoKTOw=;
	h=To:Subject:From:Message-Id:Date; b=PYFyNX4XJLgTvGPURjW0n3sHESDPZbdAEnG44GDf05aD7XhKWByJmSqJCTSusQnb4w4v91HRAVKIBu6l0HpvaF7PzV7ajqWUVQPid/ZVUJoddQGGypxlKk1dEDx/07iJbPf9g6g9UkF32eYYWM+rTk+UN79ycqHmgDlwsYhTpwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5lAqEE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5lAqEE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0A6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759093793;
	bh=zTwYy2AiqRBm87ghhwG96exLWnLwUjTYN3OBieoKTOw=;
	h=To:Subject:From:Date:From;
	b=Y5lAqEE1VgHGdt8arzRvvyK6VbIxVAVvs+8yE0iz4JSQjp5RuFC+OP9YE/GaCVzsh
	 cZ4zcxW8kqOK4F0FQXAKxE5ed0x/MbYRLqL+M20mc+xUM2gZ8e47RJnEMWZM+a9lo1
	 YyySGhgYts+7hms8+4BN/Bz3jppxj0XIba7+BFrok1dtE1Ij3affxrRrYN4NEqgXqk
	 tfSFOfk5TkjvrLgfE/WM+PAtQqz2P5AY/24+2dzhv5xCvKokulcwsZ/4hGiRlw5abK
	 9Sp2YRw+Ft/THbUftolm/u0+UgunlKdngYRAn+i6WNoCqmliqrmDwSzpkfxWYt6bjh
	 7blyfpdPxzp0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F43CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909379359.23966.16565205348475860286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e77e17cb6a2990628c305c986ab48fc3ac51fb05f3e70f812bfe3fbd6143b5c
Date: Sun, 28 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759093793
