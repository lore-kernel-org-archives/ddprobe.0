Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1A942FCCC
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784708314; cv=none; b=pW629iPGnPTOE6OMHSWQbS9I6q+Vufpv7jq2wAiJIwN58fBCw56pHd9cuqA18kMkNompuXnsPuy0LDRGm8cB4CFAHC5BRJELNJHvofkH//1y2DTZy9qJ4RBodd98pwJIcS3nhzizpaO1v9PdvTB0DpK6rGuyq0STKuFwakLr9ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784708314; c=relaxed/simple;
	bh=uakggd/Xl3rVxnwY446AoF5/T2woyhDYcMafn6DRTmE=;
	h=To:Subject:From:Message-Id:Date; b=sPUJ3/Y52w6WuwGpH4ipFZ77ylZrSOwqAIO5+Em24aRNDsvYxJKFeQ+T4MQlT8biBX5f5Hzm3XuX0dV+Z0y+RdOiVkJQ6ncfoa2G7SKCLRPZ+rAh73m2ULsUim7EOtKUIbwPdO+IdcV3oQ6xBor2tZkIPX1CJO2d4kxz48/O8Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xw+S+aMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xw+S+aMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 57937C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784708314;
	bh=uakggd/Xl3rVxnwY446AoF5/T2woyhDYcMafn6DRTmE=;
	h=To:Subject:From:Date:From;
	b=Xw+S+aMlr97gddCxrBjkzEPi00SA6sOTBVd83Yw/Ip18B9M6PALfoche+aZcT2rRF
	 TmGhzqP0P00fy98Oo8IvAgWpBusbPZghqrrmrM6NvLl5+Wkw0PSjo9aX5UZDn8/Sku
	 nW5sI1eI3Oi46S4R72x6DRITvfd26IpLzlqeUIEJPFO53oNxALUxGwe0WBblg20C55
	 rVaKUIRx3WwppcNCM35GCUNGoLLQ70VBaSD7yQ1hUS/9eSkPgLKYZSiWiSQq/Cpvy2
	 leOmdji1skBbsMXhPJKYTvYdXCj+VP1GRrWsiRpnwixVqI6nevZl3hwwx5kq/5ntQD
	 Lrj29youKzg2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 007E2C4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470831396.2546.15573079743044047979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29d7d31c5c93dea263866f46112c1fea30ccb509d5fde5fca19ff6eeac100c1
Date: Wed, 22 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784708313
