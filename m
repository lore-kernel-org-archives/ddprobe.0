Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BC428FF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732599354; cv=none; b=ZslKAiffc3kxlZ+lq3309GZ61TUuSS8YdDZ3k8zpuaX2M6BW9Nt+qPfYIqtnIV7WLgdPeFdG38WtcT5ug4III4LhdCSG8hVuDvTCGUUnEB6NissS0axBfj0z3inAzOHkVxBcb5GwAHMQAh7/3qltwWM/uCs24D2KRdCqOLYIW9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732599354; c=relaxed/simple;
	bh=1rIbLml5mLKLl1VTvTOn4IvS4kWg7eNElbmudgca3Kc=;
	h=To:Subject:From:Message-Id:Date; b=M7Z1JKp6c4p8SWITXErWT2drB5pleEYt5w3sOWTJN7KQk5N/mbkxJvxUZU77P3LUC4ZoXJMfBMarYAxkrrIw91AYKC42fbGqYqS5s+KHLfIwrhsuDhBGNWpMT6QTPQ5cd3NflAK/tQ5Z/Px/97ySNQbGN/0MBpv2Z/lZjY2j/cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfsuNEtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfsuNEtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D30C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732599353;
	bh=1rIbLml5mLKLl1VTvTOn4IvS4kWg7eNElbmudgca3Kc=;
	h=To:Subject:From:Date:From;
	b=XfsuNEtVQtNVtSu+jSx2E+RkznGWZzGLhLHO+lUiZHCUb5SA7fF+KiDch3H2cJ6aJ
	 DDJpxbSp29k0ykJo5eS0bexmaLV3wMpL6Sanmrv9EylF7jcn6untWnY9AWKcHFtBN7
	 a4yAptkFn/tb0Hc7o86Cu/O6ASifT8sG+qKuY2gtFpZ7OZNUNxcodrSpvBj6i5ZEk4
	 5DEbK/xJqgZc0J3TMQL7WAQjpknD3QGXJK/im7UXfQHDSaZ79gPjjtQ28uKEXoYvGS
	 04rogAU3CCUHrsK3urdv504iAlgzf8Rf5X9tROmeR6LfgJ2EtR8DTCGU+6PGw19bg6
	 aAGncCn7y8Qew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33DD5A6E2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173259935357.18245.15183458003334245763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3eb8f1e98704eb6c195b339f6e371ddcf5f8f3f9e0b89d247262e4acd3ba50
Date: Tue, 26 Nov 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732599353
