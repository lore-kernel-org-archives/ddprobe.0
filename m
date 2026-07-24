Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9A2470E98
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784932234; cv=none; b=DqX29QPOJxRqouTkfgyyCOR8EYmYvsW++2xh5SSANF5xhkFrlNvAuVye/YVyuiFq467lcQS0XO+LdUNWBt/4Xu4kgdfIn1vogRwH8C0/Hpyd4J4YsmjdbBUGzdRB7XKjFWZkvDJWC68SBf/tUBGJHTFQPaN7xAFa5pvXuTtZL80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784932234; c=relaxed/simple;
	bh=6DTyDnQQTjMpTbMj1bxvd9XWEqfX0QLtyTLHh+kRr6Q=;
	h=To:Subject:From:Message-Id:Date; b=u4KZI8sFZRNQReSTjDZly5NpL8mPKEO5Eo5UXnKCuffyiJtmJ4fNAju8hGKPC/rIJd9/lmsGMc4D3drWJ5W4DFuoYM5Y/5+/uN/C93tbpWdGN/NFUYge5hPxzNKehxnueZ3oZE53lq3ZlageZ5+z26wVi2me+IrtaW5VJQB7lqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9P8iFM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9P8iFM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA8EC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784932233;
	bh=6DTyDnQQTjMpTbMj1bxvd9XWEqfX0QLtyTLHh+kRr6Q=;
	h=To:Subject:From:Date:From;
	b=g9P8iFM16Qo2ObFt80Csp/4sXqY2Z294BOn/nrGOGnNHgR+yB8jxQ3AO3pcik3hi5
	 PyzYsgXRah8uiOjiK17zvYgLeA9EUw5oFQ4N9ggB+wBd8piDpHdoDPuYZgoT8LyvxO
	 9VuodLPM7zeCpfl9LDdw+leIj/yc9FQozGehUBXBVQFpyx73mKsgFXNMzQ4QLUyYJp
	 8pWxCIcXhtTCjm9IoJTYP5P0wGfgfnTWr+N8L33DzN1JqwGjj6ftMfev0ujNfb2hnU
	 w6w70HAalw+LfNkWn+DyPHoCX6M3ZfNrmcI2IrdI6t3/eqSQ6Ye1zcgxlsqWfNWq86
	 f/Z7jVZBmQXhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8821C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493223368.6681.14717273293425791140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb166cd2f9a5faf135ba0f6b726749c5d602dd5effe1483c1418ba3f21e7e90d
Date: Fri, 24 Jul 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784932233
