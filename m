Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9728F5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750479594; cv=none; b=HnA5oZg/8VukQW2U17Rb6p8/DpxRjY5buWZFv+mhTdxP1/9vuG8JfukFguoBYX+4yXqctQdlw7VmYHcQ8C+vE7iZc3rhgi0y1+BmC62Fp0ayBQEgffmHa053DGrv8r71sTjqhCSiKJbqsM58Wswn+16ljL9r1uspjrJSjVmGMbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750479594; c=relaxed/simple;
	bh=ttTPjAX+Hqo+Dm3Xbo2J8Rtp3EQyjh0R3k9QRhalQeM=;
	h=To:Subject:From:Message-Id:Date; b=ADYE+RLnNMe10svI+Bw8yx5tcGs4zz0iEYcU6teHF4xINc9dYHujkKc1tM+Pe17WLEOXb12bCe0HPY15oFQH2gYadRAtdmg168OSdyJKu6qNeF9qIIX1SSXtmJvL1YIEsLk3aHljyJ23Wht7YU4gaQCM1NalBm8vy7vRcrInWyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI9MA6ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI9MA6ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20B7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750479593;
	bh=ttTPjAX+Hqo+Dm3Xbo2J8Rtp3EQyjh0R3k9QRhalQeM=;
	h=To:Subject:From:Date:From;
	b=rI9MA6ugweU3L8faMzwKbcVNf0wuuMMZFfn1VOOhCfZfnSfi1O9EAQIRWhPZcyt9n
	 HxDrrl1yLDFtjfVtrIwmm0HMVmYlIxpYdU63fR0CUzI3Xdyk1kxEV+qwcwSOcRGmHV
	 XeCh21ywkLk1gfExXi+ZQ2EPl9tdNuwvcLgBqjNf1SZ8QP0+thJgqakvceiPhkXVQ8
	 i+TJNyngV7JlzWWu4ilO7OQwE0ApvT0ffXR/5kbaS0oDpnEsR5dgEDp6AwB0dxRrlZ
	 kEPtL7Df61nYWge3jwoM1oVJ6OEMLPKPtNPD5m7CgSf8rJDsLBLJ0yZJeDZeZ7JgWi
	 etyLsEgmNEDoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF7FC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047959360.9918.6645122074683564436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b1e847f2b0752dbded363596a2e1172bdf44a30bd9816d816cd6a93288bd85
Date: Sat, 21 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750479593
