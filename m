Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A24B23D288
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763947314; cv=none; b=tx68dV2luHQ4rfqgU/h0NUvxuWZpiC8BWAeeeJx2QN6Onk07vGMzugbsInbN3lNPnKRHLfIrU75LjiJbQeRuYQUB4sZmqD77KdkizzM4JYMKCinygj9NyHHw8eQ+g8weGGo6tNngdh6CqV8gHzWtV6ZIc9BzgBviW5611wLe/Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763947314; c=relaxed/simple;
	bh=gBVL3zSI9GBPcybPl+YoxxwbHNzwgPjjnZgikQK6aaA=;
	h=To:Subject:From:Message-Id:Date; b=FPyQFXVCnyWsfB01GkEKP1tUWPESun4iZvnxjueL3oBcFIW+ditR89JvtnlrdW/duR79qVcF6nh0Ctr4VUSw4NQ2UUvxjrhtNEVyC3dM++3Ja6aMu204Xqp2rKOy8gpesp9t2NOcZp63DOgUYBXGrgNIft6UtTVQVTETVjIqeJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myYpET5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myYpET5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA4C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763947313;
	bh=gBVL3zSI9GBPcybPl+YoxxwbHNzwgPjjnZgikQK6aaA=;
	h=To:Subject:From:Date:From;
	b=myYpET5D2tFZNZ0O2+rLt+bLTkeLYCIIYD2F4C922HVsaIg07L6wYRvbTZXNTBAiO
	 wQP1wAO8O86bQ2BnbzjnM3kR/klvsPNzy3RGzcUijOHH0/6yxhIf7rBowCWEw7cSby
	 UtQZlCQWxgItertDUVhOK8L36dsb4BmHfbS/RyD4+hqcyFV3184yzzWyXKVHE3njZo
	 COFsRV25LMBq5ZTJMl6Mgh+siX8aaKk9feGYTaN0A3RuAOdSN5q9aIKkxxh9p368kL
	 kNNdho4C4zvBteCGccTxbfw0Ut8DzTUkvRiARl3dqj7SnYG0Y5czQUgMZ+nWYqoigG
	 FvdnFMDiLMz9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025ECFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394731358.13390.4647033777527876601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7044df276335ed3dffa4ba8bbde9466f4176bc191ad7a5dda30e11ff3da185d2
Date: Mon, 24 Nov 2025 01:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763947313
