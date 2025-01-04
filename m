Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE27161302
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735982154; cv=none; b=PRKmLHO139am8yWtc03tXSg9agdrfNyuk340XxVWhUNbYM4cEuwA1Tepm8jH1QJayUB1XwocuXmOsJzzqcsWpC3Rpsm7mqvZfhThLuMYsvMfwHMBYL9hT18Mbbq5T1LVAcIcvCkSrUMJN6g/7/uJ1W9l2d0ZIKQHHTfH4adpxd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735982154; c=relaxed/simple;
	bh=gDa5MlWyVK9hqyn9cspau3zYjB/gKrKOza2ToHBlBkY=;
	h=To:Subject:From:Message-Id:Date; b=fzkoia40a5O8LCzBOwbk3t4kAonAnIFj7LySi4YrK3f7uRnMERtAZUCV3AkvmpQMpeXrUKlBKXHBHEB/dC4onah3GD0aqBQkLCFULy66zaE5ZiRpEDir95XH0eE4pC79DQKtg+bQHgYX8kofOrWWr9XkDxXkpi04qN2+Lvue21g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKRFpWND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKRFpWND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9F6C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735982153;
	bh=gDa5MlWyVK9hqyn9cspau3zYjB/gKrKOza2ToHBlBkY=;
	h=To:Subject:From:Date:From;
	b=bKRFpWND4Ylv9nZki98CZ3pv2A+wmoC8P7OYyPrW5rsQlCeeutdc0AItGXckcdRga
	 sP+YVnyCf4Sny3k0prlVn0bs5CaESqTR6mFDfEL+Fk3D/YLLL7IcbhzXF46I7k2lM0
	 ITezmajV9PmfZzmODvZTcc3/pBtRX7fNIyL3Pqpr5SrkacTXdIsv29CLwGcEA/7PXQ
	 NGE7op6btKJyKooCbObNMype7xPZUtJRbLOz7gx5WkIUFaCYTrkS7jg+LAo01J45LC
	 W8LXr2U6UkI8xehkXNH13HI42Wy0uYNeV+Hsg5EK1GintNWd6FNc3l0NKyjqBMd6Sz
	 TdlyIqnabYDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AF9E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598215367.24715.17441799324869462473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1fae3b48a43de58fc37ffdb8f6b9356fe8714f3f515427ae9da19ac62f92fd
Date: Sat, 04 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735982153
