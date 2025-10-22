Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D576F34679A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761157794; cv=none; b=m7uXGT12EMDH9ziA8dAF2JfErAF1QnpUtIC4sm61p7hRUH10dnQ0KMVvD44GdvEU29WMskP8/sYIudEpbbPk0yzzwFmMS21hgeJJvRdJA7ygqjVmoRVVejEHXefhLo/MWVolmcCKTJbpu4ZRQmjfoeOLhKEkcFULE9d+MOld7/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761157794; c=relaxed/simple;
	bh=KD+Gk4No7YAeSumdGClVQs9qfKfj/zcVXy4Na7jRNdQ=;
	h=To:Subject:From:Message-Id:Date; b=k4UlWzjDUBBRuEOp/+W26/DDWXEruRI3TA0RMfqT8fX5+aPsBg8jnmKU3Ddomt7VOF9GxafihFZf8vPHtQycF+7YLtX7bK8ScbXLeRsn8D2FVuYdk5i9D7ByjMGXPXGC3OmeWqEBbNdnMoGhJwE61+Hh1OrIPaXZY7RnmKDInLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBbVvfw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBbVvfw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761157793;
	bh=KD+Gk4No7YAeSumdGClVQs9qfKfj/zcVXy4Na7jRNdQ=;
	h=To:Subject:From:Date:From;
	b=kBbVvfw4Xk8j5M/ad9Y9fp/nzCEEps7lwJ0VezxVC2feIi5rmAOoSZYUMWXrmCWgg
	 1c/UTkQprBycqCYoCQFYLf2hph6Gnju8ngJrsxNQl0L7zKhuLmylGqzIW69/0yTtq6
	 HSxAnBo17gVNmUtHMRxwhPfT9F4U696Lg0R91bWMfxtRlIHZg/gR2L+aWWdhrNyKSV
	 w7GQNCBC32pnqpMR0LqjmO2mIcOU/YPRHdi42GLGGXgfANNXWJHU8KJ1+SP8METxeY
	 dJkV5cA7isMD1CrntTT5oILeClGxaVO0m+lWV/XrcW1Tz/cE5o7Unok+gVe0GY7lix
	 ddHUhJaLfhX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE3CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115779358.11052.16666487534975219736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675fe4b74fc1757780ff790ec569dcb60a02b3e653e95a387d8264c04d496b6b
Date: Wed, 22 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761157793
