Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354E92BCFB
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756166994; cv=none; b=kYr4qQe8UXo8i+4Q3rYREWdYrbyD4nYp9GCokfkbin0rrr2pKqBpB3E3OZQzRMnKrvIVJ2A32InfREoHtEW3u2vz4qxhBfWNlPIj1bZFTZF1iMjSfEMVDUSgtEkFPZBfIP4jnXAvjB3uiRdI/kxRc4LoXPKJCpl9oYDRTFt++Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756166994; c=relaxed/simple;
	bh=+tUxyVe6gTBJlcv63+HdhgXyyS5tfMs96EvfCD0ct+w=;
	h=To:Subject:From:Message-Id:Date; b=MQ1qiakXxYaL8AGP0u/sBo/Hw9CSuwE00Bx19EbEM9ZqhXqdZdPOJQwhp/GSgrMQ/fGG93IP63QHSnXc0mH4H9mXZTiCTtXEP3pO8qjn/nQWdzRc6ZDZM7j14CE+BgnizEsY59bBs3THF4omQKG+JeGe9GjZrAanwrcLSoQlCWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilznUuHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilznUuHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B6FC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756166993;
	bh=+tUxyVe6gTBJlcv63+HdhgXyyS5tfMs96EvfCD0ct+w=;
	h=To:Subject:From:Date:From;
	b=ilznUuHJ3HmQVjJfFmAFJMW1Lu1ZnVSZ+6pDdDDbu10BBbRyjWahPiPbPfuCdPJCw
	 jaOwkq7k7+wNufIO/cQk60ceP6c5gr3IpuwUNbC1HNstTV/gISOsTnbCN0iLrH/N6O
	 OhJX5DUiVvWQQp/1f5fDjlwBajFRT0ROot0Um204FkRJyJVJuYAv7FBLhs7nTCVBzP
	 H5Ta0ifM8Cff64D2o9HJDjRwDqjGI40jPRg8IANJNJruldJCpFuOgzu/VEuu7WF1lW
	 4BZMm6tyxG2IRms1M/GL+aAManfgbaRklDNthfiMhLRvwEKm4psSRgP8WSY6WhFXHk
	 RzQqUhCf1Bjuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F59AC8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616699357.24971.2787703010546391896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939e9fe8024a58738820435364dd0ee37a9c8789bba50dccb510d2bcac34ebc6
Date: Tue, 26 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756166993
