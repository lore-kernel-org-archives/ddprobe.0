Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1999237418B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769685234; cv=none; b=crgpKrDljYHNYnMyt0lvWhnqNehA71xcbeG4JoXf3KXLR2l2s+JI3Ao6NEK7EwZDRMRPZox/iM4QMYcN/A5eKuApWlY5q6avwAieERDcWcyhRQLoDrMEelz9SoQonZsgIVUUiEDmt4dwKhxFETBIoVeIbGuiPV/wVD6x4Ao3O0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769685234; c=relaxed/simple;
	bh=9jE1fpwwTEw9336Z07ERu4xoC64fOUoeyCPebGANXO0=;
	h=To:Subject:From:Message-Id:Date; b=FiRoJRUQbF4xBKDz3M5EvAOngZD463/wxT19saqIK0SGY4koguz6QLe6PIao4cu9a5aYJ9Yh024zP87B3TmNwWAtVhPwZOto8HFcoIlPNY30B9XPXM0yKziLle3OG5PLq4VU4clctOKtZbEjpUb6FxRrRVT5O1Je0gHwSX2hAYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pvf1MTDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pvf1MTDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9564C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769685233;
	bh=9jE1fpwwTEw9336Z07ERu4xoC64fOUoeyCPebGANXO0=;
	h=To:Subject:From:Date:From;
	b=Pvf1MTDJQsbaMb4kds2nrkFmIdVwLiFJdTPtNbMbJtIFRnlDYvXXpLVuD8xF9tOE2
	 WvD6TYbiUQNfBDIQ6AZYwnB/bZxEwYjITBBuOTlMc40aWOLt475nnIMe6V+5NnINaA
	 OtZtXiRB8lKTPNAV+uUWO0jsI1gUoun4bRg6AfS79Bdk5Lo/h31IddVjVyZbpiLogl
	 pYExQ5vUIZQaq5aH/a8d8EdTzqZ16Oq3MoMBlviD6WFXVvB0kb1qn3/QZVnK6KM3+F
	 elFuq5ARzfdo1ePotQLDkOHEk+KaOTpyTJ3uM+jv9XKik7egjqX0BOTUeOhpj7quTd
	 pY4hsdJ4tsIvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9606FD358FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968523359.19202.13363745460441493799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39f249b93a943e7223d8957df52ec76942b1fbeb60937200620865ef7ab259e
Date: Thu, 29 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769685233
