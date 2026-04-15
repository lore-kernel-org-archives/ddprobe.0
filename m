Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E50B2745E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776221854; cv=none; b=HNeDn8kNVHJNeYmxgvE9bw1m5f7NktUpLmOMGWK3hN165rb/yzFXw3InJ1U/FfWlqyEv+iFc1buF/WO5cEAMmzOKuwUePZD4QAu5aqmzsIHRMbZ9TZBV9/GckbkYGQJ4qJ+QCu4mrMMk7EfONoh7ikEs8bZ5xt3EUj0EwX8PvRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776221854; c=relaxed/simple;
	bh=SFojNOMHufAvuUtlR2nr2KcKue0Q+s4/CHsYJNRFj1k=;
	h=To:Subject:From:Message-Id:Date; b=LUHGc0l+Mi/zZOVuhezc5lyv8T9on2TIoRhOQP95Jn6AJi6s5syEYVfqgqMLfDzeGLIaE90APjIpNaxX9O7AUhMJ38Yx+4HE+Z9t7oZEG9tRexDPgZAjFvb5Mrzw3wzQi56LjoyBwPVjKwtFXXhBU/Gz5zqYB2qK0zpq04T2lFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKgYn5Q3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKgYn5Q3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE757C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776221853;
	bh=SFojNOMHufAvuUtlR2nr2KcKue0Q+s4/CHsYJNRFj1k=;
	h=To:Subject:From:Date:From;
	b=SKgYn5Q3ulIgn+L03jRjerzBY1B+W80g71HE0I0y2GEVdTkBWXCEw+2ZY941o6D1Y
	 1DSbhIND9b//xIBtmnmJIWl+hblrmI//fg6kHwSYj+XoxLqOb1XFQnJ6RZ/gijgHzb
	 sTgC2ZCTtlQxsypN61HBBOPdhnG2hPDrH77lC1pbpNCwex/dFhPVeYmSTFb3n8Eh4h
	 LA3MJN/323nu8XB/Xp6j4het+9LqFny2yGRxR9VzbYBfCyGJqF0RAMGaQW0WOBZf1I
	 +xyKKRQmhOVuUioBKhPFogFB3mWwWnhzKDC1oWAIxmXnfJEO8mnocgcZ0lx4n0v6n/
	 YYt1q/w+DBgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF57F9D0CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622185368.21661.17745766344334552296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388167c1790c92726676ad65a2706600ed5341f285d90c7ada9cde9b41e34c86
Date: Wed, 15 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776221853
