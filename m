Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BED3002A9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785084634; cv=none; b=FwELANjlBiUe6ZC2SB4Osy7ruubCmc24w1CP9UOL/NwlPv0oOjIfiw/nI8guRSHaibn755Fa4OQEmQ0WAmTdZatO+LVu1zb+uipxSHwMo9qwOyP6OMuyQlykeiJrzWyUkMQb2YUI/D3b0U2csGQLAZfjZ01vwfbtH5F4CF+bcno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785084634; c=relaxed/simple;
	bh=2PQlhRguAtuIl5RenFlPv3fqoYClbB/PIirSMLXnBrA=;
	h=To:Subject:From:Message-Id:Date; b=R31Ft/pC8OuK9+tA99aef2muUGURddAcnksEdJGhLnzw68K5ADBeqPTToUr3w299Vvc4ezyp39DAwEf6MWmGU196HCb+CvOBdYy7DOb47gqRcU+5jL+pZpE0tZq7k2tQNjVQWsWr6I5lW/XUddfNpW9ntyFQCslOTsutL5JKZxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJPdrtjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJPdrtjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD605C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785084633;
	bh=2PQlhRguAtuIl5RenFlPv3fqoYClbB/PIirSMLXnBrA=;
	h=To:Subject:From:Date:From;
	b=GJPdrtjyh13Tzl0RwQFA0W5d3t5dj1A/hGS8r4i3uQVwn7F4kfp5wZFTaP2V9ab2R
	 JCEuQVp6eE2z5k6rlbCSTi+aoiZL85+GR9EarntAA/zX+FmbbiW3vlVZ3ihLaT0qsN
	 2ZNLdS0hk3kqDJLFwE95EtCuLNTwih1hRqk1be+IyFA159iiQ+XD4DDDgEc8ymiohQ
	 z7gtRBSlc+0ow1wX5arPUJ3W5CMpvBjg450s9WcsvfZHCQ7J2Lbb8yBPrhjK9CvdyN
	 5wP1q4gMEMi+lzCdpsvLqCbduu/8BJVqGDnE5mzCeQTmHo8LlOalRteS/7vWPs+Xsq
	 6Qh1jnF5YNMmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B988BC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508463375.31608.18139843067230931236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94aa2693247ff1dce0a8aed97547f6ed5a918fb96f41f70c8833b343742d1818
Date: Sun, 26 Jul 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785084633
