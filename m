Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A84F1F582E
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755215396; cv=none; b=qxUnfQPY7uoDRlMr7RXPXXKKqriZrYDd7GzN/hjR2AvFUXGi9L/dd5/gQ7pyKqVKfv3KIwDOvWpuD3jPxh4SXdLLJZ2/cKcBDHMuWOj26wH4WnVNET5grj+yaLgGHC1oKHspezNk++buI7SDVOSKvyP5Cvyi+v5q8g3dIQJsxOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755215396; c=relaxed/simple;
	bh=pVWkDZPQ5vkKj4ILN9cX6wVnS7atBQT11Siai990im4=;
	h=To:Subject:From:Message-Id:Date; b=sdtbvo3+9Gubthqp/5RR4wZAtfo9gaIJUT33so2vyxytVF8+eks30z10uCRNBP5nC2d/ss6UxXOlp5c4+NuwSKohrBE+Yk0oY41I7IHc/By7RJNp9D924tKzxaVpiSOlNDIioaxgUMK7yxHz+h5XDQf3DdojlYpv6ZgAfOIekXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvExcO/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvExcO/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0357C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755215393;
	bh=pVWkDZPQ5vkKj4ILN9cX6wVnS7atBQT11Siai990im4=;
	h=To:Subject:From:Date:From;
	b=JvExcO/Ta0ZIlNRDynUUXKvBqjkYKWZePvmoXnAmolpNrfBSyH4RJvz0L0lrVX8pQ
	 z/OQTtBk1Gd6t86bAtDYfpgSmmTI1GrCDvxYGjP7iaj0dmEh6ptBo0Neyd3/YMcgFm
	 6I7roaY6sLFIQufspDrJXdNrfOkBf/U+uDHnOtgOI6JtGdABJCKwUwxcKeInfKwNLR
	 j/TcXLvUwXgZlPE3Yj1iIPaGR6ka8IHel/Zbf2tgHIerf5wQjp6lwY2m79imwlAHX7
	 KfomJj01W91q6c7wMoIxiF5Oty0orSMDJWnJFergLN6sTMEOY/evQQH6pDp4KnPzaO
	 cxStqkGc+S0PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158BCA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521539358.19514.18326228401678441881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb755b9320327d33841df5bce266e2c3eaf1134b223501bcbc6b5226b3326c1
Date: Thu, 14 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755215393
