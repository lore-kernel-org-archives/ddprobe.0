Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5743B637E
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792266634; cv=none; b=jGqhLsWmmnx9zyTJMV2JOWqs2ogITdZlK7A5LI1fDNH8quHt+zZ1wFzyAt5LyYrttlcTwODG2EaUmedbw7pxDApBQR/7Gkif1UditCZShZoRizbIYhz9l+EiZck6qr6iVgvsfT6/6cnR0DNi4aQlVwHJhz3X2wwo28Map2PgMls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792266634; c=relaxed/simple;
	bh=ECQQY26RKVNI5UoQkCJtEL+y1ukUz5Z4vZ4DYhvA2C0=;
	h=To:Subject:From:Message-Id:Date; b=f9j9DaMz0sbbUdwaRbNQqBw9+7tlQOpV4D95ngdPdFn+4feMOwRY7HNDDW0LMzWhuE9nKKvtx+1A09vTokWEyjaCm6zgsvFF/uX7PIqXLbkxOOTcYWvrFB8wv+StnK3weKaq+mBLvUREGmhgJPJPGUBFs0+VgxTpSF8Js4sLvUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7bKcTIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7bKcTIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D500DC2BCFC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792266633;
	bh=ECQQY26RKVNI5UoQkCJtEL+y1ukUz5Z4vZ4DYhvA2C0=;
	h=To:Subject:From:Date:From;
	b=Y7bKcTIWPL2uMtz0ZYe75L39aOESBJQbIXuc+7v/zDqJvgCu2p4xqkAqUrqzqaiYk
	 6cjAsPEWhxRkxEnlb090gJas4BjP9p7GKsaBd9W6TkQ8jcdn+fmUrky9fw5cqKiuSS
	 dGuX+Gt7QadFzkSHqcHnjNq4mI4xQTCpDQpUDn1nC0WePGteMeOayD+mBs3HPHD6HY
	 kIfGyMGkeGrtYV7rLpnG2hkeTjFz8hjkuP1yS/ivyBGXlplyXewdipZOClWWZnseQE
	 fJC8izqcT/bBekpQzCp1YWoxXsHC/8pqlXakkza2AdsL2IK08cIuzf7TpB0dMWenlP
	 uHtHAMGap2sqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B051FCCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226663371.30067.13862684944872539033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee149871bed80c05500d418232e3e99dcc7df13ab1b5dd31ab91b68a6ef22fed
Date: Sat, 17 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792266633
