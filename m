Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532211A38F9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743711594; cv=none; b=c2g60cqib4qHJ8VKEDR2d2wdD1JpgGLKil8PhOku1V4/cJBzUe3QqKy3uZOgbz1BSSoo6GR87a8+qY5i8dg+ALmc7Gj/+v52K+cO0k0+7U0mwX3CdEdHcSE5/5/VPU0kXTMaZYwH1bIOueogK5jm856/Ii0UJYCW1iIWxSbZvxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743711594; c=relaxed/simple;
	bh=2Xj7E8rdk6yVPiHWOWvNfCmCYK4QXuyR2M0sqMQ4q/4=;
	h=To:Subject:From:Message-Id:Date; b=h1QhPy1Tx+cVLNdXq5FJdkpNyZcT/uBe54HJalAaD8rtB8dI5ToVZU/LGRmNnDcDp94Zbpq6UjG/mzJCsW+8IOX6wclsacDjLE7TQRskzQ/objluAUzOdb63EvpooE9wuZ+2sFaAyrZbMpS9agVkdW2vhlOcMEZRZpqaMEcywKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWp3696R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWp3696R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C022EC4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743711593;
	bh=2Xj7E8rdk6yVPiHWOWvNfCmCYK4QXuyR2M0sqMQ4q/4=;
	h=To:Subject:From:Date:From;
	b=RWp3696Rn9dUalFPtha/PR0J6LvTwFdP3YID5Wty22WRmapUsQ0B7MzQgsmRCaBmP
	 2ZhQ0FbyKOsc/4zFiYqpN8GCl/EWWC54zpK6hoocEWP3rgpHk3Ge5HyW1HqIikgKcL
	 egs59mcjJ3CHi8V5hmvqdUKS0IxA28GLi6hUY0TdNg2axoeLJkEJt7v3NO36Gh4wHt
	 L1Jow167a+vpYAb80kLLK807thyFSg5p8Ox7AUyIp0d+qEaR3w4hDHTcOWRxH2lVqR
	 TiEYvMzSoWaA8OOl2NE6PUhealvh2KqQm5hi9SWqrs8TodXrhQPAYItmcbZUlTx12q
	 2rlta1qr+ZiQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB03EC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371159366.31072.7184764558181898068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f52370973d751f2f7ae0b010ad0a69dc7aeeddcc02a5fe6cde9edfc5f03ac0a
Date: Thu, 03 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743711593
