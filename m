Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD5323BCF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783768114; cv=none; b=CXCzVf/jI0pu0XzgV1XX/fjk6qXEenR1Gb6GgNfgVilLw6Aeoqm6lOQXM0rb7ZkvqvzL/4Y7ZoXNgsykB23pQWgI9f5lS76VWNn3ACIssrx3/he9joYB28bW4HWd+kkdMqo3lmprTMxcDNKZpI+E74BM/Y92UjFAQP/s5s8PYTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783768114; c=relaxed/simple;
	bh=ptAx5Xlf+OuD6/3ASUBbkmxLA6r/DNIdx7NtYmncmac=;
	h=To:Subject:From:Message-Id:Date; b=Den5Wfke4S6K9vIueHKlfA4sXvnGP5+TEIXTDmd+v2fT/HZEoKHp16IYF6kvQBb67PULBUa+Hulmb1rXJTbe7LOJUY87T+AkQNODZF0wvctT4hbgK/ZtQNxVz3I0g3m14XTCc5kp7u65un4wAtNhAmbpYbNfEJzJdQglf/IVnDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIGvvANm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIGvvANm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E8AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783768113;
	bh=ptAx5Xlf+OuD6/3ASUBbkmxLA6r/DNIdx7NtYmncmac=;
	h=To:Subject:From:Date:From;
	b=GIGvvANmKQ9itxZYogzCZ5qhQzM4HZrJ8V1jx8sNcP6SJwNSJC7tQMEkc/dnkro65
	 pifIDOgVaYR1t0Ib0o+W6ICCJVWsyvB3YGQFpK02LVW4IzzRY2ssfsGxsY5k+Cmao2
	 N0A0mB9UwHyvJQs8Ar6GZ3Sh5YdlSwC8heVTtvKJkGL6YAtyzvxulKctbMzdlA5ca3
	 IMlRgB31SMB5NaVFnXdvT8IWqkCx2VkFPNKeI37d8NddEOIXfEO3nC4nPCpH8B1RIx
	 JuuyMM3MlE/Xbdl+DZ9/60TkU2thRJt/8pik+e8NvJ0T1Qdc3i52SnCOe/S7zqgHsl
	 T2GQEi/U2uceQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EE2C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376811367.18757.289813258418940560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551418756d49b5f1f373f2d85af8aa6474ef86c3bad9aa35200353d576c49594
Date: Sat, 11 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783768113
