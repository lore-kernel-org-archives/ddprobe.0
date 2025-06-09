Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8023217723
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749490793; cv=none; b=szw4wTzGChxycUDBUbUAuiJDVTc8kCuw7/B81ZOERgGMp2SSGfnrwJxdkIQPZQfLdOqhehWQVSTaKWcwg/Ty7Eotd61jmYe50FUysRAcpdrt2yPAuyEjAzagOK1boM6hp64emBlcfRJefeoYSHyoxb+6d5HhUsLJM5sMoh9zhL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749490793; c=relaxed/simple;
	bh=7VCiuhGMy3i/h6d7SWHhCNPWEPkCo8Bz6x9GIQSUV4k=;
	h=To:Subject:From:Message-Id:Date; b=XfVrF5VL3AkX7EdhV06FSlZoONv8jTBmY2EjoeEpZ6HdNFwB60yDzyloqYDubAAKuv4hWetjqQVL6M2EApbVVtQTGXyh6d2WdTXAgpS4XEc3dGZjEpNdSnry9w1HFrXAf9PbIa0GBKvcWeqYi+0qCO3gFbGCtyy3/kSbVXZ4/KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTin7TVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTin7TVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABFBC4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749490793;
	bh=7VCiuhGMy3i/h6d7SWHhCNPWEPkCo8Bz6x9GIQSUV4k=;
	h=To:Subject:From:Date:From;
	b=iTin7TVYgTefXwnLIaeT9p0pzxs6v38Lv1YemaFGmElAVEs+moJtkbXzOO5E2j5DD
	 kJ+8+xZZRfd51+v1nHoueJIpBNO1tmL2ZuLssVGNyxNy4Nxfl5VevTQ5e0uFgpb7pU
	 Hcr97Q7gmXyUWw4Smylcrra3FU2FLNgK59FsEd70GYWxzQuBasAwBpheg7ufxlEMpn
	 3YBa4Zj+oKaxZ+7XnIAO/xYFLpPzOa65ulxw8AQovAcjBdiX37xUOW2mgTvcuHsv15
	 XfNDjm/9EOzaWb65tQGgPdiLYnJcYrHdfaf9leNMCnHotPZOZn5hTYRajNoEU9rUiT
	 M+AJToF7tbCCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997D4C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949079362.31591.15210099501852900452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd7d54c78f4df45b5f40961c94f3d35623b81261e6fb2174710d41f3f621239
Date: Mon, 09 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749490793
