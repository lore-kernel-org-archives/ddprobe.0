Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3142AF10
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748323194; cv=none; b=QKwUVHXuHYT0F3vi6CMLGAiavhawe94Csdq/js68jPtzXhcj4+gNAEtsbbM5wfc1jpRvSKcUC+tMcAQX90sgOdySWKXdRcm/PQHEvFvwSWgia8kzIsx1mM+lhvctUJ2B/8nBypPEl7ikzsF4jBKmKnSlYBXWU2ZBgmgUGvdJGEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748323194; c=relaxed/simple;
	bh=e2VfDO9ED55iMEq5LsTn6ng2LttT1dyiODbuzh0ipT4=;
	h=To:Subject:From:Message-Id:Date; b=HUVvb7k+cjCcJDOCrBeBeFyyaIWZREgJ8j5Zm8U7k0EyCzksdrioGtyCm2EeAFktIIrwxJ/RvNX1fy933ScPJ4vhV6Jzu6e8q73d4EAomHlawB6Ko8qH/gt/mk2YsKG0w44Phg4pP5AFk2dIsC0oH9JB56tiSbtZ/Hs5O8qqjQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2k2LvZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2k2LvZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCD5C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748323193;
	bh=e2VfDO9ED55iMEq5LsTn6ng2LttT1dyiODbuzh0ipT4=;
	h=To:Subject:From:Date:From;
	b=K2k2LvZcdaprU8JdZaiRB//4NJ+wEvj3nUYM55ELMgKXsBqGFuaGtOypQOkdhlVFK
	 afVSwwxd98l+HYBrWVqWCJWAark77iUC3nH6w1VyK21eElaqwhglAWjP+ZhZjwdexw
	 tvHKjqytUWHzvm4sl8YiwGQW1TO6a7pH6BU4wqBzWf4ydPx/LiQ+u6NvnIbPWudhxH
	 +axymeZ0ZfSde11TqNJddpeT1Ruf65CS+e1VvHKRp6nXEXGbJAapjvXU2ED74s+A8W
	 qTmKKT/nTlrR4PqlXyYb8FxosRp/s67FVWVrTi67g4mRjvRKBs7zP4mZZtQPFLNw22
	 xvsG88WyALeFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92902C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832319357.17408.12735142571927890438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414f1cc4047477ae09beb8d104fbfc589c315f83778217bbfbf11c7f5fcd20b0
Date: Tue, 27 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748323193
