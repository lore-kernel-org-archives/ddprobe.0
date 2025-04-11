Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDE71F03F4
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744374594; cv=none; b=MsVVh9FTf2Gz11Bg7kh480pZSw+/Qn8JgYzCuyrbBtHiAMBWXf/d1KsghkTXrHgP1sH7r+i1MLwCOufAmq5CbtuCqOiwCaLADVn3/VaBxFptFkJ80TqZp/IuuzV0CNlS6BNY5TH9caFuYQ7fsDOWgX8WripUvsyO1FYAwzp0/54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744374594; c=relaxed/simple;
	bh=5hyiMy4sizOd3No2pSAVNhc2LPAC/6gG6XrfQGdIIU8=;
	h=To:Subject:From:Message-Id:Date; b=sKZWVJ2g4J3XETxAaZ6A+JmO4kJX7//xtQKJixIPkFbZbBbDyARxWtbpFLRdH1cH7/E+EcRdhb6EIwABn+HNse/x1zTAy2/mLerHzE3LyGs6F2LogX7LWy2a9ECX6I1vx/FwZ2PdYItZnv+rzPwSa0TSmcSP89rnFH2L6/CGH3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rA9v8Fv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rA9v8Fv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FD4C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744374593;
	bh=5hyiMy4sizOd3No2pSAVNhc2LPAC/6gG6XrfQGdIIU8=;
	h=To:Subject:From:Date:From;
	b=rA9v8Fv4kc/hngJn/oaDyJ1AWfMYdcZlTFbq+w9IY88MQGx7YeNouLU26kPyiCj53
	 wvUknmfMhsO3iBNT3Se3DbYH4WhyvmgrqWdSHL2PmZz7im51P+HjRyxIBOktATgR5r
	 y5jKjICOx/aZ/AavMKvBB/HcbUzq2bQWXjNOEFSEfLQ0M/6mw5gJJBTSc+kpolS0Qg
	 i/loRaqOjVsXAuagv/Vf4qY7dp91zEsW9AjAkjSACiDgdRCmS1ARzJs93YwvBoDB15
	 TuQ6JPUmzDVR1SCC8RQ+FsJ3L59D+X5v8ZOIBhzQzOdI8PWLO1TOLDfmQZluKZOsTt
	 +xjg7gXpt08cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5D5C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437459362.6137.17456372950140182864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3acffd0c2dd5dfb85c018f1140fc3fcd3104d941db52b26ec630aa7b10322c
Date: Fri, 11 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744374593
