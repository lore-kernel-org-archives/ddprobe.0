Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C3F12B95
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722714354; cv=none; b=PBsAUt1YPhQeQkJ4+oFcNSrJ9JYBQtUkbIUvpsNezNspOMNgpJQSPw7T4T/1AmAqa03RNCn3DWbR5xzs/ZM+Cskxx/xEBHLEi3ZnO80UJVBRQ9jnpRSwO/BzZFAfOn7zSu1TCnsHfEo0J82/JPhK4B/Ij8CgjNXmnw2q3nf1vR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722714354; c=relaxed/simple;
	bh=Ymq808lrxrL3vwZUiiofaXHdlAKVO/JvqJBsdtIU7h4=;
	h=To:Subject:From:Message-Id:Date; b=gjrk8aqaY9ZBpEvUvpL6oqxs3RezDZLCFO3PWR+Y1aG/8kSsp3LXD5hIoPMaDvOIN1XRYKJ7G80InLvKp+hxcPMpbqWCqZJ8k8xqOlIqCOLi3YvmTHFbyrlXzno/ckpr1YxD59OZ8p3dDXaEuR23+puQHL+0TjduduGNhjIiCjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBbBbdDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBbBbdDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA7BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722714353;
	bh=Ymq808lrxrL3vwZUiiofaXHdlAKVO/JvqJBsdtIU7h4=;
	h=To:Subject:From:Date:From;
	b=PBbBbdDvj0x36SHT+yAuCIOl99lP134CecNe2Mlh+uLdpiIiZThiged5/tUSsbrkr
	 Dz7P73kxOpqtWFnGrtb3fOZKEWz8VJG/Sk/rMa1sJ5unXcfF5Fto7LTMy8/w8HPq/c
	 4RT0arg3GlDw06wRyUp+7KGraiMfPkyAHv/ma3cYLBP9cHS/jUcW4lAM+F45OmLb14
	 oFIoSJUrBebcciFGwHGCz2h101B9dTiQNXLcH/B9IsA6Ou+Hvn5+jGG1JEcCLB8g9p
	 o/BlnnNo1ZWu32ulAw3tmXN5MDcYHju0L/4EMM1W6Axt3VyeYgPs1TnYz1A4RQ3f4U
	 BUmrnfO2Hf6WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A2DC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172271435365.16557.15594034289938804255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abafff3f3a2cac10a1daed00870ecccb4393bddee232f789ce095d41d66a5f3a
Date: Sat, 03 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722714353
