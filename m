Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315E15028C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733436954; cv=none; b=LrSRVe6vvVQTcZgl5HDIx+hmp2znEBgbqtK1KNWg63sACcalZkc04pSw94mJva8oWTUbqtH53GXHPFUUCAd82aqKfgVi5CgNEs3pxEeadNLHxG1rWD+9+TcH2wJ3ByfostaExZ7vCSK0vzIX6DpvZMUGImokWxAQrdgKK4CeWj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733436954; c=relaxed/simple;
	bh=s9RySnScBhe+/y6PU94JLdr2+XDB0CjexUUxIHyDjlg=;
	h=To:Subject:From:Message-Id:Date; b=hmls8O23Br93PlHOecm+hKSd81N13gLC3Pxk3Kyu5QV9ZfMeSd1qwgsnmcX6Hpn+xYBRbywg/yw43c7cY5/rm4U19vpXGOAvqP3Srj44mUAkcQfNmdboReIzIq/qgbpV4wDGJjw8HTzzv5wLUd++jgdhjI43Ga6pskGbIKrJIWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5WkV5gZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5WkV5gZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9303C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733436953;
	bh=s9RySnScBhe+/y6PU94JLdr2+XDB0CjexUUxIHyDjlg=;
	h=To:Subject:From:Date:From;
	b=A5WkV5gZeaiopbI2mV4pLosFDEr6OB0SpWBSIMVXdJsNZBMdY8VNhHwU/VhqjOZvO
	 k3DNrWLgO6FTdjMEUzB2+oY1DJLarLY5zqBVyBGWtfsylR1A+NOi2A+i9qftucDyjl
	 DxMeCg0L1tc7eIuELP/Rd89nsGoci7faCqOlPvECw28VY0pPjo0SKqyPAsoG9KfFSO
	 MbSgPhsRBWbwU3prheQfVOr6gEof8oF6zmfi/V7zj92n72UuSA0q3/jXQxaZXy7Voq
	 QLJFoO0R8Gx4xI2wNHbYKz/0l9cO0DeX3/3Ak2VM8qMQH8cWSQqLjVgpWp/P7LgTQS
	 lgngdenamSkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92246E7716E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173343695358.27986.9250688357248677250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a6a4a1b16045214ea600a9e151ea9d76070939dfa95c3d68515c711d6c1bb4
Date: Thu, 05 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733436953
