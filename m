Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C51245005
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757508594; cv=none; b=GM5+dSqwEfDjOFN57AK40+oBVZY3jc+fXro17Rm/AV8EqF/oORefCT9f+oBP3auLO8ZIm9L68am5VrlQcC2e7XfwWDh0yfvuk63cLj9rcC6PI12BQmMbv6riDs/Lrw3oBKhDoSOxTbMvwpUPRORWnOAn0ZVBncwTnV2Sz6Ru7VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757508594; c=relaxed/simple;
	bh=rj8YNySLEVK5dJRtBolIO5nLKHnEwdXz2FbXvo8+DpE=;
	h=To:Subject:From:Message-Id:Date; b=g712re1ihqJGWG08zquBrm5cqZtEgcyCAq2R3bSjGgng+LlrpmNq/stA2mtPJnGaPcfbbbETjn2lWbKUB9DB7UuT2zfVr5fWkHMtneeL1UmNCzxS40304ZGpzFfRF74/mE4WFd1oGu+pY7hI9MHHEU/KGvWEKSPobZ/FBOqu0zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD8Ohvzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD8Ohvzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64D4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757508593;
	bh=rj8YNySLEVK5dJRtBolIO5nLKHnEwdXz2FbXvo8+DpE=;
	h=To:Subject:From:Date:From;
	b=PD8OhvztFzRGP8aTKc7gOxT3h5DoVPg5hNqNAeu7nYpvBzhDCeUZJ/21VnZYXr0ol
	 IC4mFHG/AXBd9Fgply2WxuMCUhFquk9JtZ4IpLTaUKDopnt48aksJUoFAFcwNZz4ts
	 dxDQuo706QihtQn4vmzijkVeDZmuHNv8fGdvukB25Ektp8PT/YyZjBLjYEtL2McPok
	 y/cBbgN5zMnUj/wlelqnvZnTeE1qLpk5mV6uVz6X4mTHFkIXF4CuxWfJvFtfxtUaBj
	 eKGY7crBHxgFlhl38zKOuNkOm4d0NuDX4f83j4FKROJHdWpy4Le85Vq2qy2JwFKHP2
	 YDQ88EBRRHUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9297BCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750859359.19565.6106677470504844567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49dc9b8969b688917dbbfaab78ea7bd549b07a782fc4b166af1382cfe19dc6d6
Date: Wed, 10 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757508593
