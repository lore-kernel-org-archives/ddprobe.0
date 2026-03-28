Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2464920C029
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774676094; cv=none; b=HAuLlSFE6GsW2yIEnZdYFgrrmpl8quYrGjdZUbOauu5mFYGdqPkRuJax8izKloz0WgkSqxrCYrADuHEfD0Q0mYz2W7pzefuhNnV9p4qdn0Z6AAXacoiPfBTJwfzUu2cpePJe4eKi9PBI+qMvGpNSzVHaVpnbTSV0GxVCRlU5jkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774676094; c=relaxed/simple;
	bh=zS12Z0YAJm1RNl3AG1OmIP4nZF5pBlJpxt9ckXGvC3k=;
	h=To:Subject:From:Message-Id:Date; b=pRvQjYRT1KbzupO7ui9HccZzYhHBWUSZ7UpBIJz8GdaStIWtauwsDaAfO61m+EuJHWYOz26IPGf6rIk9d9cbpq4036ipt6EiFd96iT8SXrnalmX6ls5jymw/3IUeAALUEAzwNTnUWXOzqVN2cyVQE/RzOGYzBw9vtXHJdmr3XzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxzoNnrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxzoNnrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF21C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774676093;
	bh=zS12Z0YAJm1RNl3AG1OmIP4nZF5pBlJpxt9ckXGvC3k=;
	h=To:Subject:From:Date:From;
	b=dxzoNnrvt6/sJKATWXt8buap19DUx9G56GKtltJYiLqqqKw9T5EMIH97iPd/xZF8O
	 2xSFriCbbtoMXrIZSAHan//9LUnWyHW4gbeSvCSPWJtS6vrTqaWIcUpamnVARtQl4j
	 p1NAhrVqfl1L9ZTnAPFl/2rgdOTVLZqJN5CxpgzyDRT8PZWNEJXxFo00GPn4xqur56
	 THSRNk4sGgG64g+cKHlsNejxBZZ4M+YZFYQarsrZkBgII63MN8AcjV/7+TVILfvS23
	 qw594ANC0dj21OmzFGac0sWnV9mwKMM+ZO3nvYmJML1rL44fE1QHEP89nmuf2XtoGT
	 W4e2DMudG8A1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DFA10F3DD0
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467609358.16993.16463690595048158865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0706cc6c03c1001f6c7caec48f669febdee39106cb0cc88d07af4232eb0f915
Date: Sat, 28 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774676093
