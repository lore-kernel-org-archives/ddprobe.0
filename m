Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572D711CA9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787624434; cv=none; b=iOEO1yGNXpSN3v+Mf7v2BkiMfRVW/U9zNU+X54OMQ6HBiu+Rm+zgxAHCCy4IXy2f0k83YoHjki6sLJ10Jb8yjPqtFeZki8qFFX1cZ/Bmk67JyE+pZ/FsY0Jg0T5AIGFknCsOJskjJK5+bAoCuA3/hvnIH7/G3ulrIVQNKHBUErc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787624434; c=relaxed/simple;
	bh=8tnkUJ8Lf2fPLQ6i923GfhEHkI4EPjf2iyr0t5jb204=;
	h=To:Subject:From:Message-Id:Date; b=qyTTfBAIq9ugW1+6vnsTW+936RcxA57EdCngPy65X2H5FSdNLbm0UdHbVqC1+mGkB30nVKDzcqz7KxQiFEfbEKsDYgnAM4fsdQ1OCI6beCBYP63gh4M+Jr2/EmX0LngmEJdPm7IlDqFJvrfqIiXeAUgq/QdE7hw2XlTB1LoJGJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ah7EjD/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ah7EjD/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4339C19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787624433;
	bh=8tnkUJ8Lf2fPLQ6i923GfhEHkI4EPjf2iyr0t5jb204=;
	h=To:Subject:From:Date:From;
	b=Ah7EjD/O/fuEkpE5g+YLxpES/ZlX4hHmYFPLkS03KbrTLczv69OIZzazdPbtrrzqM
	 O6QNNfaEo4MdwIKLnKzL6HFhhw/jJg97sfR1ElZOALkt2ohqoPUtJvjDYvugmYSdvB
	 8z7nZdxL9L6PuBfieeeybFbejLBxdxahPKr0GCdvfTar5qxYcH94ohhVitDmScFkAx
	 OWiJO4Y2yg+yrMV87UCVVscWZK3jGYKBH5fyZnCa9LCNcFZ3zVBquk/T2v5/RCHpVR
	 G/APDpIduPK73QetEMYrIWRSMJVUUQLWHDV9bgVuOIN9n6OfLb8zBRUfKk3jFtgoDE
	 vIK3nzKT5fe3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE183C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762443368.11851.3639336402187851985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35457c079c8de3a72b2f4003b5617ebb42dd93d0b9fecd999f3dbf10752f021
Date: Tue, 25 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787624433
