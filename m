Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DEF1DE2AD
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778392834; cv=none; b=CeGzmLOZR57+qaWla90DyQJidDNHVR2GeaKNfh3huKj+ZFOgNnRuueHL4Lc2cjJJQ6takBK0wBZhZnp0K+g9fOs0YN3B9cBeKts3jLghFQbnoIvXJoVD73I4jP8mgUqabr3b9JNwU3k/Y3J14nP8XNuUa1TcMaUca4OBI4NtThM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778392834; c=relaxed/simple;
	bh=gov2GLBxuL1ehvr6KXdeBRkaZRSLdmwSCoLzS7KLYrM=;
	h=To:Subject:From:Message-Id:Date; b=bvdCSVFH7/vjlZMJp4fGPd47sQrsz2tvQtod/BZNrXjYoIG08ZvvEj+5YQKEbomrXnHhagqn/w7MlBxLgmgJ5vMBXSVCn7Pl2uTDZ2zBpxCPNryN87voN2KYmB3Qt+pA1F3UJdOxw62FHG4W9EQ3F/nZWvyc5iIH3ZHHnCY2rUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StG2DlRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StG2DlRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C166CC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778392833;
	bh=gov2GLBxuL1ehvr6KXdeBRkaZRSLdmwSCoLzS7KLYrM=;
	h=To:Subject:From:Date:From;
	b=StG2DlRD1jFaLK/4H+tGaRtom048gE35KloEwTXvCRJsHvghmMNO21x/KdcmbcHCx
	 1iU+lGhdrvaJKQA3KPPnbBFsorxLgqz6SWnB/XbobubMzqDJ2nTSIIZNOJsd+6jc0Z
	 v0Fn1bTz4WB4fmY8o+CKu/j8gWOyyPHJCugFUOlVS85rir9KdeUuQE1EA0TPoDWDk8
	 Qj3Q7D90dvolFhBiuo0osYK3ZU36SZQDI/S7OE8EDZFT1qGoVdLeWQDvXdXlGoNdxV
	 xfrATg9k6iENarKdWvh6jD8D+dyXcpMU/VJ0KA4Qy1A8M9xRE49HFvDQFbWNvikeLJ
	 X5qZtbi4rjuaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3F1CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839283369.16432.17205663988256698178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8dd91b6425fc9f249d41f7618634850a1a2cd81ce3e34dab8a961880bf7a45
Date: Sun, 10 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778392833
