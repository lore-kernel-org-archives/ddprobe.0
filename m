Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FB33074AB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769817234; cv=none; b=oMuri8SydhRYIZ+ndt6hXsuC+SZgwj6uF90DCHFtY+PubBfsxyO1aJhmXzu9Yt/IRwqdjWeSocdk+VVi/Bz36QgtGZrSQaSHAd7b9ZUDTRibOCW0yd94ATCyg+qReuQV111XgJz9UZpHWFYAUwy5RNqxNh7pYc6PP0c4WnLtjdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769817234; c=relaxed/simple;
	bh=ZBUZNPt55nj0hIY3NtQ8hHc8MUNSz1SkOi38fbVIuqE=;
	h=To:Subject:From:Message-Id:Date; b=WiCzRzOjHrMKPcKJIC7iY8fb5mnaCOhizpfFKb1x5L8QEDJc9ys/ZXWVhaHzr0LWewR72GgOzi68mz565bvGsAorLHn5Qy17OyVzn1lT2GX6YoRGMHvAttUEME20EmupXjHXcE/i2TxSpCyIiotKqiWYOoIg3NYVDWvlxs1Okzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3KHip5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3KHip5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BEAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769817233;
	bh=ZBUZNPt55nj0hIY3NtQ8hHc8MUNSz1SkOi38fbVIuqE=;
	h=To:Subject:From:Date:From;
	b=C3KHip5iQCg2yJDYNF5CozBsqkt6qwgsYz1cNpnEUR1XsUPBRtQO1EOWMqRrwcwG/
	 iYzw52NctZIvNohLlMlGieYLuCiSfpK8z4zGxHz79fLbJEbeEQPAh9dpyOO98Rx8bM
	 P1FUxHO7pGfU2U8zXbBm4Gsc6LI7f5XIxblKYMNBwW+6eSTsEICFCo+DUY7/1aweea
	 dV+lDgoXFd0YONz0POFkVeNrEWidZl+OCQ4hkUTHdgQ4bzlZ0xRxsAQI7uWO/ovbQl
	 YtEzly8qrHgXzQytgfoUyupVMBbPFgNGK43whvMB8zNw/+xWVGY/DTNqAHU8Z0BPr9
	 0iSI1yewEQXkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAECE6BF3C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981723357.7026.12143497913031786979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d83ab661842b04991c4f31466810e9d759f4c0a56142a47ffa0ede3f81124c2
Date: Fri, 30 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769817233
