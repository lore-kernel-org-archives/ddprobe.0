Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FCE374E68
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773611094; cv=none; b=tKtFA96QX7Nb2WsXHBb1tp1KIYCvEY5WyN9djE0GYdKZu8+u1bghYV8fBiDZ/FmOhBAEehm/IOod7LfGjQEDOHDpCxENW31k0G0CQpi/2saru4Vpch4vjzATQ0lQdB1bQaegqIQrTTG6WdwkK6Z5JRwdwX+rvHxb0RsNwKsOFFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773611094; c=relaxed/simple;
	bh=l9A6Wn46/3Q+ISOuS7ieIFO2QtscEWXG+13mgWPjerE=;
	h=To:Subject:From:Message-Id:Date; b=PK9rYiFVR6+LCZp7WUviLSmax7EaNKodRhIws3XD8vTS5k11HrKVPeEQnpDUlJEe+A6McMQXM1mCVdj9BD2Zyp4fgJzwpb70LpxLzi/3/BTtPDRdIPuvIhmfOLBs1v44BqQ9UtSeaqgbrIDBYnjHJdwaZ0dkKwHMXgPqbF/U3T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzaCs38L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzaCs38L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C80C19421
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773611093;
	bh=l9A6Wn46/3Q+ISOuS7ieIFO2QtscEWXG+13mgWPjerE=;
	h=To:Subject:From:Date:From;
	b=tzaCs38LTyajQ8qqaeE6DAXz4bY3XdhqnB4kNJKYwxyDXHg7fcvvAX8HfzypklnCb
	 IltqtGYObiKHPeMU/VbsN1pyDxY9IwRU4LsdH156VyH1LCZojwyy2k03IEjpu9BQSy
	 tOtC5/Dod/SjNEnoBr+tfbzny1Cy0rL1wHYDnhNi5GjK4pU3nEBjrnjT3pvIkUC+5C
	 aEC+Vom44yf0amiJRj9//lRbtRPkO1G3b9gJc6zwRUxYoh6HH0MIECkaUCrBL0qEo1
	 cyIZH7/rTd+eR9/F4HFOTtAmQl2miyGqXl+QRSp66nIewg+PBc5rTsmT26JXS3a6Od
	 YmeGY2Y2ESuFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D8F3028A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361109358.15671.15718059116867447262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a41065a3882da9d0eca5518cf64441e62f58c3ec1c6ff34538f60998b0294e
Date: Sun, 15 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773611093
