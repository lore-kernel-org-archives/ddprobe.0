Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B0E2701C4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745801394; cv=none; b=b65jvenL4PMSS08SH9Z29yehdiaTAAJFvZnDuJpmMtoSE7po1m+pu5Fa0u0IIKRIdJt4qHlnEC/j12CWKxLS1JgeM5t18/xAXdjlAWzkb6cA5nuHIDLwHRQFFuv/5Q12QsYHWnsJYPe9MpsZaqSVRC0hEqhcZ5KEC9q3GgRghiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745801394; c=relaxed/simple;
	bh=gX+Vl204ztxy9guR7BjTBUvihHqK4dsWl25hFKW7AC8=;
	h=To:Subject:From:Message-Id:Date; b=Tla47CKwEEzHZD+XGFF/i+/ZKh5uI8xvYTwkgGjSwkUd/FVjMK4JV/Mp8l+pUgOmWaQacD2fgydfzF0gZ11fF/0zxcjvstMaEBBhFmrwHiIm+Hw3kiz3x/SjIJ1goyt7WRrdVlxc7nnZCkMQ3AfIn+J9FWova/7MtoXeeU4mH0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0pFVQJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0pFVQJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3180C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745801393;
	bh=gX+Vl204ztxy9guR7BjTBUvihHqK4dsWl25hFKW7AC8=;
	h=To:Subject:From:Date:From;
	b=U0pFVQJz2MUcuoFyOBuFKO9PA7gBqW4OO+DNGrBFYIXVUcUCB72IqWqUZugbTZpep
	 pbXBsHCyPBzZPmwSj9Gk+lvag7rVwdq9Y+8+Qt7oyFafwZy5CefULyO2cRfbTonO7X
	 5pYsLmkHQPFT+qkxtulyeA4BRiNi4922e4DqlzPnYUM3AlLKo1RQQazAniyL7j44jj
	 v6qnoEwuSMhD67Sk1pG/+4i0lHROpJGV2owi9mFAD93eEg0bzjQ9ED/mdw+h/YyB4M
	 IrMxE4V8a3UVj/9zoglj9wBa5L+2dDP1dXMvX1q1h9SHL1ZOkmcS1zpFQltC8sWzBd
	 NNG1jCFgNiP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DAAC369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580139357.772.4677237515882902966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320f6136c1784c9f495232b3f0b3a157a40277ab93beaed4b07b9c7502682d1d
Date: Mon, 28 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745801393
