Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D097434CFB9
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773579893; cv=none; b=T1j/1Odezey7hHbnfKmVtjPOqsdTSvE2XMYCSg+AsKHlu/HZa7lnSjl7xFKJwJ+8NbWInWmlG5ZjkQhbT6/37J3Q0YVUN8hupCu32iV0rwdjpLWYrfprQz8TkPyQ20gtg+3rAnq4JPAVDV41e73PL62aUP7eNzolsTntIsgQopo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773579893; c=relaxed/simple;
	bh=eYA5ecuIqysKdnaUQ7hfg/MagphcKwQGXZV6cgyR6GE=;
	h=To:Subject:From:Message-Id:Date; b=uJBmp/E3nIlpFbjoukiHUa4+YJPYDsGN9Xx8ACm0jp0gTG2dfd+wXVYa1r4IjhMIo0HYjhCjp0A2ufnKkhKXeCdXjcAXj5PvZMiO7mBS5HQL3XDvc1B7AIeBE1s0MczcpkySWqKYg0Ek9/tj4B6adbrVSrpjSSvzfLicLZyNhjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7grNvOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7grNvOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1290C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773579893;
	bh=eYA5ecuIqysKdnaUQ7hfg/MagphcKwQGXZV6cgyR6GE=;
	h=To:Subject:From:Date:From;
	b=Q7grNvOamMIDIPjR7PoVZJhJt5BzmzBaLGtKMyoJjK8wTXw3jXpmRYm4AGD3Pb+bY
	 sANEiewKRGP1UzoMqiCT5Xv0giai7aLv55EdYfGzSejRozhEQ54y8Q+pnKHww8lDSH
	 HRFBKvtfyTz6V40emyaMGW791i16BG8cZ9LoDsipHOiYaAW9p45BexlxgEdOhU/Q4u
	 t0mEGk7XTqXvw6mBsRynlReCGMcvPszYwnBchf3+ZqCr9nuYfHsqy1i27n8jwfNSWq
	 P+4/zdUOrKj8IQAyw0J4MuCzYtNdWDyV6aHOq32Uy32bw04Z+BqiE2QUS7auCpx+Nn
	 FBkvyZVW1/DWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935ACD58B29
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357989358.7480.12398905360066641600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ea47f24f1402a476f613b928e5d9ce28aec232b1fbf5b4b8563d62bb228995
Date: Sun, 15 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773579893
