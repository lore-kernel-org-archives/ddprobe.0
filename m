Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950A378C9C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789217434; cv=none; b=HdJu3NVj6t6DEuRKhUYsmONfjYBB74Ov3zce8U7zdO/y0IQVT0PniQnp+0C1jG+ZvEorju4JCicqsJsjQbg8KeYkIYDpUfNyJ6DWj+pvjwNZj/I1bMSYeF/tIWWWdQlMZ/MDFuJLc0RlH87A9PmtRZjXPEPWNBxACM8wYTATWmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789217434; c=relaxed/simple;
	bh=hAq4q6Env88zVeN1uRxVxzd/mrkyNnzRZ8mH1Sr6Ndg=;
	h=To:Subject:From:Message-Id:Date; b=ICN6M3Qy34QDFHjYzWq+8DsO7jfjH5q+gMfxBoR9i+PjqDLNW/c8vnYPivKLp6MkI4hASLum2QhA9bpL72GEUUNqdD11lCI/Pyfd4stj8qnx0BTCf/JCU5tIYhfFkctg2rOSP2q6d109/AxOtpIy9BLMBAB6lJ+l/YODdpc1dmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3ODENG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3ODENG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DAFC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789217433;
	bh=hAq4q6Env88zVeN1uRxVxzd/mrkyNnzRZ8mH1Sr6Ndg=;
	h=To:Subject:From:Date:From;
	b=o3ODENG9RZFFM9MDtPgkyxNOCxqqSN/4CRhzXqYub0RR/A+Vv+SujPv1zCYT1x6X+
	 0fWGYm8rRq9XBoB+5B+8dCH7sqhxLU+K2QpugcrhtCf8dKk43B+XF8Z2Iq4YN5YLdB
	 mJiIJ1wgIPiOPR2qvXbwf0gtJEbOdnWlgqU2RYp8KD8QrGDXI7cxfCeaYT3DAQzsnH
	 sjRvEc9WTy1J2JwMmo+N0bFh2O6WlO3E/CeAzMtPX2c+rx53Ob/HJ8F8Kt7DKjTzB+
	 ElB6bjKcX8igiz86kn8pIgKvwUCgyIEH0MRtK9TG0V3dU++yznr98mWbY541z04WS3
	 6HRAeOfM+dNxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDCCC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921743369.27769.7015598701753019186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d98f1d132673298cd9fc8482d8bf23081a2059816338f7e930b434d4483fadf
Date: Sat, 12 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789217433
