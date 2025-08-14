Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B4E27D780
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755209994; cv=none; b=BFuNjQE4OZyq4UM1UlH49Gt9q/n4W+lwNYkxHNSkQcOd8Hv6ptAiHwskKwNTuoDcN+lds7i/qDpNVPs2sMibqJ8PEp2y8A8Jn+k4jCf+zDuOOvD8Rb+SshsReEq0qWImFDBU2gkLYOBDO3ynWv/yflR777uKTkr7bVacTSGw31E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755209994; c=relaxed/simple;
	bh=0v4oB45W6s4fNf9OnX5FmWKXKo/XDIXCkWhAlPL0e+I=;
	h=To:Subject:From:Message-Id:Date; b=C7/fP1mjGOGDK5GROoPBKLEcb4TvRedOEmmVvRajN0dHpJfqCdnAeQ6hQjiBGQ3vQqSGUzjYXrOLd8KYsXIlY/JAf05UjxkTB+x1mBpTxry9mooILtQDW0aM3woqs9BszOPFbH87nDbO6jCSAvh3pXPs2200futsLtOVJGLqD4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyHqoBf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyHqoBf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59FDC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755209993;
	bh=0v4oB45W6s4fNf9OnX5FmWKXKo/XDIXCkWhAlPL0e+I=;
	h=To:Subject:From:Date:From;
	b=dyHqoBf8lyb+dLgL/BqnoqA5jNudRaXZihgs0gW01y3zwn6d0+3eCE9BWEpokb59V
	 AxPAtmpI7AgZVRqsymsDrJNjKQgAczEZ2dejFruXrWlCB13ML5t5EzjBLr2W7Ik+5g
	 v/UMd4LvIEPr9k21y9vcvfNpzps41I6CdAJqoBk5C5+6YdwuQ9OYeVhIa+2YaKyR42
	 UyAtLGyY8ay5aoIIYMtZlu/tp1fH3M/voT6/M0xWZqpbjk5RfI7Nq5KSh18s6j//r9
	 VaY5QqehZHJI9cr0hOPCvJ/DhGQEK2RZRihJtsocVtA83U5zrnRaaQC59sQf51QK2d
	 ED9UvggpfEOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94284CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520999358.25846.11038826846327844826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075639471b623513c3edcb73fb4f381013f7c79b3882aa93f0ee1a8d1868a138
Date: Thu, 14 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755209993
