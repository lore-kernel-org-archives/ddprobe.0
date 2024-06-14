Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4554E1822E3
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718330303; cv=none; b=TnQiiJITZD01T3I81K86HKett9XhRcqdbCbLkLGCh9b5klhzghJ8pBZ1gYzHfaKcwYXhh9c2Vm8anar8kkiLV0VrNrlEZINNGoOV6ev7e1UCaq2IuiqElOENQAYYTgCecF8/BdFA/e4UXqQlSzeJBQPziqha31x+8ofIYOgl9Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718330303; c=relaxed/simple;
	bh=P1yXVsfaQ4RBI77kJFjG85VVU3PmQF6hICVNyrQSxFo=;
	h=To:Subject:From:Message-Id:Date; b=GnmmW+4ZmuPHpIonCOEmFslDuByWWMquIqJy3sKr3HQvj+xcN+FfrKOYzkuZwA9LMS49oWE4BWPtBSB7N+gp0HZcCXbdcHqp2qncq94Tx8U2J7RdluU/ip4azd+OF3ydvXbzHWpVNU4xpRMxl2gwUBocuoZR56/H918KEt7/t40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cA6AvHrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cA6AvHrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA85C4AF1A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718330302;
	bh=P1yXVsfaQ4RBI77kJFjG85VVU3PmQF6hICVNyrQSxFo=;
	h=To:Subject:From:Date:From;
	b=cA6AvHrYXWmmefSCvlgBw4i/Va00W1uJIfbSp0Ual++uYYUUlSK8s683YmG6tgrhm
	 8B7FGfM+HZfL1g7UXKjW4shx3TL/GXQDLI6axQMVXccyX4lNi0cU8oaWOty2Ku40Sh
	 zdzQYRy43j8LlnU7MCqyO3cuvFwUWyhJJySEPbwq6SLX15lYDahlHwavkZmaEwmlEb
	 eZwuYbrMYz5bDAcaE7qOusG2EqBZ02kVhom/rLUaIC/28WTZkJgHvvl8XPLVTxPhB2
	 nseOIM6q/HEoXESqou4ZdKS14VoemFplPm3BodF0gWHJE9An0e0R5Al4KmAhJfN/Uj
	 u5NC4CmXZrNOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB083C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833030275.2833.12518802261189391883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c88788a79fec8027236b71c2591d7d080249989cb609de3595197aa6174ccef
Date: Fri, 14 Jun 2024 01:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718330302
