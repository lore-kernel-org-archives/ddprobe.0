Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4623AEEB3
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787635234; cv=none; b=DMRAJk7+tmefhtBaQnMiZEoTJHTJwQMwC02ulWeWk/AOoUVBMAI1oa0qQXN4Wq0OerM0KYHMXEYIRxATZ1BIo2p/KL6AHi+8zNLpD9iBdebO25sSeQ0+JeSOXz78N0vKkqpimrRKSHsxWwC0sLAFF27G8UtKkogZpr7ugSGZnqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787635234; c=relaxed/simple;
	bh=AkOXGJ4mptDEO29/HIygtfmN6jBWUCl5KIZ5NAkx0Ps=;
	h=To:Subject:From:Message-Id:Date; b=CUqLDu2b1RQm/YeTo7jXVqJBdZtVo40Rr3hAarorU8g2Gbw77TESW/fVyxRZSsJremdnp4daubj8LmUQ3sNB3/1lcaa8pZkx/mWAhDd9k6jM8d03OeYVOeLuFjxF0dfX+qf2Q2vpIfNHB351MJgWtL7P37IfxZV+3qZIBDN08MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub1pkn80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub1pkn80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1356C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787635233;
	bh=AkOXGJ4mptDEO29/HIygtfmN6jBWUCl5KIZ5NAkx0Ps=;
	h=To:Subject:From:Date:From;
	b=Ub1pkn80sQ1zkpbqtfRd7GB7ePzNaFMLeIF/qzgaOcd39ro0okH/rEdM2ima5FV2f
	 x4/EtcRi8AufCz8MNP2TaOUtb83jvHRT11VrU4FoEEzIGPramqlqi6T7T0tvQsb23a
	 s/eTrSHky3J6ctzhcE5GDx3H6tlnmi8pLSjcJGRwg6WYfpwaQsoBPtNH57lEkriQ7i
	 NpfUGCYRdQ5oidSF0k1DkOSLaBZJTpu3cx8ueLIcjj/XFQVsjC2mhNEUl7t6UN3lIr
	 ongUNNITMduOKIqOfzSMSSDF6JDEBxgQAkyKHlfZWnSiez6KpoHyjcLvL4KIbhMU8v
	 v5dH4maOa8J5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBDCC5B572
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763523369.30198.8990576350278398948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035c818bb5e95b2f26112ad31beee2fa94b40ad2730974cbd4b309e4c3607f61
Date: Tue, 25 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787635233
