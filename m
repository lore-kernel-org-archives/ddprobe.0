Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BBA36D4EE
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764460974; cv=none; b=HViDmnLwI9JD3BC0GnSBWKbLpNCo1jXvvEXr64ZIK39uiY/gvUwsgjDL6S+WlRvjfQKaGGujvyi1vE+1nCtZO87l0m08ySZjYLRmaC+O9za5WZwB5VI1f0Jn3/2r47qALEBcD4hB/jPZbUmMyPGkyDKEcfSstAguQI7cGtJj+Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764460974; c=relaxed/simple;
	bh=7VrdHXQDIJQPrrf4/Tugg5tuG3sO/j+E/yriEZ9JTLg=;
	h=To:Subject:From:Message-Id:Date; b=AlPZJkIPEEqxayz0ELDYzMtovZe40z7gSYUZOl0R1MrJ1sjOXRsqCm7AaL6Hmq7eX3MhdzpvubZqQJbGP5kIrSmIObpABsxYPb76bTSafjQqrXAsrN/FSu6yyFWGiiSIGiZsAiSSCI3Sc4YBKsWMyJFkMWFlSbYBamAg/+LXr6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/RrzhPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/RrzhPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764460973;
	bh=7VrdHXQDIJQPrrf4/Tugg5tuG3sO/j+E/yriEZ9JTLg=;
	h=To:Subject:From:Date:From;
	b=K/RrzhPN8d8BJqmVUN80WEiCMwfI7lEUuzN0zX8nm0q2utgGiZHhlYjO5Lpf3ZvZJ
	 opzsH4rmK9qiREKKb5Qg4B9TvwPvLZhx4px+Vs/itaT0ZSVAM0ywrPhQb7qbFrcOMW
	 ufjiP/eSmPXxqsB9v7iSOT/QI3Xdim+xKRy/h+mMYR6/sYNOo3JkR9h0ZSO7iLNzn5
	 0zxmqhaYOVaQcv+G+9hO6N6wXh55ZlQ5393UKLsp0/mb1KdXyA3SVdEbwXTTijGeXY
	 FHyA9vixL2ZKgj2qz6pXP7SigIq992+jMVoX2n9ONQGSgVF/KhMMbYS0s8Mad18a6n
	 FZm5LaXbFfMSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A47D116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446097358.21919.7080006578809541819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d7c7672c32a1a1cbcd3389dcc6bb2b88f5d2e5dcfff860f9d8c3f5956fbdc4
Date: Sun, 30 Nov 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764460973
