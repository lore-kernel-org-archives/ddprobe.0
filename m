Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455743E1233
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789935034; cv=none; b=p1GWSyrwRNDZef32msipVDU0y4krTzlIkM5Epn3OCmy58l/N1ZFzWHYKIYQKHSzlDVCiMfso/s0IJNLk/a+K62E8gkOkrhK4o8zNZai5/soX8lhLPq0UYdA6IKCweef14wHcmsz/6q0kHaLCAwXQSc3GIH6jCamS0xi1OogNkBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789935034; c=relaxed/simple;
	bh=fQXjy1VyFSwzvbUGQnf1dCgJJtc7OVzIqHbBTaqgSq0=;
	h=To:Subject:From:Message-Id:Date; b=WkXrjEOXr11GqWHHZ/IRAVT9RzqZ1ymLSaD3N2ito18ZOECX2KTG5wJ+XAmpNkih1bF8Nzv/98wSBKesnEUbvXi534gIkcLmNS8ju6CLFVGiY/oytOF5ZgLM6ZZBYRsSDbUX12gBfVm5z4mes5LnOpZHBvdZha5MqP7zGU+CC/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDPNGIhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDPNGIhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA970C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789935033;
	bh=fQXjy1VyFSwzvbUGQnf1dCgJJtc7OVzIqHbBTaqgSq0=;
	h=To:Subject:From:Date:From;
	b=IDPNGIhg3DxTGRm0f3Y3r24pwApWK03XTkrAwXUWV0wvUwRKPWB8lpgnA83/5LtNV
	 Y7p5jr9LgJ8MQ1pYGH5NBN7mdxAFwcnVwRV9yBNeWNZSaYc1HY/GVmtZCReEs8tSd1
	 4aUVzXvAyRHIOFqGsaKHqKQbNygz8VNSPgWmgGvczMOosE69HT9mf+ldOgl349Y9b1
	 xSew1R+eevfKxRdTkRqmimGGBIhvueI9CSV7I9Qk8cOycwzAlF9M1ExT/KeINPsW+G
	 TwV8LtQnnVSDTAxUwvJ77aubkrkTS5iqRoLVlJaGK+3+KJYjHheaZvkNwD9UHAk3Bz
	 ySbjvDXFnIdzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE6C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993503368.574.13675086647607035244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6ea5639fc9c6cb9f0590c6f24c0b87b9c4d455f8db490b7e9e3712e2104feb
Date: Sun, 20 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789935033
