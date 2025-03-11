Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2990A1CAA99
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741701534; cv=none; b=jXwEFKRYr7Hy/JwUn3iiDzmU0UbmwnxcgAk8/StbETluhjmoZ6CgHKt1NMQs5FTGb2pBP7zFdLFMn03gJmglFutJB7GbDPJ42f9gsA4umh+zJBCNAaJwjZX4m3kGlwTg2ghhVptIL9myFFHzIVvwtWa9zHJUObu5i9uRGznZIoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741701534; c=relaxed/simple;
	bh=0/3LdApJMXAMCrK/bGFceQ4h2CzF+mMUAJn0cT8wXs4=;
	h=To:Subject:From:Message-Id:Date; b=WK5uNY8ptPK/XwEydLbDGvPr1A+6Mv9R/Ov5/s+w/Ps/GFPhGFpbtcVn3Y7qqHPyXXvkaL0p+REcoMH3YV5Fb9DMwF3iXFuCsiwsxGHVFG2phDAZm/kWrCX4NvXo/rzZZWFGMSX81ybCnu8xrmtsH8aV8kJkGm5mXbnx16x4Km0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ormBKK9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ormBKK9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB017C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741701533;
	bh=0/3LdApJMXAMCrK/bGFceQ4h2CzF+mMUAJn0cT8wXs4=;
	h=To:Subject:From:Date:From;
	b=ormBKK9prdeqj9XxWVdPtU6Nh/KMA4P3iSQX9ba5+KwhhDPTY+GqDwjdGCZDO7Fhf
	 s2eVi2x3PhDtTw9L5rHldwFKXoeXIFSWT8iacTa9riz0h6IeTMDxtorbVyfDa9ohfQ
	 Z6JxOY6/IuELAHF9Z2cHLctLbGD92T90U12xjRXQdeSFryY7XdJK3kUr8soHqgGc9v
	 GnwlbhBrKCVhGbNK7VdwpjA7M+6MrObllDgd/Tbc95AiAY/uXeEAtfBb2eJniTLm0K
	 w9rz7FUOszngf9v3eyATAFOZ2321YOA5VpkdokkGdi8B8hzmxrE/P71mz7j207NK8O
	 q48GBThl+/eug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93124C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170153358.21516.8643481310961072564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c1592a042f57b8dd17ebefee3f40fc161e4bdcbdf8be71167bc233ba1c273e
Date: Tue, 11 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741701533
