Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF0B2C0F96
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759493394; cv=none; b=RvOj/o1WXO3zLYfKFNvxHUFJmZT2cwL6Nw9iUm7J2KFs1kxwYsHCWhP7NmS2s/hS5pJgw1Bfbx2E+JhTsXYLE61/U2/K+PBCbIQTwoeyUXusLot3bre27k7HEvwHfIWLwNDkLzEiGVltGNwpm3TstG/Tv++RYxBB/Kocq4s4WCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759493394; c=relaxed/simple;
	bh=tJqYWJtiU/LaWytcAYOvi01T0zQdWEomUU6sSqj4Sgg=;
	h=To:Subject:From:Message-Id:Date; b=mP/FNFOC/X7OZdE3pRLBngZkFOZsTkqXieu3J2zcMbx3LUkw/BjwWmYOq792DUlb2slE4J/4K7Z2DauRm+CulGLPdCYCNNTiJB6xsWYpITGPCytPIxarrN7O+mtjvscQVuh6RVakm9cwp3WnYcpPlyOgCLCEXDHUHfM5jPZVG1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6uvjpRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6uvjpRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97B0C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759493393;
	bh=tJqYWJtiU/LaWytcAYOvi01T0zQdWEomUU6sSqj4Sgg=;
	h=To:Subject:From:Date:From;
	b=U6uvjpRwQfain5hTDmm4rsNTfzp7A49i3j7jJmVsJjc/2CX8Fj/AauMK3IFQTl+4f
	 rHNOJL0PTlpjhKEwmlOjyFXyYj+MCpjmrp/z7eL0L6+wEILax7BBUgKLcQEWq3O1mL
	 d3XH3KlQmqZr1O6w/nALIB5mWQyyoFuc9fxeNGUu5X6+g0JrqaIhdWNk0JBcrt2EnE
	 9xgV3qbHLRcqvgK1Vm6FGo1rlr5aPwhh2ZU6xyCmROYQm9M08hQ2Tj8CMCqZVheQxS
	 MaEK1M0xvI5CTElZNlU6Yf9nin1MY+Usd87O3hgS1F/9mDJ+q2FqqT1zgUs9KARnct
	 gmnL4ST5dhNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94261CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949339358.17083.3461583029616314570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9754a5a9d2e0107cf0ad446804c522ff4d5281a4a716eadfc08e7a4f683df9
Date: Fri, 03 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759493393
