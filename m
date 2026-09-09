Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7CE23C4F3
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788925234; cv=none; b=XZkFzDexjGYTAwPZY65ucjE8PZCIPfjIjCwbphUZDx9tf6sWBh+iudieM7o7iUy+FqtnGsr+K6ilrx0u6QXHY5MjJi416jfwV/rWmYeUQ3zKDcKHMjtwpQ7zKltVyluLacMFMgmm5osXDQu8kPdsq7SeFizPKgZsSw8VQfGtRBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788925234; c=relaxed/simple;
	bh=1mLNJKjrfmzL3ZASF8y9Cfu5V/2lYPZkm5QIFrCyAuQ=;
	h=To:Subject:From:Message-Id:Date; b=rO3mKvMiMQ3nFWKlJMl3Ffh2PSWNgrlkFAdAOdmuqO9g309Fx4Z3WFMXo0Yu/A066IMxgn1BW5pGPLoFCHa/31s/YKidMuwagVkiIk8b9vV08foQQVjy1okQyT2mAu8DBIhHKsA5shLj/X4OCN/tnz64XsZxSEy/tNF80kLD6xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zvuk9j+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zvuk9j+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA517C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788925233;
	bh=1mLNJKjrfmzL3ZASF8y9Cfu5V/2lYPZkm5QIFrCyAuQ=;
	h=To:Subject:From:Date:From;
	b=Zvuk9j+1hOTLan91FZSLPm+bMXAjpIM0pFjXulc/WF4PidPQtIEiuuSaGQQUgRA6v
	 F2jWec9iyUcnKaLIk+0nlk4v42yH97d6qrB9RyvEKrdNrUIC8kTTbif8ND/77ig3bY
	 R3QbDUH6ppRzQdjOUehThoOMpWhBEhBF9TYF05TozNJYJgdycTiEajAhgDau2gHYdo
	 kZ0hYjXvufGFLq9z4ijOsg9+JlbdUraI5m0n0oh7tfk963pJGRQxqIVzVJxqWfFgMt
	 ohUV9XRcA52Lg1jQYc3158AucflkDd7iabQagx5x/fjxfg/FuTX3x0TXFApAPyGsBz
	 1FD+CHhXVUzjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3DFC79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892523369.21793.17587177531489327071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a72c7e478d6fd8431090c5df852f80c5d79f5cd1bf8eb1030f1b4d2806813e
Date: Wed, 09 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788925233
