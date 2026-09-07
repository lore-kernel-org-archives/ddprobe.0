Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47587325701
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788763834; cv=none; b=NVYOKHDi0daTBrCnRzHtqDK4ol/KAme+9Gt0UoTzmFkW9E14wbmEF9nr2J+jnVBl+LhMmTpqJXILT0yfn0JTJjBsDDtQFNemAXMC26Xf+zWvwQHwXS2Cariy/stT0pQsrfKwE3UTuzUuxHWPJgfpH89wGPLpSi5oM3YsZRM737o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788763834; c=relaxed/simple;
	bh=yK2RwuJ+zYbsAZ80x21qQst8Avy/nwgEk4H0eo6fO6o=;
	h=To:Subject:From:Message-Id:Date; b=hQoQVOv0Ri7l1kOBnqrsli2eO238NUS9M2ZDC2dZnaSiJyAqmDWbvyrOoowQzcV7ZwYcZtvdrw4fBDerIuH4m+eZpbC+ObHU9+DRX+pLq9OjYZOby2Z1P4b0937OC0Gf+VSiBQyQA3yApHOQYNGlUjMjj2D4KCvZFY5N4VTDQz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI2YwjoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI2YwjoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4666C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788763833;
	bh=yK2RwuJ+zYbsAZ80x21qQst8Avy/nwgEk4H0eo6fO6o=;
	h=To:Subject:From:Date:From;
	b=VI2YwjoCa3uWaw25B9qXogTzkjxyezPSZX52mOoxn4DyOgV2q0EFMglo1EXbr8wzZ
	 GTfW5b4ixwMUWBX3f3SVm8JG0d4Wq0+vx+PMdoKrd03zxBNm5LF6PoqdX0kmA+JFMe
	 d6d+72IuiHCX0wqsbPfQD462hcRjHujLduSlUZXELtGDrKjL5jaFjigntWbe592kDN
	 bjDwC5tQt9lMC1Us0dHEHfb3pBk/2LvMqC+eNJ/MR4yHmmC/rPYGNKGwsZBfudy0Il
	 Z+alWF04VqCgt85plfvf2iVLDjRyKB4OSwftJjNDV7kEZCSO3LgtTLl50/FlIsbEb7
	 B0VthJ4crJO+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2391C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876383371.22251.17295635686089052853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504e090688cdcf1604330394d53147e4a0fb57cfaa828aab5252cafb3464a748
Date: Mon, 07 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788763833
