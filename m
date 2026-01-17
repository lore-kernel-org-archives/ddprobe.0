Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CFB243956
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768616034; cv=none; b=Z5CWozkWJ6ywkwQjXcirplHw8TiOyUFetfi8XMozDqRnIfT2D2VL42dXdLbsdc1kD9ZrMGHEpL8QmcHVv9RmFstnRg3W7GtX6+lgUuVoEtyMTsnf9isb4JBBcq8WYa6TRkUMbEadP2t1L+PiUfRCqBzqFnRP6ZSxp1Wl27vQheY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768616034; c=relaxed/simple;
	bh=Su/eHofIz6cq0V9YiWa3HjOTtKQ1lDHKakYigpBolRs=;
	h=To:Subject:From:Message-Id:Date; b=u3TTUFmRFXdCthXwIZZhm1m1qhX5gfxhxrl5R8wmVURLMDG/XiRZ6OtelKyRg/eOiWYOUd6oBa2x7B9mDvUmEOG5yJz6DkPsbI+FsaJWYWi7O9ZMfw779hKWBfAUghLJuiAfCPoyJxMSij4j7rzmMt0eHGjAeSo3nV1M8dfy42E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQ36g2Ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQ36g2Ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E88C116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768616033;
	bh=Su/eHofIz6cq0V9YiWa3HjOTtKQ1lDHKakYigpBolRs=;
	h=To:Subject:From:Date:From;
	b=DQ36g2OuwHf36E8+PIDOCBVx2rGi0G0k4jWhKB7vjV5ak9FmOUy65crxBATrBdey8
	 NIAQfMNRlT0/x8g5HcbcgyLnCeFjaXSTpkgpVjLcSTYV1ts6bLaZ5e0UUw0JDpB5P3
	 Q1YgsJduA9p1ElyCAatTYojypUWS9NvWNFlaFIFCT2j8WM6NVeggVvNsf/cu5a8NrI
	 mDv7KPnCJXN6ZcP5DmqOi0YfY+lvFXf2s9IpHl3KAuc9/CjPmF3n2X6+NVWY6hD+Cf
	 JNZanaCRv6/smykuIIH86R4USGZUzZNBAc4oIYffEJmwE0A1dc+ur1XpQUef67qVcQ
	 HKvqQd+3ow3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BBC9830C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861603357.26225.6313670795023422276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44424f39e560e21184555373f8003f2f36724b001d41ecd34300d43d1dc24d9
Date: Sat, 17 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768616033
