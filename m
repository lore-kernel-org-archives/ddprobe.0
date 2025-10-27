Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CD527C842
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571193; cv=none; b=leKbKLJ9UVMOMSr3m01PNIsErQvQnaGYsVK+GGERM2q/ChmLB1RslkOVc3tLBVOYqYqnweX/QIBCTppyb4K9WJ66kh1kOQ/rPdHCgQAMOcLEO3GMU3boMAfl81mtKRAHpsEfcCceYHv1C5WN3CD5sDs833iuuEHDaqkCQdJIndg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571193; c=relaxed/simple;
	bh=AHt5tqXUHzdd+pfPypVFEaEhv0ZJxJPYJ+pEr//WAdE=;
	h=To:Subject:From:Message-Id:Date; b=WS0VL/hiLM4HuyqG6ycoBo0+rgIL5GbMp3ezOMOAZ23JIsSp41hZSjCbkoPK5Msw1nXzqy0XvZGkdEWzXt4TMGRwE3JOgrEjlWYk2crdDHEv6GDA+QgrkKuklBmNIn/Wco1P2kKIHrVeKn+Vs2t1Qa8vzqIG+KYU9K/D5K2s0xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcIO8dUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcIO8dUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A0AC113D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761571193;
	bh=AHt5tqXUHzdd+pfPypVFEaEhv0ZJxJPYJ+pEr//WAdE=;
	h=To:Subject:From:Date:From;
	b=lcIO8dUhHRn/Q0WPuETr5hHRZ0+kRYglpkOw4aZYQYMthTjidx7vr0VFWStXYTnlM
	 1DvlPD/hcNtH0/8BGGDWEwXhalbFspFS55XZQD7EfPLXTLEOE8JmT61h3+AHvhQyiB
	 +ggjxrHxdHPoryX1BnLIXjXe3NHDMc69Yqs94WF5551rXr7iaxttabNy1lwi5dmQih
	 xCqHzZIkTLdMb8cfZVHxOCpdpXAO6dJAIpmbfFpC2FpIL1EHbhtTAFTnBd0rBSghBX
	 lF4f0YXGzDxFM6g4fFWUeY8QYUam6fu87srMoUQE3VIey/uhyr2CGkH3W0mJPqmPOi
	 VS3nk9K2e4DXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94269CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157119359.17871.9297139378008931544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5043b1639ba2f5ec7e8d4b206d66aaf3fea5362f559efa7d61bdeb72593f662b
Date: Mon, 27 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761571193
