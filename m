Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB881428FA
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720898423; cv=none; b=IFd5Zuxxk+aBTMLvgBCvIZ1kmT68ofAcK+y63hA9oat+XBwkav3b+QEMvSjhty0Ep9w9YTnC/9ydGVswhx3xYbnRYqP8HhrpWrG70r32jnBb1gX5lfuDfGtDj9s542UzvXEQw22ZTwlSbkBhF6C74P7nay41WrRWtPWxDv7a0NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720898423; c=relaxed/simple;
	bh=WQi5trv5ycBxkxLRnD9v5J5cDfBQpvCb9QwTuATd4Pw=;
	h=To:Subject:From:Message-Id:Date; b=Z0Ad4w/BMx9KngjO2FGhKZiYIQzEJQ5tV2bt1GETzY/VdVnEm7+au95oVadmOin9IFbxd2FsplvEMK0OdeieEen6IkJSco5MMyqGxulBRPL5SR09nCBWBhHnPGFRqH2KjS67yX6z7+jW27hKeW7lNW0/hQEx3kLGKXuJXt6VuD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWTaj146; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWTaj146"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09EEC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720898422;
	bh=WQi5trv5ycBxkxLRnD9v5J5cDfBQpvCb9QwTuATd4Pw=;
	h=To:Subject:From:Date:From;
	b=JWTaj146G2m+LXqlxS6maNLN7a1dXXrTXWVqC1tUafOqBPvI6G7x4DLAvHFL/e9RP
	 Z5dJ69HM34wy+BUC0cHJhLm2EXzjbQTJAnu4wkRAOdTO6qtxD2uqVroH35QjI2L7/f
	 2+Dew8bgnnU43LhG8XFcnhqFkIR/mdONYN5KyXwarRh6SvisT7uSAmFjHgMwlh3RvT
	 EatJCHogKNlbq+pyoEl4xOkDxhhCfigYsYIPoJ6d6UXn/esP6cGG3Hli3XWZkwVsPq
	 NXiK3s7GiRqo1CGyFQUg5Z8G3z1Pr3xajlLE5a8EEibYyRNkyFk29GxTszm6wk6b/W
	 L05DYZ4oYA01A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE321C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089842277.8686.12009609952429448462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaee806e45c89b0d5441b4abb162d9ca4df7eba11848d91c9999edd20f6fd385
Date: Sat, 13 Jul 2024 19:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720898422
