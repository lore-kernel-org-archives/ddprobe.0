Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558EA3F58FF
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787750434; cv=none; b=D5viQwr0WuoGSmUjgK+RYW+IkWFTFEndoo77yNazNRFO7RZNZVXzkFRkb1hHw5bpo+EoH/eGHM06QjeeDAznki29S4Z19KescVpIlhjTBFBXAjPI0uFDkiAZG/LRuB6v0Xak7avkkRS6Lo+GZiQ9MOz9WG128kAEEga+h/gfZwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787750434; c=relaxed/simple;
	bh=+NOzId0UdBisF777GbnwkhybOn34QuFCWb8W/pqRXJI=;
	h=To:Subject:From:Message-Id:Date; b=TeH0rHLm8PcOvVLm+nhCSqCKomxJ+7aVXxoTmo1wh3E6EZthLLksd9fMro/mhGI7BbP3On3ulIiVOhNqbvq1a1CPgBsFFPSQy+fHTQEF1SA2pIIqLL5tc92vh/eHiojAGmYJoibZR9NDI807OpGYTZDpiYocCP6K97lPnyRR9X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7qHkbQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7qHkbQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD72CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787750433;
	bh=+NOzId0UdBisF777GbnwkhybOn34QuFCWb8W/pqRXJI=;
	h=To:Subject:From:Date:From;
	b=N7qHkbQtn9jWWMyLk7bSut0qFuh4zlJzJuwTKraz7e0E8mPZLESYUS7FDGapF7Wda
	 pydc+/71R3pIkXFkeNECJK/cF9i8Yy9LwiT1uHJb2dv5iRRWrzRSSC3ygHb9K3AbHi
	 Y0Bl106XiTSOI6951RD+LzHPFKePvLjQUlxlU0FZ07FHD+36ac3D8h6Ok5jswLWPX3
	 Cz0bvoN97z3Z8kiu7Ky17FyGlldj6nWfL2iqoWQ/gwLq4ujvJa4QBVidME5QN/Pfhf
	 cPe+6zmO5CuSbpHZhvbPEhwSPAOXCgf9oNLkQE4Ycbl5m8LmyMOR92onBssjkQKRBF
	 LVzkd3anhjKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD0C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775043368.10642.10049361153989247583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2f9a8f7a129fc24d3e8a0586c2e9902db620583f1eb57f64218a028ef9bab2
Date: Wed, 26 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787750433
