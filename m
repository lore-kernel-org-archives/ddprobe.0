Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100DC1E515
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768099434; cv=none; b=Or31YN5cNf9fSNwZMNqakX/IsZrueYJiSVNH35FZei4pQLOoOshTzd6np5JyFblE+G39D+aRJmJagUAyq+c71WxpQG7MBvq1pnKFOQ9RqcOd0DuQg7x/xWzy5cNW/VC7qb8lgi3rAi9jOoWwSxsj8dU55H7MNAwVdh1q9gJhJYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768099434; c=relaxed/simple;
	bh=y6ZYfJGXpOXjPMvaWjvQIfZIXOz9kChsFGOJXblkc4k=;
	h=To:Subject:From:Message-Id:Date; b=jnxyFbDz00XtvjgChGOz84nBq5PU6+vg9KY/TMeGjgRWfvAyOvv90HH80VKz8IcrkIM/kHQ1OdeWnNwwuBWqgCUV7FW9w1F0kGyBlW6K0Tn/iKEf5V3gzw7yGa9LEdLlSuSUaiK25HQ1zaNPQI3qZdSIwHW9E60jqVF5RNeDDzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlEpqsHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlEpqsHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4372C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768099433;
	bh=y6ZYfJGXpOXjPMvaWjvQIfZIXOz9kChsFGOJXblkc4k=;
	h=To:Subject:From:Date:From;
	b=JlEpqsHNa3Q+tWKEi2EYDA96r/A31X/up0PEeUUnQp6kzuIpcF5wL93drEGjD2C0M
	 M/SgZOrHt2N7mRw1FT0bb3CbokGeP+CDasRkt2A34f3/w/q56MbgMB7cV2L8HwwCq7
	 0KunjPtq4Lloqulkmh8AJNPvHECsEkAr8KTLaJpLes/5thoDzrB3WoO96BFwfQtpRL
	 mAybBvXZtEddh5YDM0xZIEHPXiXvLP98QPeQWRLi9zMRsOiEkpfaAC9Ie5eKQSeF5M
	 uD6B9Py3u2PQ4JdsHwZx0IUdxwC6bzxnBPpL9F4DYAy362LucC/KDi5TLcA9Q4azPQ
	 2imokc/mljGkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A5D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809943358.18356.3923213150657124938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3057a4e4c5a762ecae2d59c90109a3a7efe63870310b08198f8504686c9466
Date: Sun, 11 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768099433
