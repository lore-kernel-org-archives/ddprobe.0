Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0216D19AD5C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775015094; cv=none; b=Cnfz6zuURzNdhiEOba/J128YSUMiu/B8QBZVTrkXupStmYuRWGfhbhdvzgRvLtrQTAP6cVXQNcvLim5eJpnR9faHhgYnSmkMLQaUgSP6shPGDDUkOSugWXY7ooe06c3oY5BlUxfHb2HPyPc/X6se2urL+s+xO8N8UIrNHcEEPrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775015094; c=relaxed/simple;
	bh=PRR7e1XQNTdDnKtuSj9e3eR/RlPSr1Xq0ul5+QJpIrM=;
	h=To:Subject:From:Message-Id:Date; b=YgapBX/n7brcezuTVQoCUnTYM/LcMYa4aNnUUekbmtIwnVoNA6PEC3JQgAYafN82ks7331S4ZigUfGm7hqhNCyBs00cA82Jd3mo1FgxAWWgxH9Jr1+7gL2uyPcYnx2yzBm2sGzpCWr5VmI/Vc1Jwwm2n+DjfCMUiy17AUrDz8vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jL7ubro3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jL7ubro3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4941C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775015093;
	bh=PRR7e1XQNTdDnKtuSj9e3eR/RlPSr1Xq0ul5+QJpIrM=;
	h=To:Subject:From:Date:From;
	b=jL7ubro3nbzI719uE5MhLYsH9l7Ujom3temLzNDI+gpYeqcW9Y7GXy9jRHml5mlf0
	 WZdowJhcYQcJX60gixD457E2HcpLHq7A3DN/uUA8tT2iyrCrniK+3DQ/HqvvOePDk5
	 zZqj0HTPxbPEVpTQ+9xKEMhoGvU8Nppe3dxibtPAMLOhh1QHzG4X6h7JPj85NcBtxd
	 zL9buswngGrIJpRun9A/wwxptL4p9KpxLrjvzmO8wLMcZRs2dPDX8z99BleL7xcA2w
	 YHZi/KCxTkPAsMpn2MUSrvydt5b49ZHSNXKsFkrs9JbiORDPXQwYo/X2Ft4FfuN6MS
	 Nk7pDj510q8Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D010F931D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501509358.24631.1726382682372951354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365e821b09009a899041febe54e8006036f217be26ed982d5895c7364f345641
Date: Wed, 01 Apr 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775015093
