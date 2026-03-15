Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE6334DB77
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773577494; cv=none; b=tFa79nXEBBbSbTKPLpKtFLSMtaPT1GJ643YSMQQL/8tpuI4Mtr0znOhLRxPY01Iks6SLc87W0nROu+QLU7fjA9aZDd+i7A+pC8TZpMpJp1Y3U8fKxEQzi/QedUCypR8J1KhiRdM2Dt8Bfp9sbYwwAjo5ewmC5rxDKkn3ts3FsUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773577494; c=relaxed/simple;
	bh=We32YNjKklsKHpg158KVgmwlmpFpIQcPV9L8W+BZzeA=;
	h=To:Subject:From:Message-Id:Date; b=CAIUEifqJzWI8XBbbBjNyDtPl7Q8CrB/dfIUssrDiHxpHmVt7G/9nnf611B1HDCU7CJeiB3gA7JHHyCQ8BpmVQ2dMjZwWbQOBu8neZlLPkhQubZHrLCmQh8/1+9eWvheiMS+C8ibN8afv8OAipz5MBw8M8mZZroa+X4L555BF7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozxDPueC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozxDPueC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1115C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773577493;
	bh=We32YNjKklsKHpg158KVgmwlmpFpIQcPV9L8W+BZzeA=;
	h=To:Subject:From:Date:From;
	b=ozxDPueCYQy8AVdFFZN/SH2uTcCA2As61UCkCdoNP7nAyFIJ1Ox2Rp1i47On09Vwo
	 7lBJZUfu8pwQOKcCBO3LYrTq/jGaqVs+9oB+WYLG5lWNiUEeXNWBxOiaJo17hu3Jtr
	 PG1758+Fu2pM1LNAnBg0kyT57EQ4UwUlHRC5ve6CIjUQZxsX5pXf9h2hYYrpmCH3Qk
	 YhgAqDyKS+IKUH/Jb5CETDuhRucf877tNCMsBvNDyuPvvkhiszhdcP9+FLxtU/sqZf
	 rNNFnkbBfoEPQvBX1JeWNI+Hm73sBLzC9xObII2unFQ66Ge9lnXt/odSPqYYaU3gK7
	 ZgnftNzrViIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB79D58B1A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357749361.5574.1954520673741712328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8dc9106692a684329a332dcb128379e7cecbc1ffe1e37a374aba7ebe9b1ee74
Date: Sun, 15 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773577493
