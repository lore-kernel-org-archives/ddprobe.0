Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4252A181325
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 16:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721235323; cv=none; b=onJKq86cQd4Q91DFI3Rk7EPGAUoebYxkDkEpbQYQD+W+g4/dMF1+cvKRoXlBxT3Tiz6Pjw8NI02tQB3XE1lh+Nz4aBLnfo70ONB8/1PZaOwOrCQfSlcl2jZu+v7sPs1czf8Kianh2OitVfMplPQdgLOyXVMIPGC/joDEzJ8kHVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721235323; c=relaxed/simple;
	bh=xKf9O+AWo7pWcyiiI4zQghYgarPJJV3Q1vaCdfwjauo=;
	h=To:Subject:From:Message-Id:Date; b=GQsBvy8p2pYqBNvPZXYY/KQ/7HKLXt8jX2pEbdrBywH+HfGYAhykrtrctg2aIRh9MJDu7SM8qAI+bFTNOHik0peFqtys7d4CTl3unX06zGHIRdED72mHvtDEPRkQCnqxWty2PTua5V+63gDxQouUfEQsMb7ObV/o2U2UNHE7uJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK7UQ7GQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK7UQ7GQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7259C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721235322;
	bh=xKf9O+AWo7pWcyiiI4zQghYgarPJJV3Q1vaCdfwjauo=;
	h=To:Subject:From:Date:From;
	b=SK7UQ7GQO74+A8OwohJiM+V83I3HRq5HNmB4bdpfEaZLjXSqSGG1NqhnlUgtghjHQ
	 K7EJKTIy4JeTJUiQe3vXMpJgFx9wVhpnnyftOcgl78/YBtpv1AeVys9HX/Xq6Y9uLk
	 2UgS06wR5+tBE0JYgYnhvl7NDcD5oTL8vNz/bMcPwM8e72OtzHAFDGWK7/Lf4adBOi
	 u7EB7fcHJpAPziWjqsJYXgfu8qkleOFR/6Tx6FlIn49+VecAT3Wz5EzphU7bI2DpHw
	 z615FH9+MmH7IqznNz1Kh2IjE5uyJJ63uXCyJwt78ZIJQUFOJnxa8e4OuSqN+NazQN
	 rwipUNG7T3b3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19D8C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 16:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172123532277.30942.4474934545823559991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bfcb31b98c3d75c4ac34caa0e54051d554d2bcedf728a83ac2166de9e9c369
Date: Wed, 17 Jul 2024 16:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721235322
