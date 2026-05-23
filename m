Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4604018BBAE
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779561154; cv=none; b=mXh2DL6sjty8nARR59N8j/Q62QEmVAQfaiovVAxEwe/r50049aAhJOJw7q4Fp1FyN34FWoYdo0d8AobNUK10PCPxHnpwxocs/LIYKl3OkXGUqfHmCeaRl+TpSWCam0LHIcknyZAB0x3qklGMULwYyJ7uaEK+vd6Lstgm3ccFgTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779561154; c=relaxed/simple;
	bh=Rj3zATkyVo2VIeqgXVSE9jXCejCd4CHi+/8IoPQ2G+k=;
	h=To:Subject:From:Message-Id:Date; b=TBupy1GD0I82rrvcq3fzL4g2pybxb+UJKkIkuQWCGriqJcbPXDxrey+2mQCg/Wv05RGC9WYNXevgWq9BIuc3Iw7j1pZ+64xl8map+73U2BfpWXyyOEE6BHfnT3l9+mGIVzqageybn9ygTeCH7hR8S+XMYYwz8UTx2pvp86Ouzyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4p/4opr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4p/4opr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7486C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779561153;
	bh=Rj3zATkyVo2VIeqgXVSE9jXCejCd4CHi+/8IoPQ2G+k=;
	h=To:Subject:From:Date:From;
	b=D4p/4oprQShp8smkIYLlGDg4XDRnQaywlqFvGWUyuulLb5RmlXjXe6Agfns90gk11
	 JRPpVnilEaT5idwK6doSuLma1xFM6duyKILbo1N5u56jkDMUMvuGEApLVmX/f4lEnP
	 QyVx2avHO0MnLibMCbAeElLnQmfO+lstRu0ZYXLrpymp6pSFCt2IdtaRhtlbiFx2DA
	 dhKlKF8fvualFpMWgOLzGZnZHCwQBQVHnQ8gfjCSzokkiV4UBLN7h4RyvGwNVSndQ4
	 aShljWoIkl5fkUz/TaVC+c+a3LbPKsUMQThFRnMNQJEHyS5jCjrYJENm/Cppl40zjY
	 qDGFwrl/Jjxzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE656CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956115368.26725.11032208585088430728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c072cc636f2e105f97cfb5388c33b33becb5614ea75025d852848853dc9713ac
Date: Sat, 23 May 2026 18:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779561153
