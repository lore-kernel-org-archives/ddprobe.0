Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EAF13D242
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719768263; cv=none; b=T2q76KHUbNEMy6diVlhyFA1rfmUjzINrfe5PeYMxbHy+N+8KyGZLeuuctQ8LkqPWD50elGgEGP1V12Mvbtd/OvD12zfMMes5DuMLQ+PhR/zAq+RpF83XdEmvkGl6v7aqOBgPod7zAumbWn7IGYL/ayV0u9Qa148cOAxYoCJY8tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719768263; c=relaxed/simple;
	bh=8ESNISac/zInjXSSH4d+J6cieSgso/vQIjGNWy3bR30=;
	h=To:Subject:From:Message-Id:Date; b=P/6r1MByVe3Q6pSJ38hcgAq5cPOjzXeDyeuB5v3ps1h39PPntpktxXXKDiAtMJeBCOWtBGffXdt4gcx3fEm+gdkz4EYvgQIOj9Ft/1srolMUQJZ5jUZfO3p8Oo6tCbl5IZFcLXlUE+bZ30g11BuNfWZW21D9kw4t4QmCYjOfDb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9U1iXX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9U1iXX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D320FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719768262;
	bh=8ESNISac/zInjXSSH4d+J6cieSgso/vQIjGNWy3bR30=;
	h=To:Subject:From:Date:From;
	b=c9U1iXX8fBKGBgoQOdNkAr5JpM3ZH6Uj1x07eM5HpN4oEFgpX7tUbjsgV/NyFBiSH
	 aTUf9jRFrwvkZxxWUIo3G4PNj8tVSD6Dl6ZajC7netlOBzVZ22mNgVzCx0NAFRRd4x
	 auRnRFfrjhYptQFbdJXaQyAHpUvVas+kXU8j5ddI3JLnFXk2lr2mjlrRsPSLx593uk
	 93pxJ/zZ1VBvrolUGqIvM1kxwCRFN0TEyZcu5HGxS7aNJ8f9n3AvwJ2hroG+QXlR0A
	 ltjWU07SbeyNIj+H517THOS5rr5I4L/ZvrZYKE3PPl6xQsdBoXxvTtTf9OvZRP7KBb
	 w+X5ygTlDWFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF295C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976826276.13643.8193135221408956986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63174ab8ded8aea5e307cba8af7177a5f2587125424da5bfd767bb20300f7094
Date: Sun, 30 Jun 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719768262
