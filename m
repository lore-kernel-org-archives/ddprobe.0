Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E25F4776E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724576154; cv=none; b=KlZXsOTH/CkXmZwrSK3fUiH7Z+llL5ikS2neNul+K/gH79bt5GFkysnoxpcHfI30skx/JlEmYvbMqaRGhem2Lq+pBhu3VHVORvz5yn9Z+sIcZP5yNRPVA0RR54uWKofPJhL031Ln2qabpGaFIoE8HR7tWGcsfmYnMLzsjCbBs20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724576154; c=relaxed/simple;
	bh=6voiNjcPvX6wskdo+XYPt+4nP7gHdVbOcQ7BzF6dGls=;
	h=To:Subject:From:Message-Id:Date; b=Vwzgm1o7bu+JokV0UOnFF+EZA75wIzTWFhFwmnytOwy3zG+obFKsbQ8WpIgP43WvNtvG31V6gp4yoaDyAEhTqyFJzPVJZnkN6iJiYsBzny3YWbfYIlr+cpd1mkHY5PaWY9gSJgrJZ9scyXfky1GbaRF4ugoSnUA5OO7I9vxMnpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc38JK1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc38JK1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCDDC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724576153;
	bh=6voiNjcPvX6wskdo+XYPt+4nP7gHdVbOcQ7BzF6dGls=;
	h=To:Subject:From:Date:From;
	b=Jc38JK1e3ytiLeJewqcLUCYUkUk8uQ+eTTJSSPo+25+ciyZFgum/yfDuIHA6ey0pR
	 miI6/yLO8AmIHDJh/fWluOXXzxuenyGv8mTD7sEaWYWL6mmQE4cCXAM77+ku8l/r1K
	 r76LABd64UY8MQgMlO65nZnugYn7wq6HDLS9s7Z5ECAYNtIr8baLgDJ47VurJnHO3f
	 t9CVoGMJUdG3hJru1U9fzTgy3+A+uGkU31lGr1DKPXcxVY2i5OxfurlToCWapPUFcp
	 RSoA0geE/QsGSfzE0kKFOEnH+NGvClScbbdLmiNBVlobXkrYErWiskKZA6K5QWgP+r
	 jm6rl/T3nSNzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F1AC5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172457615360.11026.10220372371088644345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f08a4ffd62e48d204fc020319a75a9afb286f15e5227693788915479c15c7f6
Date: Sun, 25 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724576153
