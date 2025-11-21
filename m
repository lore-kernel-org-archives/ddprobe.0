Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9461414A8E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763704314; cv=none; b=MhJGzm8PI6UZQTKU9OfE2ktgWFqpNrZpiDSSM6LJOybmxRKQB4RWwqnCdX2To2hdvG3y4wsV1P9QN66j828v13y+hnVObDW6WjZTQrD8kWebTYLkCBYNGdGii/t6+gt0C37GTCYEnVerT3gFmPaPfFioDNlDeKVi0FevwBW1zHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763704314; c=relaxed/simple;
	bh=KDz1GUtXu/WkSslvykvtvgkd+2pTJ9HT/We1VjOYB1k=;
	h=To:Subject:From:Message-Id:Date; b=R6QUF2qlGEjdXqVySnZMJ0md4Wx9Xfk4iiU59iwc6jExR26aA3sAHrsiJ56rspQfWDtlykTqb0//dDunCAa1RPIdeBRdni6EWYNg067R9tqwlc+5qWAEellIUtz7r5VwBiA6ami2Pmn4/OhMPqGI/xbRKTyoPzOhgUzzkQkn4s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWpKIITb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWpKIITb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA93C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763704313;
	bh=KDz1GUtXu/WkSslvykvtvgkd+2pTJ9HT/We1VjOYB1k=;
	h=To:Subject:From:Date:From;
	b=SWpKIITbo2wdIBnmqFfCeRYT1OzjAS1zb0LlDf0ZsEK3Pg3ZB7LaXjVal/IoUw7VT
	 emPw9VeEfei/EeAfg14t9nqWl4rZGEGdJ5bXTTLCg+vGQ5PICKv4lICn7y+1I6+4q5
	 vlx6gDTGejw/pxEY6y0g67qsF8bIa7jM+UW21CtPBKS/5rG1gUHcbYaE0BQWC7/RKV
	 n8A47kzgydHfc+N5xj0daE1JF0zEF/ghzywdZqPlO5L+UJPV6nUeoaguiivEt/p3il
	 7SCbE0WxB4s47h3TTRwxPLNUvW4jCfvhSygVDVLiVCodmkIejYNhSiEMnnH2rFBBVb
	 S/1uOrlNpx0Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DFECFA477
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370431358.28044.14527088017579682418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b427313488095a3992a93f7335549a5e97c5e31c3ea8eb0747fc4b3693c1fac4
Date: Fri, 21 Nov 2025 05:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763704313
