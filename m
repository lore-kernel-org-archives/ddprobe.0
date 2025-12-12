Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC4C2D593D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765560174; cv=none; b=n0RCoW288v8XzAdV7WxuYCSfNEF7YMcpbKTetWsQxQpph8ZCI/qUo1t3Heo5duHezgjhxbKdWKwwNbwZPWVhnZ0dccrEcTbcZuBQfn3TDBQtW1VHG9iaKEM9zND/i/NK/ZoJyTlegWGnzkX5EcQYcYhsm/K9b7FSumTyaWwOyMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765560174; c=relaxed/simple;
	bh=BifSMK9BwS5ZIUnX+mIxoD6T6V1O4biApd1nLnx6B/g=;
	h=To:Subject:From:Message-Id:Date; b=btCZpH3cTsi/GYnzOIlpHJPgVkSLjPzCLIi5ixlt4b+Hs4Ttd9x9psmV3RrK722dyrNUbuSxkFW6ocXWBtcwk3p82OAONYn793KSRAgURudXB01BlSY1GqzzsUBLw8FwA78x/taBnM75jNGdFvuXGUO5Opk+vuKCYEf554baITE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkoCzJlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkoCzJlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8405C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765560173;
	bh=BifSMK9BwS5ZIUnX+mIxoD6T6V1O4biApd1nLnx6B/g=;
	h=To:Subject:From:Date:From;
	b=YkoCzJlqXr6WbURtQebCKLINQJJUbQJw34Vx6pT5FX4jyPGWIrpy2uSvD4Aqz5Wwg
	 LFkXKh6dUcGdgSgZLp3TK+26gSIWYuVmn/AEo5lEjjr9aZpiS5y4Iibjf88Rfn8GTk
	 D5EDEGmI5WnVvxIFMUhFSrBYUCIcK4Z4mob9kDlGq9VX7BZN4JtyI2f023teEzAshQ
	 aY+upKwwrrEfdm+lStDxXgGbt5FVeVbv1gcrICUnFEoETE/p3Xkesf//EZ5Lz9GDvB
	 kXRzQUghdvzDsOeqHIBpo0fhGZLaHHF/gQphPfiTVqs8eKpH/7xqQEYIZzmJUiea4I
	 ADXa6fXblyNXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BFDD59D79
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556017358.5920.12904413964537340871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c708509809768a9b6c58529326fa724ad5b928d496c04103c2c221a6ab217a9f
Date: Fri, 12 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765560173
