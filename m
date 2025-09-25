Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BF52E540D
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758813594; cv=none; b=nho6dO0trklPgVa3KhI2v1O/zH8YYqVqcZsahqVmiNXColELFuJ9NWbF9yQIuAD9LKzPcX4jCQfn8ebZcK/8ksDRpM9u3jQSHpJ/hnkeaYqTaZirsP+aderzBWqX2+wgomWjNe41skRZy6CAskskJ3MDSMzvlqJETul0fLCrFUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758813594; c=relaxed/simple;
	bh=cPN8iBQpNhdvziD26QsUo+vRpAmETnzjWC1gjdqpRE0=;
	h=To:Subject:From:Message-Id:Date; b=QQQDKsgEaHa3xVeU8IRH0p1tw6lDCbIkkRtboRkniEpMC1LO5NTt26HIngK3nJKnRPLWH0Ooe+9DkJRU2SIMRFYqfs+D6sogtO7h0WsqzWQoc/2EDj+voh4A1fRmzNPL979FrLQQ+1U/1kXq0qH9BqEmFR3E6p+aFsP10qDjdeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixQtZgdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixQtZgdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26D0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758813593;
	bh=cPN8iBQpNhdvziD26QsUo+vRpAmETnzjWC1gjdqpRE0=;
	h=To:Subject:From:Date:From;
	b=ixQtZgdy/y9L/xorzsFnTu5jPV2BeUz6AHPg8mMa/Ll4xwBGmj2jb5x4jW1t8q1Sg
	 iJ+tGZLjubKtMRplKFR0vhrKxFkcu1rwXD68ahOt5K5scyduLY2qRLH8oXfQK9A3AY
	 C8GnEFGIQjG/8AwzamuvE9lt5ULHYwQ8g9dFrCwh6BFpVoRrXFffMUasjX+UXDL4YL
	 yS6PPK4Q8rMDhslQAhS42YIvswMp36ult/G/17+8YQ+g9ebWGO5uyZAymaW4dYscgI
	 ksI6r5LGc2t4e2ExtXpdsxkSkLDJkznqE4RT2p/xdmozdiBJ9vRpo8Cys3ovtlVkyy
	 dbOZVPvx0fqbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F947CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881359358.26267.1743297531268263596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24f86559262846d8db1c4ba0d851e9a31aad5ca81ce83c3731989c9188bd4c1
Date: Thu, 25 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758813593
