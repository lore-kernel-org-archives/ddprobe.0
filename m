Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377EA47F2FA
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780093414; cv=none; b=jeCrRTo4eCHxtDTl+J6RtUMSva6+j0UDF9UFJ26o0nw1m6aEyTSohuPkeGgu2x8fZJy72ARgPf81LlOdGkvLw5QD8cl5xiGgdv9EtOdjHqm0hwvbemn5JB9dcYWTTBHzGVTJekr7ThSPRHklwGeRx7iVVRHcH1kb1Kde2Whj4iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780093414; c=relaxed/simple;
	bh=kQMJQBz7yYHJ+suktz3GaRn8De1TSGTF+us9Q7VK25w=;
	h=To:Subject:From:Message-Id:Date; b=fw6cEc9rj9WmvhrI11zh1diAgn9uEpdZsXQr2Mg8xTYB0VR+y+ew6+MZ/RNsmsSNnda00ec6MZtMF/CAYB+de9K85UwtWrKgiXfo14z8WVGDZe8lbR2Mb+J27wzyRDoMr4fESGV0KJ2/tLx++LzOnQA4ldUDEaWmithU1wkBsJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rh3f7+9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rh3f7+9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9A4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780093413;
	bh=kQMJQBz7yYHJ+suktz3GaRn8De1TSGTF+us9Q7VK25w=;
	h=To:Subject:From:Date:From;
	b=rh3f7+9vvNVMLWgwFqQWSHvdyb/WWU9l85yM7cMJwuHUy3eYnXsy3AHR0Fb9p2kVV
	 dY/c+grzIue0JA+y2MbFdU9CRPGxQskyWon7t2d2IKTJCLGl9qXG0ClvAT34II4IQz
	 EXVHWrusjqP6hfyfXSSYAQIY3ms6bw4uSJfYFl9DVl9ghlvqOGiUr1g9gsniOMQ3FR
	 JI1LZFWNSFKAyf+vm93N1xcLxY7ASzMVPuwCmqk9gZPy8EpPLe/8suVTNSyu/+Fizq
	 pbN7xsWzguOua/WIAwJLpvZrU3o1CyreTPW2+6SCqK9xcocdCrDPfLE99JLnMhJc7d
	 0xHK4vnWzuPEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9326CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009341368.8341.12612101609696029030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec31cd7243c5eff4cb3fa163210960b50c0cee1baa0fecb665527fa8069c5e7
Date: Fri, 29 May 2026 22:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780093413
