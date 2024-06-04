Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DB12A1CF
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717533983; cv=none; b=oyiLaM8wGvfdQLpQ2ifsV3BPmbFuQKWU6WKyc026qXD+EyjqhpoeL3EX39R168ZFHLqTnMMlc/QVPAdcd3nHhreRpjJTShL2rzFdkBQ5TzGYzKf0fXVbJdgP6c2KhinaXGTsCWTnLgTsD3rOUFcDbH21aaHuaPGwsR/XOlnmfmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717533983; c=relaxed/simple;
	bh=MxHBXqPoJ0cCfHrKvO4nmIQ8okTI9zur1VgSM1kJfBk=;
	h=To:Subject:From:Message-Id:Date; b=clnjcR9C56iH7NJhYC/Wbv+BTNwCI3xRpYGOewhsHb1znGU+6Y0zyGY36YCktPD2qbL2Um2pVa6lYm7MW6GK0bqKfI0EFN/TRFxHMrob68mekK237jCMsZvgitOiQp2LGzf3jN6dp1ir2beemprTXF9y4wBykFAFMmA6dz3vTHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AABaf6nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AABaf6nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E5EC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717533982;
	bh=MxHBXqPoJ0cCfHrKvO4nmIQ8okTI9zur1VgSM1kJfBk=;
	h=To:Subject:From:Date:From;
	b=AABaf6nwU4N1OcDIaROXGXlG5vEe9tpWYz3sOmPyno/Si9HMTAbNM1vSaFsOsVm0r
	 7sZfdn8ucfYk9DjSwMzqZ1Q74ML0T72/aWgZ4fMuwFINWi+dCVZc+ezTHZ7u0v5Azi
	 uY7GpiiYGrilWsCsxA4nUJ/bcazTlU6m/g0iASWxQmG5hOudsykeY/MBWfg7Oka5sD
	 3vx4DIzjjkM9riz6q5+ljQFsgnhc/cI6WyMX+of7OQVpERJBIV69JWf9C4g1Cf0LjC
	 Ji3WUMkCkIuUxmpvWvnbGvtCUcEW1fuxtdzqUu896OYiWWmlK9GwRwA1nVs4rBEmdA
	 7GyUNNCCXLSrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE49C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753398276.31538.3353568535222159283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058474d3ec23f0ef2573283e0132a613bddac513245798997153f3587099060f
Date: Tue, 04 Jun 2024 20:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717533982
