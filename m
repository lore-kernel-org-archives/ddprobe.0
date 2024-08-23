Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4DB1C680
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724379954; cv=none; b=TKdjKLzp84yG4l2CG1c6DjRUu6WgVlhZMXFPScTFF0QwVNxtk26AAIRZJF4EQGHsXNJooCywixI8OG6xeWlh2r/jlmGQHWyMetCfQU2z89Qn4PjB0O8KL9Ali/0l+6ebvxzWdtdOVDqFwMpwkYRFmjpaqEKV8hc+pLfoc2tT/CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724379954; c=relaxed/simple;
	bh=9GbcBR4XwnztCzsRCVB9hM2BJqgu9BKC+DrR+a7lMA4=;
	h=To:Subject:From:Message-Id:Date; b=MXFCzv+tDxMFJll1X4+ieWiblLCvlNgwIm0d+XyzOrDSTVag2QPe8PlXz/u5uTG0d6tYewSLQKekaT3MVujFWxdArJs6kP1tgseoqM+gO5EOy6m23BZbQ07+I9fX+FV0d4QhabXbkShzvE90bjV01TBtdSxasf9ORWz/g69KcRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6i9VXbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6i9VXbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF55AC32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724379953;
	bh=9GbcBR4XwnztCzsRCVB9hM2BJqgu9BKC+DrR+a7lMA4=;
	h=To:Subject:From:Date:From;
	b=a6i9VXbx+sql5iJV8W/koS4LbKhpnD6+TzsnENVeVWqCrJlOVNFKDgpQVjVhkX1Ml
	 TdnhjqqCMXOOKSztmgDlgi2mNrA6vR3xdcXW/uj8C75ECmplxA5r7gWjpbnkZ/6Cao
	 5QBjjWKdX6J0GnmHLg8Y4ubJQ0+xNSqp3KLWXrYrXxI93VWHfuJu3mYKubFS91RkSx
	 7GzqMLu76+DJEUB3ZFGfnuKwWW901fm9wS2ggYkm3ZrYScXZihV3DlR4vD4f+QlkpI
	 /cGYLG3qqYL7DL9sg2qDjaeEwb8cdO6kDHQthe8ngPcblCfLPrzkFcauHDlocq0dKo
	 8W9WVtL1kcHpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95522C5320E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437995360.17952.4125942131995681434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131005451e79f072dec10e0ab0b50ee508600c84d32381cc61d10b04f29250f8
Date: Fri, 23 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724379953
