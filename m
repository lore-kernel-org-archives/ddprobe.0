Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7F81EC014
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752364794; cv=none; b=oO3/Wavh1RrdiTVnUXARZQDi1iWztS7dn75xUsyOb5301LO3jekPCNRfFkJvqwwxPpm6Xqh30t1MFgZ4ghFtLOFTT/Xkyk1I0o0UBIYkLvCihiLphYoau0KVq1QjTUPhKE4fEgU7Dj8nBZ7K5sMNk+uptEbPOIr6Nd+Zx+lLWww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752364794; c=relaxed/simple;
	bh=Llq/np9fxdDp+TNhZUSQAUOPrZf7/EVAKGs2mgzrKl4=;
	h=To:Subject:From:Message-Id:Date; b=Z395bMLXO/l2Ew99AaI0cEK/2Kz+5GQhFY+6jNLx3zYF599kTYUgEqRKovesVvekrt9IAXV3wP6I8F+53mbqVlwoTz445kXYUz7w+WfULYUg35N0EopE5I7ptytYHrI//8S6U16BU6L4mP1BUQ57oIovw+JUW2B/5U7OO95D7so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fi2ej307; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fi2ej307"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 985AAC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752364793;
	bh=Llq/np9fxdDp+TNhZUSQAUOPrZf7/EVAKGs2mgzrKl4=;
	h=To:Subject:From:Date:From;
	b=Fi2ej307X66IXHCaXOLHILB9erErUNiGt+4PgolAz9oYQ7ZWG6tTJHZ7Ci7yM+o4B
	 CfuYRXveQxcQag2rv5/WtTE+kjccNYbPeEtLflT9++DoFBdkQSTCK2xUZgnZ7FkeQ0
	 0Cti5w9JHXYonFYt78yos5/7M+S7/PirMNsjY3knqGNas+nwznK4oZ0/bqaYXaCVEl
	 e46HuvVI/jVB8usFX45D/bdj447qWpFuBhb/xPySW3V2g/HoO8PFWllWlAl06UseKB
	 u+tcx8CM9cBLuhowSGLPh+n6gcrHL1SuFfYqSgTOBXnnRnepEUQHY43ZJFT3qCgREd
	 M5cXs1/u7WaGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E728C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236479357.5237.6789440164278132212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642c0968e1263ba22c85d1ea3f44c2614491df861f842089cb220a01eabc266c
Date: Sat, 12 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752364793
