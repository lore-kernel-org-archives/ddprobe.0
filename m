Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE80420E98
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785231034; cv=none; b=d2YKc3lj/8fUgCJIjuOpA9pFSb92jiuhnfqjGhCw1X6SB9Q1ogKMAQMSEqvc8ba4+pSyvY3/f6Yc8hDE97eMU1N/3amxjgdPZwT8LHycfesXZxyyZyi7pAi7aEgpOMkVXyXIkUqq1sZNb9oVwpIINOjf0ICaIn+6bS5SCMEBUlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785231034; c=relaxed/simple;
	bh=v19ukBtRaRDRay82YjNUSVJbr+XMlIBWc5r7RBFdA94=;
	h=To:Subject:From:Message-Id:Date; b=fKnTg9PWq8spTGZfB3PSXvL2FT84o32qfN2AmU0rngA3XciWveKZoWKXGYkZlTFkJqWPNPs4G5tZSUR6UGjA67q/5rd6ABzUmGp4zf5buoZhXpETfeVo6uFhtCXObXtxrG2fy2AwyvfOtCzS0U9bKEn1kzN4DQQGxPQd9bM6Ijg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHCAKR8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHCAKR8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE478C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785231033;
	bh=v19ukBtRaRDRay82YjNUSVJbr+XMlIBWc5r7RBFdA94=;
	h=To:Subject:From:Date:From;
	b=AHCAKR8Z9S55qljOmJj7H2T5/nofsup/hu4FtSdavLX1an0Qk9/BsZZZnji8+gQNt
	 YtlQFbJrRVxxv9zKwWZjbH2xfhwZb7zJIGEc93VoYo5N5+eI2ceULFBx93h2Iqjgdx
	 zTHn6+E88/yr0C1Ka2H370EMpSnKX7qpcXqJRkz/1dL4hifs6T9QM+Aa56B0IBfCxa
	 mdPGOJ137lCSkGwMVBt+dJN7r/SjSRFosdB9Lc9kHO3n3KXgR7aKlSAt/o8XDg0rd8
	 Qu/EBlmFHQO1915OARSzVyRVZAdDLCtBRCI6lzsiq8X0uLeHRMBrqUINUXuw4J6TIs
	 bM/zDunr3R0BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F90C54EFC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523103368.19343.14769768629409962524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3722e09c599778380f53704d6e80e2a3e6e01172054984ad7cce24832ed0abf
Date: Tue, 28 Jul 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785231033
