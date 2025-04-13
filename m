Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F111D79A0
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744575594; cv=none; b=YtKYjBNVPpKaLdCoYxYkNxQpTpSCqc9fKQn18KrdHr4BM/d3JyEDSHsr+UTUUXfD6osUGbZcsOn4WWB9qfw3mjdq7n7nnpggcuNht3eXjNskGxkZMecTQalUNBW0nPY2r31cpvtDa3sbgXkizmDkTJRo616vo3QrooRp7BeCH2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744575594; c=relaxed/simple;
	bh=oxDJ5Ji/krICiLoT5NRgbpd8bQ4AFwhiMZlGTEQlKg8=;
	h=To:Subject:From:Message-Id:Date; b=HZ2gfvqxvo5TjyZAPMde9z0VKTW5af9xamWjnlLqzYZInYOfrtKbZ5GKJzjwR7KUinR3kQVotDjo2lfxn4AaJElUJPNHjcBOnNbRZoNiD3VzzyIx10jin1csgCCF0Ah9/nEhNH2zy9WEJG//UBHYoaUJd+SWmuO0mHJUWAdbyvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riPo5N92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riPo5N92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB7BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744575593;
	bh=oxDJ5Ji/krICiLoT5NRgbpd8bQ4AFwhiMZlGTEQlKg8=;
	h=To:Subject:From:Date:From;
	b=riPo5N92XoNIFKYV0khJdFBcyb3czrwQO89yMtR/WdGhS7jdpmxqDXxlUqBp+LItj
	 g0kwsGl4IArNPJdo1u0BF0ZFDZLn/KjIY/89qfCu3tiMKYtPOF4fdArbO+EDysf2h+
	 dKBK+8g/EtYElQD5UZyqkqp4Pyd8QOg2irEEy+DZ7xXfDtaqYSY59MR0UmXneuqxfJ
	 TnzokULfJfbzME9jzdVhmIMDWpZ4iPAvaexDPrUNH3sc2gNP6HMh7GNIxtAr+QQFt3
	 mcAB7x+jIFSn6DGjgFyhTz+4YA/XvMV5Gk6AKK6OlHbMRNZc+3RTzQ307FmvdtviVx
	 T7OmCu2ZC0R9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D9AC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457559364.16074.18276235255603534979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f41a88beca285c0bb51825708ba483a887955079c2497346337d95b6742c97
Date: Sun, 13 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744575593
