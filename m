Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2774415855E
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755142794; cv=none; b=nGzr3QVAUntoLFWNV8f+16FzJMVOE7TUeqJ5LNBkrZE70zvJAUth+bOHPySW0P9/xjQTZe1y+65adNogU/4XM1PZuYZmRA5fdCVlqRkyb+Ts2r8wMCfa3fNMSER3R7IyD+PWAFg1UQf9yePsx1I95Q5xpNOQtTlDNk4vKLQnhzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755142794; c=relaxed/simple;
	bh=P/+gjXuuLH5mt48yf57w9FGhgc7xUUP7drSYsSraQAs=;
	h=To:Subject:From:Message-Id:Date; b=BcobYPUnTdx+SQ8B6GU3j3w87HfHDjHjrpPvBfw9sUy+s4HQcpn0ohV5Y0P/jLXtX/WtYI1Zac3BBdO4KWsAvx/uoyhEQZOI8xVdonozNk1hQk5BQFw7Qk3uxIzyhMF/6c0zb7BobvsOCeHr50MFMQmGJxBlKgZrbGLCytelSJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttdbizyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttdbizyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B607C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755142793;
	bh=P/+gjXuuLH5mt48yf57w9FGhgc7xUUP7drSYsSraQAs=;
	h=To:Subject:From:Date:From;
	b=ttdbizyZ77AVyy9E+zX++P2VbGRgWH85NU+k+DEH1cMuN27h+5UzZ5HY4GRKr11yS
	 nvRL1x88WlH7CA6G/ceeOAmuxpVlkrUmJtEqrgSwjkuMFJrZpn6w1YLTl0xoMkKdHV
	 P5PTwkavBZMsa6RHQLbKZUlPIXosWsIzX6NlYh/lLlORDtKtFJa5W8Eg+SAomuPpwo
	 B7TVzgy990xokiJP0eXyuul2AZuw11g1SO1H/IuhfPXYTf5t0shCJalWt/z4tkPKt3
	 TOdYTwkNwCedCaCu9jDqzsJLJoX+nJAWvSbnLhUx01ZYe3vUOA/pfZYY+FUpCzyJlZ
	 T519bpAzG7ZWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E737CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514279357.12039.266988680270415749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea26368b9aace96754155890e3bb93ee18ea80e810b73508b71689c150314f2
Date: Thu, 14 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755142793
