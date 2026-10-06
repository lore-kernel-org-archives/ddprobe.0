Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98FD837F01A
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791271234; cv=none; b=i6sji++Vo6IeUE21C8FzVKwbuQaHkHQZv5XPBQ2YLvMF96xwMZPcnJg23cGgD/DkmrkVTxl7pk0kgMvjSFEQdIzfxb9bX24OgQ9O+tIOcIq0Yat3Ike+LGK/qqWvODCusUHZiZpRo7POvmWnusXIEF1ZNCZP+jSxukZbh23jItg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791271234; c=relaxed/simple;
	bh=9aL9fAvOLXqD8H+ff/Jnf/vy33rwkIqqXobv4mXp1zg=;
	h=To:Subject:From:Message-Id:Date; b=Fm8jdH53j2j9PUhWga+dhow4Mgyva6dIxmfEUukIPb9TE/5sx1RJk3KRk+355I/aDTf3y4HCpL04bJDD/hRSwdoINUCaFX1rqtK5V5xgxDbdgHx+LQZgZi0lu1m9PurPbfUw6Tk0QrmerrbeflxGgbC8yoicJqYQb/3vgysLx2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfOwGp6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfOwGp6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FC9C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791271233;
	bh=9aL9fAvOLXqD8H+ff/Jnf/vy33rwkIqqXobv4mXp1zg=;
	h=To:Subject:From:Date:From;
	b=GfOwGp6V0OOd/cFALtQBZ48uVZMN8ccL143xPlfzmcIP1PR6Hv3vxqjV75Iz7bQJ9
	 GFsRd8kyhIt9UE0RYRGdEBefSypO7WGcsFOBhJAP4973SLuM86zURkNGnEwfdwPNLJ
	 16xWhMa0SPmALm4OjSPmByUsBY0/ARScJDjL8o432jU/bEPVhzV1/lVP4/eCVVjhj8
	 srsssu+MftNkD6+KDe/0bjmfSlL5mfyIWnEP7d/WG0gGgpGWj8tDoFMVkd9ZeJl3HQ
	 dIm9Dqrir1yIblieqXJ2McCaVB6o3rQHPP4qlkxO1/GTc3J7qcj/OylLg5Ec2SZoA+
	 mrb+CeuFLoexQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3B3CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127123374.13678.10438952989586787128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f937c0c6eff75b19cfd94dc62b57e9a877c05ed6ebec9653425d3a91404fc5b2
Date: Tue, 06 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791271233
