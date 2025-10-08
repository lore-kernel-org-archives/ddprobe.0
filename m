Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A722638AF
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759961994; cv=none; b=goOHnW+k2uv+RsWXWNrxc2lPITXKdysUwj/QXI0wIhRtY8A/5e1Uzcq8Mi0I6klr5WSRKXNrXWAN3HB/b+qNDV2UAcJlfK/+kzJw3Yvt8TO+Ef6u1sTS0tftT1nSMiGEIoqmhbWD02vclfjn4kQQx/eKjvOYejb/RNnmrwFOS7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759961994; c=relaxed/simple;
	bh=q3/W9mCbLKNRTfPTxwhqGStGbkhWMZhslswjteaAIFc=;
	h=To:Subject:From:Message-Id:Date; b=QjnXbx+/P02N0GfYsx3Zsm7r2XRtysx0ZDyYWnp0JkvQvZWYCgk2cVYj9x8ZoIJi4fy7zx/rXC/Z2QIYkLywBhvKkOGgltLqSAQ78nIcNf3/RA0D8ST2PaVF/v+YEypXrjKSeVsjwUq9pZgakKPlNI8J3IcFmqaOQfDGmC8/dEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvIE7X4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvIE7X4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E81C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759961993;
	bh=q3/W9mCbLKNRTfPTxwhqGStGbkhWMZhslswjteaAIFc=;
	h=To:Subject:From:Date:From;
	b=IvIE7X4BF28FmQDw3txAFz0aKacdcpPYXPAjQ12hp0TX84GzZNQrDnJ6mgtF/IZs7
	 OfhTSabEuoUu/r3ylAU6/iCN9y38nbEBDNuKPw74AEfJ8cdDrl64NppMPj6AJDB48C
	 N6zuERWJpkmLDD2pxU9AmJr0A/7w8Gu/EcDW5s3M/nZeyysWEL66bwzhXaVp8TvqgZ
	 1PHPG+QlWYw9W2A8Gj2dYIU5D/gnI6sPsvNpPUVefE1w65Jufxd6Bjw/02gZvx/5in
	 L0+4e92YuFGtwVcAdqyRHTMSb2g1fgVjIJcyJ0fgya/3wVSCs6knG2Vzp6COdRNgeE
	 eGlfph9N1rScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BB6CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996199358.6612.15235469785593748482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b9fac128c7b147f05a4bba867b1eab6f5d33001b94b2903f0d0fdbda9393dc
Date: Wed, 08 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759961993
