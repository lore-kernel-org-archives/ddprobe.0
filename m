Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4002D3234
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748383194; cv=none; b=gjoo4Hb37EJyqA1fCrGxwWd18yCdyVaLKO9RCtEXyfFmOT6BKtHKvgVUvvZFAOhvYw6UlR7Lzz0HHLviqvTiiWJSRfzxdeWWWDMMfvwnxaNmiQ5Td5i/m54Y0BrJCzpd014YWlo8aTQKQDxVL6cWXWoWRxpR5kNg7cxK79W+Msc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748383194; c=relaxed/simple;
	bh=vz6CQH4KKnxY58amQbqHkNllA6Q0t0AjJ9XQ7jybZHw=;
	h=To:Subject:From:Message-Id:Date; b=SqVqqEXQLNSNtPM1nRbetr+kJc6jdZLMqrj6rzR0uj437l/NjbUi4fcqjX4VOrdMK3an+/qprNVngcK37br2cJ5PdiItNXAKX/5Y1Rbm+GIArSQCiKuLmuMP/cmPQ284KlW1gf9Ki4SBZ++jeGAshiw01tOIKyylTSqn3O+8Jfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Il21/oH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Il21/oH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB33C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748383193;
	bh=vz6CQH4KKnxY58amQbqHkNllA6Q0t0AjJ9XQ7jybZHw=;
	h=To:Subject:From:Date:From;
	b=Il21/oH5wlMOfPIRMwfrdFbitNknPbeLNo0V+Cz7F2oPdpGDMQUQnSZnDwkQUKfYD
	 ciJzUpHrdfkaWmPQHKDJz7r7nr1f1eGjVzDAXv6vS7eaak3Jl7ZusWkbhTgsV5sl4k
	 X6alkJyZI09qgP5zgv0kpKllVRER/DmRRDIKu+VpbZv7JHuRLG92F7wjPCOodxL/bs
	 SmZNXYCOtVuQr/DcKuMXFEl3nP7olqFzZkn5e3oV+QMwVJ+gBEBMuNUJ760r0E+FEn
	 AhvD/wfDoH5vUeWQ5w7rn1ehQv820M2PSGIqyqYkl62cMP+aybfsxva4gfUOwlOedN
	 +bBUeSzCwNC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4DBC5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838319362.23510.8115124712716964105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24344b6dde14fcfe701cf9a4add9049f42524328e9829477a71583a7018b10db
Date: Tue, 27 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748383193
