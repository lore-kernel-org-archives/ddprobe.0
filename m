Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5AB1684B0
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732088754; cv=none; b=skiRFmlviZMapKtgzsCw2gBKnIof+7ww3zw8ANHHghPJfI3MaOqnRAeAc7dc1kxgOTg1SfzjHl3ISXH8QQqISkUPBnwLmcFVNs1RcL+gA96R22WNBQ2hs42dco7Aq22zOc4lYPFrlWmFUojEDCDbAs4o1pEXtOV2KzbUpZB7mB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732088754; c=relaxed/simple;
	bh=kpulvlB+C4CKcMHJkpqthp0Drnt5JPhCjX94AwI8B0E=;
	h=To:Subject:From:Message-Id:Date; b=cbPU8Z1PLqDxM3K12OrZdQdJWylOrmwrOihg87xonL+ZB6CUWlkN2pV0MNDp/0PPCsTm016WYrqE4P5XXEz/LnwdUesiSCaDtgrk+IPCJAaO8GnFkggE/rwWqKmp1heBv6ELgoWVMeXK3jrvGy204IKv5d/+lMwG7YEoE2+T+RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMB+8C/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMB+8C/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3A8C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732088753;
	bh=kpulvlB+C4CKcMHJkpqthp0Drnt5JPhCjX94AwI8B0E=;
	h=To:Subject:From:Date:From;
	b=jMB+8C/ArsT4y0gJyGFkO84q8gt/v0QgEzsmxarhSOAUX/I9aGvGY5X4M0qTyFM9n
	 QTS6TEomGneNcRs8a5CM024TzH9Gm/MNh9z6onOhqq/YeFg6bAV/YpZy9w7VoP2BUr
	 yQ28kYtkJXULp2mtRYPi54GR9pcLRCrb46DWRiIkrWJOlkraYQzsjow/ql8I2v9HOJ
	 tUA1BGqQIaeGx0pw81Yg4wLmLdo5Z98BWJEn89nFJB9Fw1F14YtnuJazRnte4sks9Y
	 aIZKUKrXOUKWVH4V9CgXtKUSCTw+MG/8/1N/8KLQLn1AN4Z+0K1JnI+NrYI0eFXYfw
	 Q9jt/D91MiTxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C7D6E2CD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208875357.1545.7898781592980896465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a089cd92788309c2cc4a73da7cea79b557795c82058c6b9f5b28f1e06c7f65c9
Date: Wed, 20 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732088753
