Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E1A1A256E
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731350154; cv=none; b=VVK4AbMGlqgp7VX9IzVOuYryD/x3Gyi+7L4pn1lJpNzErxrJhlMHVwvgP9TE8pLjF6sRhQPz0aGCDjBV4zNSWVd4RZhlJXYPZHF4J1fd09QEegTwa4tAlvoI9d4yB2zHQCQ0L3JYB8Ry1EjsZlZ2e2O8mPvddNw7aSgWfKYdakU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731350154; c=relaxed/simple;
	bh=LK7JNzlFtx4jOquLbhF4vtixmBqHMM2NhRsq/jKOulE=;
	h=To:Subject:From:Message-Id:Date; b=uOuRyUMO4Ak6RB7rcZ0Mi+0vSJNcGCjzej5Tq+68zxw49Y/B9/tAIdsKEvWWBTvyOOlv4KIMFGeOXt+U9PgIA0gY2G0I7fuFD5yyxva0Wjg6YFJv44oZInZvhWTL0x058qUUSkR2nqowZ5cih4kWmbuQrNoXdKQwof2sc3jx2PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyTHrEyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyTHrEyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB514C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731350153;
	bh=LK7JNzlFtx4jOquLbhF4vtixmBqHMM2NhRsq/jKOulE=;
	h=To:Subject:From:Date:From;
	b=LyTHrEyK2k6elAWZvKRbVz5Bn4bsIAigB3vSkbTdL1OUCJj3E9gKumwSkGAHYFKvF
	 OmxtHiFd6le9Yf1dzPfJy3N1JiKTZJNIiMgMQ7gKpLducM+uEXdO5PZvnxtrlTDyyy
	 U4l7v8F0fY3kgktPoLrQTA4OZqYsgSNmUGYEcnpKVZjF+plXY7Rgp9++MHBgHEmfoJ
	 r8AfBgBn73/SFfxTLu70mpY+LzwWPPPe0e04k8SFchaj+KcAXVBeQWIGodLoXCV3BA
	 aGNGBcyTgBilNdepR3SqM7XnyYKNwwJFGeCWx8Zi+eAx4lqVogDVAxDecLbW15Km7e
	 j1GrjB2LzYh+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E287D3ABEA
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173135015363.17049.18269468669611802751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4c7a53b644e6be840bfe534768b1cb756e0b037adc74c7bdbb39af33a2cc36
Date: Mon, 11 Nov 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731350153
