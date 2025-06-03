Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5BF23BCFA
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748966394; cv=none; b=T+CzILytVzxY7Mvj5meHTIlNPJLie+fQ9AeUpzY4kNoi2gF0LtdUBPo8NQMBfx7dz7Ph2MHfvrgMS5Hcb4JLm5/tZrA3uarnqzwaGz9asjEsXGk6QRkisD6vly91Tqe59v+iOw0eoL7JZ79CagB3GS5Ojk9+ZvQL2IlP/dPNrD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748966394; c=relaxed/simple;
	bh=ts/x9mQbN4SAHskRO7fg4/UQF06xE6FoHjHeodHtaDE=;
	h=To:Subject:From:Message-Id:Date; b=Gnh1nCOH8kGe4ii/5+9pI3dArGj+n7fv/XKMACzMtjkeS4UdkhP/Xp+SFN2mx/oKq3/PIsG34/c/m1qy168sker/QPFzm1lTWyUoUu6sdIe38tWSqObfPbNKAgllk+28/TNh0naXY0HzGqip3ibJUAnjVYjO2HBWXFt7KfDy5p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfXBobMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfXBobMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748966393;
	bh=ts/x9mQbN4SAHskRO7fg4/UQF06xE6FoHjHeodHtaDE=;
	h=To:Subject:From:Date:From;
	b=gfXBobMga+zqn0TEzT9iyWOLs+5AhI6w9zQBaonOwp+2WqW0rUgeoNarqBhxEYsfv
	 6XxJl30Pj74yq7hWrTaZgCvJ3qG10XJL8jqCBpiDKWzkt3QsWzY1FWhdma680QaIDS
	 GXyEY+pGt19n3N3dKV2IEmSGXl4MF/ZWEdm2VM9m4gC03pGIZjSW2jAloBsUS7ppq6
	 kmWF/WuoIt3pbGyD8kI7kvy1D4JU2t8MnvfVpSDzbyf6j7Uixwm4K2fPUFocJ+VSKw
	 xvXkLwo6I2f0F31Cf60jmXmVxaZVlzC/CzD5GUJNu51izF34f05brfBuqTnvjY0c9l
	 brYtuMdQZBkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A7CC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896639359.30967.1049511718133772915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df714efa2e3297206c42bfde22ce77f0a1e5ad3f50e26c5d2e00852301a99e91
Date: Tue, 03 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748966393
