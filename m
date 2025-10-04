Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7AF1419A9
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759547994; cv=none; b=D7ASM9QLt3MdDZms1JNRGnA2/7Sa06RFcjHZr7rpIK3wjyHhFOWar++1m2Zpj+VXGU4snIT071ZaPefFT2z1LErskzJqTCe4gxjWsarxZZ4RBSrQnOC3fLev1Nergnto6Li5mfGqUv/YYr5/ks2B7dx7ZVGWqSKQM3PexCYOR7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759547994; c=relaxed/simple;
	bh=8TVR73KCa7oO+/ivd0h2xKto+rL0SiVjgIp6DjcNsoA=;
	h=To:Subject:From:Message-Id:Date; b=lu6CePw3AKXS3jpRjUZLQTdAAWB0UuDKx3b9SqmXg9RKkWunn6pzvE8BBrJoPuGSgEP7BltgNDgLw1/DPwmyr1Q431t5XK0HIxXtzutAKJWHPkQtMwxHj5P/zej2pJ6VjImtaB03ucCLkgkokkWMz4yrNji1VJvRH+A87SYsP3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iwqr6KS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iwqr6KS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26FEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759547993;
	bh=8TVR73KCa7oO+/ivd0h2xKto+rL0SiVjgIp6DjcNsoA=;
	h=To:Subject:From:Date:From;
	b=Iwqr6KS+3Ew5NFyYERMKLCcdumBsD58mLmeu1qnrrG+blZ4LPN+LyvlO23MPxdTrZ
	 EHUAeaNJWDB3PHT/IOqyNGQQt8pETy0i5WBkWAMHLP7UqDGuueyn4t3QvszvHoiKGx
	 npr4f/taADKGxXJel6YSBOxq04UrY2PagVDt1UV05k2wl0SG7tPyrzVAbOzolafa1F
	 5uIphj0jJrsrZEGO64OUoqpXFYy1HZvEP32bR0f5RLxp2RJddto/S/Tt432BjWCaqg
	 JiwK58+zUtbQF6X4iEGzG8YVo6/2nGA4cDm3npOR6JgIuC77ZEA5W4dbHY4XfZid9n
	 EYqyhY0T0F0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F71FCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954799357.10814.2568015014302419464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de4c7cd83fe0bf73cc111410951bd89317b5b5ca81b53bd1af9fe152a3862d7
Date: Sat, 04 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759547993
