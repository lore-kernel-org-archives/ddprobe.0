Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0B231CA71
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756726794; cv=none; b=LoG/jJSN4jM1rBD/WgEBjRM/XanOypfiZEg95W8guX1Bg1+K7MTTKOzSm9Tfyjiz+z86QBH3mPgBN8o2ATVx9pUHNyuH/Ow5aFwg/ntwStM0VyrqX710wbYUO0V4TnbVLX6NN+nPaJmF0F/gamd/GuQmmKWgUstWaeDUmuCFJV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756726794; c=relaxed/simple;
	bh=b8N83zaiytxKfbDCpWBadUC28AgSRFsTplXFjEdjmdw=;
	h=To:Subject:From:Message-Id:Date; b=rAr3j/5+z9trYMOKUgNmkFUkyHbcVlzEB7WzJR0v8gTuXr1OIwIWhlxWwoq9micMEmdW+JtjOsU54ot036DZbhD/arDtQT/Zia0DKI+ijfWKQep5EasvoSgR4r1gXIwrvYaMWjz7hyfgrxBIMjFXw7MjuHRDgKTRny1yJWBlshk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdXhh6lv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdXhh6lv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE15C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756726793;
	bh=b8N83zaiytxKfbDCpWBadUC28AgSRFsTplXFjEdjmdw=;
	h=To:Subject:From:Date:From;
	b=IdXhh6lvpjGThG2ICnY/4Es9OE5s+E0Txzx7xo6MQcwejEhcSCiz5UOd4W714/hDa
	 tr1IvzBFz2qECkoCahE0Qcsv2nUhuHDihQmnCz5T5/kb9IL5I3LXdZC6VhHHMJUV6j
	 O5D89gKzsunKDhpYsBGvP6hzPXW5Bbq/T4fmDw4LzRd1uBLWRD8uK1f2/6COh9wdVk
	 cHM0i19viBslH/R21hF8TgbJtPFpxC8pagRwwTjhwhu64z5BOEDznfMKk6x3ayg0gm
	 FjrnWfXxH8fCc5Clubc6cuyFz40PYlea9GNmXTRoXjD94AORrAs6eF+u6+8iNf7tM3
	 uwvN/fCq3ypww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED08CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672679357.26711.11615422562468499300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e69ecf3264b4921940b3c6745c8eb923fd1adc949db2efeacde78ece073c8b
Date: Mon, 01 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756726793
