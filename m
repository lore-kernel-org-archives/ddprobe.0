Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0FD2066DE
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756669795; cv=none; b=rSF/u/ZTxpCLfn1EScJGAuhNUh7u12rLyCXnyxIYHVnPAHoBhq/bccLpq2i5wJPUfkyZbfp+1x+iitA1b+cTVPG9UrAO+jPjGtp3wHcZids3R5sIRcescpjtHSuTK51zQwWpsq3gYg7Ry4yYmDnNIEXP6a2pnSMju99s4MAqFuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756669795; c=relaxed/simple;
	bh=/nYerCbbTtluwqymQ7v7pYEIhbEXp7s8IZbsgok83oc=;
	h=To:Subject:From:Message-Id:Date; b=s3iQBDHv6VhcNFqJzomCHByURYD049lHzR+0P/A29lfWsftOiVsWb62rpx+8cq9gZV4eRR+f46QNW+7RcWaGxogcufunAfSDEj0SvjSA8YIv9O+Q85TS5FFR8veQHSOHWP28eF+Zl5wZo7t2dpD/sJnLCZ+UmgZpgaIH4ICSRQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5h6WCLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5h6WCLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3609C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756669793;
	bh=/nYerCbbTtluwqymQ7v7pYEIhbEXp7s8IZbsgok83oc=;
	h=To:Subject:From:Date:From;
	b=b5h6WCLiSa3vKJM8/bMCoea9iJzOZX4PdWVhlOJ6H98lERT9yFfnE5Kr5855VNOOU
	 pHjHT8zmz/U32kCq2DX0oAgzBcSjean1pR7k0WyyVhJGFItaWmhZ59DfEnRxhkvmgS
	 Hs8/Xp6sGqQ8hmwXJkbs9PKdygcboZM4eh5TpDpj9jcfRJWn9blin2+HX46lwzwTcM
	 i8Lq7P/N6ZaEnWCliiasYtqN35hY/ysDiI2zt9eOIivJROCzfqrKknu9kTB6qHqesR
	 3nRj8WX8tD/dyoSwDsIcK2TSaRTP1Re2/K53vZziAXWNPL0+jQP0xwFNTWHuU8k2N5
	 coNMobU8m3CKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91492CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666979357.27940.3340058226121362520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f66891ab1437c2a2c93cbc46545312642c09c4319371adfc1204363d8a112c2
Date: Sun, 31 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756669793
