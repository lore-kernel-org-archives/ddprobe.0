Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CCE8F48
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772370894; cv=none; b=j5EzF0D+2CGQSkHtFg2wG9ZUSx+eE8cl4GhFz9He1/cCCorJojRrinwAd2R0tnQgkUiH0JPzf+SFsISXKGnXE1NQCUMbCy0Rczj0XDpzEyzW7GtqXgxUkLmPKexsAIiu99aSpqFlS/ATV8PAMEniSFN5Vb2676O3Xx6dColPm6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772370894; c=relaxed/simple;
	bh=vaDBWVptLT1A7saU3HG4leAOalgaZTOs9/zrfi5Uh/A=;
	h=To:Subject:From:Message-Id:Date; b=l4qAibLb+4FiDItCCFNhF5o9N4JMfbDO9kJP4QbF3MPoj+TvGNy3eF8zjgT9e+OOJEo6seYgg+L4l7+jnxiVtJa1Y+QMvb3OF29eJKSIHNYZYQilid8CKSOXM1nsIDg2Ws09UP8Cq1ejYFTwLdtW5AgRmog+ymomYhrI8k5Z+Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmhQ+9/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmhQ+9/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2224C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772370893;
	bh=vaDBWVptLT1A7saU3HG4leAOalgaZTOs9/zrfi5Uh/A=;
	h=To:Subject:From:Date:From;
	b=RmhQ+9/RJWob9INyNxVFSo2jZZfKB7Als4baDkZLSOT0NxYWGT3dvkqU8yygtwZPD
	 L9ihodmlGpmuNzFOCbqDrdOsQxoCSASse4aJBxoWARriuoESUW7d5t2e5L7DBFo6pF
	 iKjE/dIH6Q5ZIXkmnpYh84C/oMxqAPuyW2iM6r5q1Wz9m70ILLX9JqdkBjmknLPa4C
	 IpA7Tui6CChBT7jyoob2pga99geY1UamZcjS1ZRFRBzHqqk7v8UlQNZzcmjLvCCk+z
	 ZPBcvvYQJawIaBzoIQQUo7tAp2i+BG1O1mjBP4XOyG562cS8G0KQTxIqpLbDQGVw8Z
	 oYUClLIA6Ac4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F545FD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237089362.23244.13561072126966917359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620fe9eee1fe73a137504ad0b2c6a7e5c7541384501b3549cb0f8da871470b9c
Date: Sun, 01 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772370893
