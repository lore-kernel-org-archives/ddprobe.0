Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF224D8AE
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724202354; cv=none; b=fsPMEmlBA1hGLyi7OnQNOUVPO6pUHwMY0Gj+wr6R1rae7X9aiOXrVSsTWIuqtOX9oPFrMaR5q/uoS9J49xQ8LlwEfQcTYkI3s0qRZ2Slj4sMW4b2qtMJOhuwv1U9/76JBCx7xWmJrf7v22soJjX2DzDGNhpiiatzZ6Xk6DeDaSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724202354; c=relaxed/simple;
	bh=x6Jxcs4aEo9TzFwlGycuqJYOTlQhhnCuR3qbknH38wo=;
	h=To:Subject:From:Message-Id:Date; b=bZirejQUZLaDqWY4heYI4vrn6px42q1VWceOIfWQNgMbZgV3jZcmRhBkw8aBmzlq/22xkTT9ihhbHHWm9fLO62e+M8dkUR+8Knq2cPIMFrwHygDKz/0oRwpcCcUwuNaBIx3llba9JmFQZcNHv9Mm4y0ifwZTw0wXfQB7Rw9UW+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+IF0cjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+IF0cjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1B9C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724202353;
	bh=x6Jxcs4aEo9TzFwlGycuqJYOTlQhhnCuR3qbknH38wo=;
	h=To:Subject:From:Date:From;
	b=n+IF0cjCWduqn7EUiwMg44XFkNzgeL7rFIRAyAUIF6D1Uuw8uwQQ/jKLB8iTMgWHn
	 H7HQQGiPM5R2kMvgBjD+on1i89UT1W94rZUZJvNHCmEz9oaMcE/xdp9UFt8ntQ+f9g
	 uZ35dpuSF7EWw6E3KRCafDKlRdI2HP7XzoZMDaJ1wuAluSC5ewm2FqsgI3CF7J4PJK
	 qWxSTk0PAh1oSDMZd7N3NuphUJnh1zs4H7lXxUPJWhWvT2M3/aW83SlKmCmnLfrHzc
	 CEzOR/AKXObhQ2pJ0zPubQIcPVqEzSypjc/Kt1UkPZ1cs645bp5TQEMpLOeo9pNNew
	 +H0EIq1J4wy1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB94C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172420235365.18092.2749511243918794846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698b7f468a2358737dad4b13991a55e26146e186369f6ae2912cb60b9bc5006e
Date: Wed, 21 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724202353
