Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72BB916FF26
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717175063; cv=none; b=EB+Lv7CQYFu2hWW7urIiKjt8Fou05nwqZzwernzAHpqRwu2yF24w+aMhA17NMZbkK588jCA9E8HRiqoaheZSWwxGc5ibqO2BvGKllAJppOR6nkgYc1rjFM+aP3/ZIQsKq4ZgwadI0YwQtYrZTGAJYDjfkqmCvrV6slchnypXIt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717175063; c=relaxed/simple;
	bh=HDZsMH2hYMQCNC37dv9gfLRJ3/xnBJvHDAyrBpPmDxg=;
	h=To:Subject:From:Message-Id:Date; b=Pb1/rbcioz4jG6uQ4Lgih6h+0La7waYETv3LAOMd798oPGSZc7Mll74jwvL7rl7XH5q5FsowstrFIVAHAA8CSyhMOFuVmOrH2YMrpmxOcw89Y/qny/ygh4koKpIfcCxhzMDpf9zp8TuBnMxSdjhzA5uwy0unFnkxEA6LxZ9bno0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCp5q8rN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCp5q8rN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4536C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717175062;
	bh=HDZsMH2hYMQCNC37dv9gfLRJ3/xnBJvHDAyrBpPmDxg=;
	h=To:Subject:From:Date:From;
	b=YCp5q8rNeSm+dJW5Wt3u9GYamEEwXthKjnaAYHZDDAZfgVIcJhUhcz6WeDEUsba6V
	 00K91ccEfPiHh0DynhqzwSLSTx6YBjYTxbvEV7991HT18o71iguwByOYRiYgFEF/bZ
	 5CeGh4AbnAGm1OzaY85BfB5ZSgogMbncjWh4S3ffi+WxjYCLS8h9n+LRxzNZE20dAL
	 7Jkujr4bnZFQvxbgpWPe6dkMfQx59QyJFTsfIEAhBGVGXEtDYvV1hiKydEGRPz1xpW
	 OnqBtA3g1fKj5mo7tS8QoMogWcL0DeOd0ddAFS1oFRAno7d/WybCNwFbwOYIZCuy5z
	 /j+M/w4I+K/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1DF2C25B7E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717506284.26052.15835182183808332981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d6a3099e0bd39df479c8d59c762793df25c3d940bf8ca86f4fde180b021d25
Date: Fri, 31 May 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717175062
