Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B971EF0B9
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762810794; cv=none; b=oUIKv4BzbBeE0GOtF0Djk68QbOnYu3tjUP4BgLb1Z7N66iAMw+Q4jt208vKbBPLiOWZhvRGuosMBGxoekBIrvY1klpOsFsqa+9b0DA+6SJzc1Z2zScyOGmTFA245kogOHXByADEyimV8YSIBKxy1hS1cU3eyRa0BMfEqSHpMQgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762810794; c=relaxed/simple;
	bh=Xz/70pMrvTzhlAtYJe/UDYgfWoI7nGIGSnErvp8/qbw=;
	h=To:Subject:From:Message-Id:Date; b=ovlERc5vRrbHirWYS413/+nH2JN9WpYDXppriQnqfRk5wnfw2FA2zd4sOCjrS3VGldNBsE3vOxu5gfuv14HWmud/35NcRw9kmt7LjRFw3mu7RFyQDZ89cn3YqqUBZJcsKtJkRR6HyHmikLf+CxeefrKsOe45R3AOYxltx6T7Law=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ub6tOfkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ub6tOfkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99A2C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762810793;
	bh=Xz/70pMrvTzhlAtYJe/UDYgfWoI7nGIGSnErvp8/qbw=;
	h=To:Subject:From:Date:From;
	b=ub6tOfknxmE9VSZnSXUAOnPGJrJDK0AcCbAEOosgVviYPl0qQ8B1rge5RiB1fyyw4
	 Nq22ZiG477H2/LoG2ZzenWYCqDoAfDhPzG2RdLIIy12XJZonozo2I2/SLGgAO1A/5s
	 hsDDaYNcFzgBtPJ1FvTwlsZo/b2IzlvWsWKLxmxC+URPoeNr9y4cVi4B6eswKfxHp5
	 YvXgWAFwTcp1eM9FIe6AR+8+LWsRJnXo6SKjQ9mvc193yWfm7+CS53GzJD7PcsVxGy
	 2Pwc5SJUoAzklSkj5Z8RutDjo7mrqgs0NQVZbTXGNc9lukhIkLiHbWsPue+QPcmBLT
	 CcueA4rhCuXJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE2CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281079363.5568.16339208633828888106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fab45c9c984fd04160f1a2b761f4de286ef4a7e78bf0f5145422df13e86325a
Date: Mon, 10 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762810793
