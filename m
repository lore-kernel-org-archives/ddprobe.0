Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491EE1B0125
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723671354; cv=none; b=kIXzmuq/6nFUwyNeHOnlP5arm3SbGpEsOIS73ULNDVo7SPyrLLQbdUZTCkDKW4H7bn7nY0Ap374yYcbYCoTr5/13gqYqsmkFJpKTV9Cbl+dyUCw9aK7rMijfioQ3hk7HgGcryYkE2iakodqQXydzUVEzZolyRQfwOll7HKMR96Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723671354; c=relaxed/simple;
	bh=fNgiyIeRLmTgLxZAEn5HlSed9aDvues3YbpmaOdCPXI=;
	h=To:Subject:From:Message-Id:Date; b=GAOvagXNwTWjIA+5OK5LeZbiz6GXkKn2H/1f5nHNwBbgBTqsn3ZxTIrbIGlYupwcrrja0rM1ywumJjP0rGBH/lNmT/aqi9pTJIBRjZEq808/dmp2wR9WtlGyLzeUCFcdeXS/LRqVvHCCAhTviVS84tuL/GVvEQICTy9VbPfIMkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaTfwH2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaTfwH2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEABCC116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723671353;
	bh=fNgiyIeRLmTgLxZAEn5HlSed9aDvues3YbpmaOdCPXI=;
	h=To:Subject:From:Date:From;
	b=DaTfwH2yPNK0FvWWW+IRm02/PPhSzILhHSj8nbsAFqlFPd3c5l33ONejaFgkKqz85
	 NC2xik3X1qDIJFH4h3vuoTo3gFT9dCHava1fIOdGXqCKlJrnSZeWvJ2NfWJjz/KEzB
	 bVhiXf1CIb5+eDva0dnUTA1cBtflV/Vu8c7vE5iD9lwsQm5XoY5ux2CyvImAGvK3uY
	 5krKw0JvNstWeKhW/+kCy9azsVG2ev1Dmv4RRxxuqhOQnngL1PbuAYsQ6cLS7xEw2Y
	 j0c92E7mRN3oQsPyqYopwYf9aqffEkWt99YMtxWi9eWUdvaTG4TrVjCgdE3lzcAX6E
	 ox3yOOqKIw9tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FDBC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172367135366.21423.2174165111809349143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6975e0784b60f6f2c2fa2440efafced0f9de2e4ce3104228262983bb24f6c5
Date: Wed, 14 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723671353
