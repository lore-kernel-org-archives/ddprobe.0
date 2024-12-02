Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAF817E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733097954; cv=none; b=jZQhkv9eUKfExChE+418ad/srwPTS714eFeHk6fXbXhZtq9M64Z6+a8YACNg1HPydDaLq6EIjiNt5jg5EA4XH13kJ43t+FTsFVIKPjPt6Q/AkeXCOGzLDPLOYHaRuK/JjHDtUbyFkLi87oF2zL5kHXJAaCOaxS3RITI7Pn70rls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733097954; c=relaxed/simple;
	bh=MNGdYvFmBJGfZHpWhkgQCQg4Q6fALiGfe5JsByoZJEQ=;
	h=To:Subject:From:Message-Id:Date; b=MswE/DgTjPL+ZpeCbOMLyhleF9+SS2lQRaXzWBCtvwfBTOSKp2adL0UNBuZUn9/xdOqmeDNdGno+89I82sVJrHzzQ2kn0gi9iG338kZJzwM0fVG9L0Dkuf+RKjBIsitliPjx0YVx07Vx/GL27k6Ruvoii7rmHKZn6JKqR2g2KjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klqr9lHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klqr9lHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE8AC4CECF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733097953;
	bh=MNGdYvFmBJGfZHpWhkgQCQg4Q6fALiGfe5JsByoZJEQ=;
	h=To:Subject:From:Date:From;
	b=klqr9lHkVqJH8VpowedGXSEXNxqkohE/Pun8cE3SvvIyIbI5bAL/vXbsgDGfF6+Nq
	 e1i7DYS2uU0VBwjJ357/lnSJGonJn6GXxMltTwVceX+XUnqq5hb8f3WHlQHkf45Iea
	 FfSK0KoUJRyyeH9YRL7CJmgr0dbcKfHnI4M06228g+qqcPB1bV/IaZw5+/Tpknb5OB
	 5wBz89zYqM7RoZiBOwljsUP2ZZfFrS+fJ9frwEbTMogD5wfHZdKRzbFtyaDGio7M+p
	 MgBilkv9h3ngMQDTo+6Jm/H1DKm2+k/vpXDl2RG6Qq/LNkvrHEStxs+xVxmOWHo8x8
	 TbAkJ7zLxkwoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9472ED4978D
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309795359.4387.9414019985453954035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e66fe9dd65f1ecf3e1fc37cb658561da26763abe1fe4c8d42f44d099343e564
Date: Mon, 02 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733097953
