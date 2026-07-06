Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A382AD0C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783299514; cv=none; b=QhHch+uSXqJ1uBcRIQGpim/MIX/j0A7iECW/KJGl/oL15I+HvYbMRbWFZxqs/1HdYNqf+mG+qzGdNvyHSYyIWZG2t3H9N0xy6clU54GGxnVyVcE+4907z6f5z+q7T5JMpSJxzR4eynQ4e2VPUAvueFhK/nnZsCuU1A74UaaI7Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783299514; c=relaxed/simple;
	bh=Tqpl0mCR4DK0ppiBK/wxro7anTEnC5ONEP94jihhHaA=;
	h=To:Subject:From:Message-Id:Date; b=GF8R3zgjQ81RqtCi1NvypM9BphLt1Hw8IytQUICMsXH/ClqY9SWJEPNVCwwRH4/q4GwrCI023MAQcTIhc8MMEnIu3Z+x9RBAM8kxxEZf8jm5W0CR9m8i7agNv3p3ltPGNZ9gGMYUBTlF+VEb/tNe8DBmes0r8ITmZT6IUGbWBcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/0tuHN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/0tuHN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD027C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783299513;
	bh=Tqpl0mCR4DK0ppiBK/wxro7anTEnC5ONEP94jihhHaA=;
	h=To:Subject:From:Date:From;
	b=G/0tuHN32qsIMsr+InvWMQ91nEHBVFFfmlNx4N2LQf80QryZFkJY+OY0LmknXxAh+
	 v8uQPBDc9X8NDyKh62OSxowQq6qNzAvR4b8FD+KOcyEiokfK3du2kOYBCDaHnM6hSh
	 VfFvbis1ht94SH4E/4GBih1AFIaGOWzfKTi20VuU+e7+rFW8T+gc6IxyfV0bzb8KZP
	 Tj3pGR2EcgqLgbLjAShjI0wETBgfddnguIN7STR1pVeZ5o2o4Erf51KGyuBc7Yj7u8
	 kZPOpYcuZOPPFoX9YBLYwq4lMJb/lC1mVCgMpcYH4gG9W4T4IFpmT8o4aYK+cWtWPM
	 elnS3/LMztNEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB206C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329951368.16981.16172236998560293281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a925e5fdb05d2bfaa1fd0e99867ca728a1d3c0bad632194978419edf1a11511f
Date: Mon, 06 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783299513
