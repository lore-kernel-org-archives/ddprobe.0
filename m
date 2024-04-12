Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9EEDDA5
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 02:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712888963; cv=none; b=X7wAz43AvFplvfskMnko1n97DghXy9E81OLAc/VpEOX7CXWla/8XxYid4HU4CCVynl2jNXOH/rusB+yqVJnVx64xMeABWPGVySTz/iNch/0+2HyQKae74/cXSAYZKb7BxlGsUvkr0U3BHu2fs/SDvN2mTF/GPqB8U4yUhIQGg/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712888963; c=relaxed/simple;
	bh=MBsqHroCA5U9jpL0bK+qenetNptvzahQFxIQd3o/HS4=;
	h=To:Subject:From:Message-Id:Date; b=khtOfu7oTLK3UfXKVsWMiCvmk5LfCwQSlx+g1UecNUnVdzoyhyFQKTm2IvB1U/QdN5SYjDRDZeIvU7KFHhNL1QMDUTLMwBDioYsMAiimNsolk9YKD91TYT4eCSNDCGYasIQVvL29XbRjWdqQqMoLkj4w89085wLh++Gk8/lwGeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDCUJkMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDCUJkMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F1CC072AA
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 02:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712888962;
	bh=MBsqHroCA5U9jpL0bK+qenetNptvzahQFxIQd3o/HS4=;
	h=To:Subject:From:Date:From;
	b=kDCUJkMYFYdLuxD5ScXtwaVH128D6cOKEXsbOjRBIIqFASflIPHpe8j5mM7ANwozL
	 0UTGDKksnSOis08ETArP7Ne2oHlWnvmIBNN6C2yLsxnsNbVpKymWh1orvr52VxkXgl
	 i2MCbpu2NLbDt4dsnIgvTLFgImet8CMZaSCf//IkG2SCtfn3OZK2SKtXUDbeBECXqJ
	 tAxTL7QWu3+Cs3dQEzQLyLMH98NGq/f4N2yqBC+6kgkHHpAhz7xp6nHxF4Jl0MiSzi
	 L04c3a+dWN8LV/YGrMQN0o4W9jW+zATCcJZxk8CKLsp/bWRz6vytV2Z9ah2xTy7CmG
	 UKaxcfyNDmalQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC26FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 02:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171288896281.19209.17110888542743525488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0db140e81702f65388652b8432b96032d90fd33debb0cd35d6825552d71c4ac
Date: Fri, 12 Apr 2024 02:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712888962
