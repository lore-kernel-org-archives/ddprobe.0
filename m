Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3854C9475
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775875654; cv=none; b=oTrhFMWY/fteop7R7zdQvzQx8BBATaYfozRmcP/ztTmg2RI4JPcIVIsL7rTg3Gl0myDvMV9iOeqba0WFPJ+9wmmQFiLEAFNWRtJuqifQzYe93juJ2EXD7nfgfmCPuXG6dnLOJK+qnFlmN5pbzIWnLTct9bcfvCD5f+/WTYKPmhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775875654; c=relaxed/simple;
	bh=v0XmQ62T4ub5oRVn1pvg2/7pBALndPZ0gVzwOIdpxw4=;
	h=To:Subject:From:Message-Id:Date; b=M3oDpb7S133nA9OTPM6qZkv2GgiTuJPZqpGXu0a9FJKbHoAZ6tRx4zfrLs5qyDGLZz1bh7Fw5LhuM0j4l1/V+0W07bwwSUDRGEycmnKM8t8a/e4eVpZ6wkS2R/XaOQs3bMTLXo2ZYRLN8zKGRtK54gaPreIzmouCrUlTfSr46t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbelbxOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbelbxOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C71C19424
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775875653;
	bh=v0XmQ62T4ub5oRVn1pvg2/7pBALndPZ0gVzwOIdpxw4=;
	h=To:Subject:From:Date:From;
	b=PbelbxOKlboSJrEPVeBiNnqSd6Uq3fU4cPGyKZ/F9plakMW/TQArgqY6HnqYUOEXH
	 f7u2LdTSjrveK7rK3lVVLW9vl+iwH2IICRRGxo0AzzCyLiFvLl4vOVcUPQecJ7hxed
	 Gb+XjaKR6HR15sKMNnzueYqYpft35WqGLK6rKBXgQuUBFmc4aG3IGEZGThzb/0D+Xg
	 x2LdwmFqi22x2UyZQKi5LQj2Ij8EqvhoJ4spu2jUUZuhPsk7iF0inq47ScGlCHlXTE
	 nGtoQDJfLw1QaMfjDgqirBqn/78NxwfoXIxzZwWfvN2Otp0JYU4ZueXrRnosC+XVAO
	 QXvGxNLpYhGBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4FEF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587565368.31414.16310003603861523604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8a8f7bd904ce32f456dccf5f17b026c918dd710120c6d4686739dca177801d
Date: Sat, 11 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775875653
