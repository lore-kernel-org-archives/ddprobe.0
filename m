Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168BB33EAEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774259094; cv=none; b=A5E0GGWk6NRs7WZSc6DqT2LTW/Me0j2txDeEOMVjtt9wQXLww6Ucqqdn5rZGAdlBUpIoviZ60Uu2haPdGc10RrZmh6F4MMxWFV0ZQnYyIy6pF2/QbBlIf1CD6lQniqAzYS9Gaulup3S2oXCVCw7Iw6O90flWFlRyWXgkizCLxK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774259094; c=relaxed/simple;
	bh=w/dFBDIwRIrbnCbYidFbbB32gBJW/aPAKHC40HZDaZs=;
	h=To:Subject:From:Message-Id:Date; b=iro7n4cW/yOVgnDPUZmIXVaQKEz+I0kBrEGmfhgW0XZHBb2Mmg70QI+WZikXgFcVm9hIBCoScQL/+VFHSTs2wN7lpRHMpV7N0YggLmQNb0aEXeds8w7e9jPyRBK7OF47wDDu71zOkuKC8L15+304J1Xom9e8HWTwwC1z7NJaO2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na9qk5K/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na9qk5K/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FF5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774259093;
	bh=w/dFBDIwRIrbnCbYidFbbB32gBJW/aPAKHC40HZDaZs=;
	h=To:Subject:From:Date:From;
	b=na9qk5K/J+e3yNdpoGXQoEgg2hWq2b4DL/a5MHts55pSD9A9IMkxsynLg0kprx57E
	 bISn2DneIFpq3fPkQYpc2d8TvUXL2bRTJgHDWhdHOmrI7yVjnNfpOdium6qffyKkQF
	 oyR0WuVv3Gc5rdJM6Ikan6NfAQhjcQy9rqdMc/lFs/MJMNPVQDSeRYnFbkTBAjgdt4
	 5VCTDqftq5OX3e2GmDeinXY/VQWGpVq5JUhZjDH3GfiFlbf+r7N4WytxvQBHzZuFaI
	 l65l4gzzud2ogpQQN2dRyruF4BTFBHmQJq3mLAQUZ65xaPp3t5/e9P/k5ONSRN8xsp
	 vnrOeEr2yZ5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268EEC01B7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425909358.11695.11871607803861975262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4464ec30d649eb93954bc37065b2cc5dbd5b139929eeb263732dcdefd40c4a
Date: Mon, 23 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774259093
