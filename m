Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DF62F7EF9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782841714; cv=none; b=J4R8tBqHjtmTI+cEWph2/QthJD/5fshFCisbz2Tw4ylQP2FijLvlKZcF2LcVK/XeRYHA9x6DPxVCAJDQFwQ5M2EcVsIh8F3YhLChOB+XIsWQAoPiRT/AC6kdWqkNjOjg9Y+QJmvKLAv9mqCq2zZD+/QLipffbqgGFBwSL6ZZ+Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782841714; c=relaxed/simple;
	bh=RMi7ahowXn+Q8AfRLfMEaoIHdCiM9lD8bLq/kFmWV/o=;
	h=To:Subject:From:Message-Id:Date; b=JrvZQJMyWArE1blSrj/HNuuqSroQxDXVbr/+Z2OTgThjrWuB9T/w6Pe7wEtXvQUVkrx/kD24QcjDJJvE3oA9B4tuJWbctbJy0vu/2I2FPaaIQYiUIbm04pE+yPgrr0sGePzPYQYvNNeEcFFxo8WVto+j365XKyyl+sGKLlAcPNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kG4jgwa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kG4jgwa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4A3C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782841713;
	bh=RMi7ahowXn+Q8AfRLfMEaoIHdCiM9lD8bLq/kFmWV/o=;
	h=To:Subject:From:Date:From;
	b=kG4jgwa5A6gzDtSgS/j3XuPBD1WbBGhUa0+OWdIvSvP0aVG7HPOI96YV+VKsFKShr
	 C/5Jt+q9Z0fGnjNLjT8FN9bkwDpRI2x3BqftbJsBWtR6iJ1G+9YluDFawugJaHulrX
	 YsWkuL+hx76jtU63ceXTYOsGPzbEbcGt3goKEg/GYOHz6fEGx+rExCtxRjoPuQVkVI
	 YCsahMh5XzpteriW9H2TzA9vIOfX6xpndEw0xFa4B8bGA+WqOgPL7XMCiR+oIRXU7x
	 BUdcQTObfZ/mWVwZj9Qs9052R8X+GJ1LqqfLkQyP5DRv0JYJt7eFLqqnV0xj7384nS
	 kuBza1PvPf9fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF6AC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284171368.12472.2187291975483543177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a51ebb9b2333b43674ae67b1d9353a4d9cc00288d5d9fb52ea1c794de21ce5e
Date: Tue, 30 Jun 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782841713
