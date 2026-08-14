Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590F2282F13
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786743034; cv=none; b=Tgczbky5K77XeSt+HK5AwuWkbM7TqYpg+PfsGxxopxe1PC720lu951ZidCiwfXpA4YvJhShO/DEMGvZW9TZvsWK/9VMA2SdH+v+Ha+K/aDKDR1X6/mExGPcOnsIW2AsoetqGqZ8AdRdOG2nRA8wxEeDjuiQEyLZUBWKLpk+8kgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786743034; c=relaxed/simple;
	bh=OQiEWwc4BK1gCtKXmMIFEwLmvytH7w/+l/irAJzkLtQ=;
	h=To:Subject:From:Message-Id:Date; b=UR4hY0U8jIFVPgaDHC4rkT0i2Y9vuUicnewYQI9sc0bO/yfowGQSPbBfMO4rmRaKQQgrHH6bkB+2jWy6dIZc+OxV1QC8ssaSQA6RSnpWcjzgw45GfrY0wWYdmw3bbkXlPT2NGghLfr5k1Hhhmukl5XeS03KTcO2CHZY6GL26iYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhpPsl/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhpPsl/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5394C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786743033;
	bh=OQiEWwc4BK1gCtKXmMIFEwLmvytH7w/+l/irAJzkLtQ=;
	h=To:Subject:From:Date:From;
	b=qhpPsl/Ld0LMB191S9pooQt9hVVQ/j68wlJVRQ0j8LdgXI0pBHMkOIuBPIGWqaFlv
	 VJfdsDxbTZYKo6AmfdOxC5OMPT6o/yVvydzZdOv24cYpyMVTlJRoJrCycKTDANpH3A
	 M6gDGvis0MtCEhpfpCFKCISMQb6d8m232cNUlZQub9+yhzMAiBLXM3uBI/Hc3sxoMH
	 4zjttWvbItikq5aJ3cjXvEmihlaxVFY3RXoJjmqk2ReYFPmoVBwRM2XkC8KIXOL0YW
	 aSjM7obPbL1XOUxRWcDjbGiktRS/JrNoaDYNqO0oGzpYWkRkF0AZwA/Yk9/2tO7YPc
	 k2jmXzey634FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA996C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674303368.8018.16367290561248866398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d70eeffbec48cc14f9657b71e2689d94b3220cb95ecc60f3ac4a230d91e95b
Date: Fri, 14 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786743033
