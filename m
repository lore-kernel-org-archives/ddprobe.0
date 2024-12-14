Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CC026296
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734143154; cv=none; b=hpZHMDq3sYrc/I/4kUINQ7TaibN6K5yztm0hMWS1WiHOI3MthcOf6L8M/jNi6UF1HYSasZvv7kywqiAJVjDnySS3tdvdJDDLi9N7OLO9E+R/LNaj+/hWpGd2HLCmKJlRNfN2IE9FzS8QWGZ7X+q2qc59VSc39RKHhRzItMri0v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734143154; c=relaxed/simple;
	bh=f9U4sPv5rYHR3h8WluTlsQyzbWQ3dqUh0/wY/uLOhDY=;
	h=To:Subject:From:Message-Id:Date; b=bV3wU1QI2bgMkETl1FpcVurEJXyW9vOicvULHD1CcNulkbqN2oqt0w/2S6nkJXWsQ2uJUu8dL2SXM6iJ4Du6ZwsE6I8bwI43+oOeD5MO2Uq5sDFFO51ghjbK7oXUg3WU+uFxb3bY6SLQYZHd2A//sNo4KyTVaXJkk6xCDmXT7qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH8dYyoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH8dYyoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF72CC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734143153;
	bh=f9U4sPv5rYHR3h8WluTlsQyzbWQ3dqUh0/wY/uLOhDY=;
	h=To:Subject:From:Date:From;
	b=AH8dYyoYtY8xBISJNSxdAjM/P0K7bw7fANs+Yo8X8AR6KxQiPu8EicIaVvJL79fc7
	 8+yWYA60fFyJxecDo03aKQaiRBPFURZb+cPnbhqlrxwFY+nvGbSnoa4PCdVOwLZ97p
	 BX8HXBM/YEV4tFclk6EKC89HeoEFl2pUa+DV69q0hofpOWVf+BFjekoYCMxJORQ+Ql
	 9Xs6V+rK6xpOn8rNblOXQ4zwK8Iq3W8TINDBH4NzwgQ0xSUDIzYk0ERMiIqz2xELPW
	 UweCracgVLdqic9dQQNpyneQvNlFUAfiaBwcrgXDO0oYSl/o6ODYnBLBvkh2ip3eHj
	 lKXeo7db9iEAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB88DE7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173414315368.10111.4379496194804367605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1974cd019be8a7ff04a8a6b979793c8c20d49919437204ebf53080c450cda5dd
Date: Sat, 14 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734143153
