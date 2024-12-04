Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4159A2500D4
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733285754; cv=none; b=WBTav9TdSxgVmIqtsYMSg+YX0JUNBsHKdA0Az5/1Vighi/9QJakzfK/O0rhGaYr1JfM0XNwC91PIsLcDtcVoe6JC1BVrWbHupiA8l5AxmmISW1eg1DaeGZMczRHBF8MsK+hGZEN7vKUg1qKHIvsSstXoYB7SQ5IfYT3DpwfWmjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733285754; c=relaxed/simple;
	bh=9SZs99NwnqMAF3NiQL2/2ACyZlQe7VZDl1t/tlL7VZ0=;
	h=To:Subject:From:Message-Id:Date; b=KUN+FRYK7sThTq8JjVT5Km5CNvFM8Ae2M0RmT9KvbEqatJxDKuFlm6SF0uYpx7HZv7IiiOC2fdHKN8vCmA5NMLOFPE9OmQa8XpZborrHP5K7F7KxuIcraDQOweLbnevIUkiWOS2QrT1tETwuu99v/jG1RFyBA3TsF/a91ROmc+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuRbkjzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuRbkjzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBE9C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733285753;
	bh=9SZs99NwnqMAF3NiQL2/2ACyZlQe7VZDl1t/tlL7VZ0=;
	h=To:Subject:From:Date:From;
	b=WuRbkjzFyJOrf7WD5VVsnkO92VdewmOgUh3aNyNUttdfUqhuac1xY1yJEvz/fqJQ2
	 b2nPZtPuWlnEkffyT+RLqf8Nj2I+NKZjLQYMLdof1zrBeW/hVImnw0O2YAyoD+IkhZ
	 JNYhsZ/PyYFfELWK49mYtpj3XyD3HLAyCFgZwgpLSUMJ2ev9BGQKUP43myyvNunsTc
	 j3pmCawpP6qAEahTqmmycuwL+Kv8E91nVwew8K/yE/rg0Eyo+ykBX/U+uzgQWFgxuv
	 lJ22Wiet9uP1qeJO18rmPJuW9PxWniZESppP8j3dIASqRdvE1v9IcwiQ7U7PYL5XqN
	 51wLv+WRMQN9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D9FE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173328575366.8408.15137815029817755183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b89cd41966c82ec0f533d5c3d928073d58257840cef0d11e4939857376ea7e
Date: Wed, 04 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733285753
