Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EF22253E4
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764145974; cv=none; b=Xiw5U75eAWHJFPVnNwKk2K7HQ5bPpSNUCOJoFtUiOhJDKkNqmsdIMwWgu8jyjQvVs8HrxzWFVfv/p5BVuazWQAn7FEqMrGaJRVWK6baWkCjLaLZhwm6wyMTo5KCA47J0wpKBssHcB5HPVQQzIraT3B24w+6i9fsEkZBbOdKgQMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764145974; c=relaxed/simple;
	bh=xzgwdvn6HC27J3skiL6uqqxSqQWY2Udft8aZRxpOe0g=;
	h=To:Subject:From:Message-Id:Date; b=CPLT6rPijnb2UukX5+mgBra75zrvSPYyLpMoPnlQtJ4ZYOpzZTSSdp5aXJU79bfP7MWYYdsZzmUN46ITkPp19ShpB1WIWYQR+EVDGP7RNX49FJsQ/st5LU8mj6EoYpgppDLmwvFOY++q38xJNlidKizmcgcKWHY2KZUCsbKfjDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrVPRocm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrVPRocm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764145973;
	bh=xzgwdvn6HC27J3skiL6uqqxSqQWY2Udft8aZRxpOe0g=;
	h=To:Subject:From:Date:From;
	b=XrVPRocm7JIQ2PNsxHZ1xgDT6bk+SeuFkSZq/jXJjrsELBPgRurVqZKZ/UDwUNWZz
	 uvf1hapwCovhF0cS2czOjdAkc+aKdtTxwjFY9jo6JhT6nJoc7uHVOlwjIjD+oLBQoX
	 PipdqMprvYqE1gsjnNJk+WDfFvYtPiY+r64xEChm7bdcoJcImzfX72fCmrD24/K29j
	 zR5p0HdXAh/9AhE8OuHFvlpURDIf31mwiC13lQBjZaMVeUfw0rs+32QSoGRyeP2AHF
	 hrspv/ouB/4KQtG5RNVj4LQn+qCP+GoJ/XfcWZ+5cLuhSbgfjax7VbTXxUQTxTjoYS
	 /TZoQMGLY/7yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924AED10390
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414597358.6186.7038922576492611806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a7d1de97dcd794bbe7a2eca5763eacfaeab561862af63000960538c7a4736f
Date: Wed, 26 Nov 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764145973
