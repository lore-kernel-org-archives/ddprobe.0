Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CFC36DA00
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791393034; cv=none; b=vFQR1DxvuQ6jeCSXUvne+RGN3hCguhHyNcWRd2QIX7dviSNnRW4Zo1Rmy1tsnJwjOwzA9bjYkq0EFteAEDbrmjwXUNvesO7Gk0gnEOdh5GK+/qAd3cssOS7NEaI8BTs9RzufWndq+pFwOO3OzkVGlPcY4M+lNj8vJrhwSFuxD7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791393034; c=relaxed/simple;
	bh=meIp50ui03x/5keemviGJS8Z9WzcLCzanbL1zcBsDXM=;
	h=To:Subject:From:Message-Id:Date; b=hEICf+RSd6vTyaXMEByGn7nyDiH1TZpkUrKd+SxvXVRQemYz9yYQ4F3xPjCd2XqbKHFLZ/AHs3i1e6+0Kg+6/3LkhJy6pjC8HcU759bisf2Aj+p1SQNfd0QSaPFsDg+PnQNaRXCSwfj29GfFMYCV4kVtNxs/4KNCnYKvCWQsxgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMFcvfjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMFcvfjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC94CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791393033;
	bh=meIp50ui03x/5keemviGJS8Z9WzcLCzanbL1zcBsDXM=;
	h=To:Subject:From:Date:From;
	b=OMFcvfjzq4ty8FIBB9fL0CEe5L/mzUXw/HZT+slnfqHpaMMOxL4yvr9N7m2wJv5IH
	 aPl6YneinRhHwfbqQGmXMJBhbisQaNP0WnqQxZSEX4TjMj5nz7DYSX9Cz0U2H9JVD5
	 zGGKPVlP5I8XaRXvDvxrQh9LYxHRx0i5fKukf0uW6U81KAmuGJ/xWydVgFm8Rdl6wA
	 uBWZx27+Jwb6qc8QzTOSGV5sYAjb00Zv7+7iDhoOcdLi2vBpxhT/M53DoZiLb6BMJi
	 dHnV1eVbcw0tIDJxJQZn8Dah2fw9h0HopzAKNEy1c8OYuy0qQwxXVAq4PH4oEMhNKl
	 UjasAz8nsCBIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2F1CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139303368.7097.12367767537547670838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b9bf32b14193db800d47fe2718c5c201fcfe906a2e0a834eb71f7bdc300b56
Date: Wed, 07 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791393033
