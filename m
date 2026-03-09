Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98A4217659
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773049493; cv=none; b=D9+UUp/25Zn5WqY2/vda6+ur/tAzBWVIcVxT/pwAd2h+76lBa5dcN+fyWZCDwgbvqrycHcab/esdWUpC0jlbciE4mo4cJd749UBqRFfv5yLcBFdp9dRSpL8S0Fs9b/pIOPLv4BaWeT7qM+DnQm3k3z0sfhOGup2yzUn10XiZzTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773049493; c=relaxed/simple;
	bh=mJOivZIVG9OhSAirbC1Xc2UoEvL14ltc5ws252YA0ZM=;
	h=To:Subject:From:Message-Id:Date; b=jYYK0yay8NuUG+EG+M9YImRkbE5ySZc4EY+5uVx3qYZt13OhF7exKMa3umf/x9lVIT6GLXkDN+GzRRgjt/GVgfwWSGB8xJYVPqsB6j6QiTtEKSxJYznBTTXNLV0NRhSNN2I07Y/1XbD/DFTM2nmDR+huAakBuQwb01uR3xV1k34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAXmSP1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAXmSP1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE49C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773049493;
	bh=mJOivZIVG9OhSAirbC1Xc2UoEvL14ltc5ws252YA0ZM=;
	h=To:Subject:From:Date:From;
	b=ZAXmSP1naa5aREUlnbXZpahlrb12n2Ipsph+DB7sMSrTqsYx88oJfHW+OjTRlr9o/
	 6K5RiMP4HiRpZSbk7Eq+n6R6achWFpxJqIRGz6LXy7QYPsu9BL89WJzjSlGuhWZ7Y/
	 yHLBxk9jO2kpOMLh0NF8NV9qIenTljDiTw04ZtL7ipNQeBxeqzlsrBPuIhtx+pYQDh
	 U4j6xFFVLECIofPW1FVA9MTLOt+fRxMURx6qlF8qyBlrix8neXSuX2a6h2gdZ67YgQ
	 tC8uAcUEgfvSVlPY3nS15w7Qed3RcY1m/46k2fwsTf9RdA4SlQonj+Wl41ro7bxAb2
	 QQumy1cVcDxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD54EFCD71
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304949358.8410.38674349500934344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe470b44a2af48d1a1ff1279d791a895b1abb61f7f366997755231319baf37d3
Date: Mon, 09 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773049493
