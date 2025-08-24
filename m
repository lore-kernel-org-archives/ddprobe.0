Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422D21DE4E0
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756021794; cv=none; b=bHuU9MZn4DB6XXxi3hTAvPC5ERQSCAA+fQSqBzk0FOl3lT9cQC/hUbTby6hb0kE3hqxQmvTFbfSC6IUL7PHRiMCM63QlaqY46EMyWagjYgaGvABmRfpu/oUh10hZ18Wq1TVq6j1FwciOKEZsclFgDh7sEzd9kvM7FajhTI3HmlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756021794; c=relaxed/simple;
	bh=9toTB7NKjLUKXtEly1C1AyZgWg9CbpzUYs+NreSDPXk=;
	h=To:Subject:From:Message-Id:Date; b=jTuMwxHrpYHjiqpYbSS5VXOljRmeo6n1xHhmCb13p7qAUe5mw5Uiqy2swWCSe2tU0IVdn4XgOAqIymQCIZMqljc5BhAQTv7mcG0RDLwYjsdGN2zU4ripZpGH5573wPYV45MTOqubXYysiUPUB0YC7Dd5aiLX4SDTf43ZkMtsXHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiULaFyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiULaFyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756021793;
	bh=9toTB7NKjLUKXtEly1C1AyZgWg9CbpzUYs+NreSDPXk=;
	h=To:Subject:From:Date:From;
	b=TiULaFyP0YcqVO0MBiFwekKIlbfzase5k7VoV6HqUKR9nJqTLUxlXw14Aj4uzmBmR
	 Hmw4Qpm3vtg/k5mgHTVdogm0TPCDjqJZm3iqbR42YpesoxgBjtVKBE8ZbJsv7b1AjF
	 S9mSYYAYzfWMcPGrmjn4lnh4NEirA1g6kfbmCOFtDU75OmMjRNa3YD1lu9w7tMiBYv
	 oCGmjfKGa487ALPM8jxqhim//WPj9hwI71LAhkr2zDQ9NUHyFcFhwMjmduu8fLiBj5
	 YhU8UFj4oDfFkqp0huYgzZgOMTlr9rD9ATglIhWN22/TZK4thEZ1AU2tY2IUp0d1qf
	 gkK5iIBFQAfNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB7CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602179357.1981.14315675945336717110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13fc1464b1e248e709e9b2ccb55123de4090c2078b10f534b0276cd6d488d6a
Date: Sun, 24 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756021793
