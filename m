Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E00BE4F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735927554; cv=none; b=ZLz+d1bwbmmUipk2p7UAbraSqPPWcsdcfxSNPM3a3dzlMaBlmei6aLNVuus52K91srIJxBTwMMrWV3MA30L4FOOAOQYxxqqv/lQw4RmlOagFwkyqXp95JbB2tOzlRB0ofoqaiYg9bGZttkyIweGNtZrF0H9XFsLCTu1LoeBsGMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735927554; c=relaxed/simple;
	bh=XBHC2WF90d3pq9B66v5eI7dIo53acBWAnAy3ROObWXw=;
	h=To:Subject:From:Message-Id:Date; b=bN+MSJ83DjtUq7pcHTcZHwHqxSurljs+tTzKrhu46zyFCINa9s7KoJqHtrFshw1IC6wxZmiHu9tW18LhhZKOfvt6Od9K6D+DDJS0NO5TXccg7ktS180tCwuhQpszyNLMuQ1oufZw6xsnHq75MV6FLojUAiWybzBCjPpMt/xY4Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDMajocf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDMajocf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA44C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735927553;
	bh=XBHC2WF90d3pq9B66v5eI7dIo53acBWAnAy3ROObWXw=;
	h=To:Subject:From:Date:From;
	b=iDMajocfaBSPFsOX6Ex+U2B8RhvbGqQW3ecym1KTlLxpNGb2DJiPGuwDNYtyaqKaz
	 xOj9UOUulLgFkWYmXOd0I0GkGrKWSy6jzEmoutB0tRPR9uIoSBrKgnt6lk9Dp0085I
	 aXOOzRc370jTHc682dfBmLETznr5gSF6/hnte/SkduDucBjbqJfeV6tGCU+PRTAIqg
	 M0dGOhCsKLbIQ3ZbyImypk0GcXk0NmNLiFQHYMX2oCEx8KbrLVSOwPMQa2PDaIoBF8
	 y+qC9CxHJC/SHu3RhhP6USyouRFHxL9YNxe1esinaV1oRN2qaSTC3cptivOwCd6xzc
	 zoXBnvTZTLyEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FF1E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592755359.4928.13237065875515180205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b04f838fe9728b688422376f0c1c8b08bf17994de1c6b2574c72cb75c399363
Date: Fri, 03 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735927553
