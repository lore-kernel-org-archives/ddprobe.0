Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADDA36894A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773087294; cv=none; b=OxbzxLY+l3aQq49kDVgKjqoia68zb3qu+EKte9dVwvQGfb/k3SBhLUkTkgBDUOhOOe7xySzI5U3RtXVoHOeGZgLaNiZIZSE4+6v/MqRSidwuJFuwvYuSICaoDBJxWYgnPYyFZTMkry8OkfR4kCqiErNuWnERhRWYdDpc+W3gQh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773087294; c=relaxed/simple;
	bh=muhwzBrN7kg7WM1Pv0qEySei7RatjMojMhHNdKpBNZY=;
	h=To:Subject:From:Message-Id:Date; b=cGpNbvTTYBIr6KB/IXIEEGuw3u0v9LRR8V0c0jKFeeXSc6w2NiqkeiJhbB5qOzOdBgZBeHuhQk9Q4q9jIoe01Ko2fVCfnyzV2XVNquGbWvcl+8ohebMrxCNJsbpuqp81oYBfKwjuK4LC+sMNQv4U/BMx/XqiS9Ydo6+TwtMyquw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tS1o1HgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tS1o1HgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4A7C2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773087293;
	bh=muhwzBrN7kg7WM1Pv0qEySei7RatjMojMhHNdKpBNZY=;
	h=To:Subject:From:Date:From;
	b=tS1o1HgYaJmKe9v8dgsRAQm9WMUEDqiDf73vE9EpqWtNT7x1uZ5qT8AtJKc/yNcfh
	 a0viwANGfKjRSXygpzee9vZcnBRB1Ts1ZDORXFWHOjRz/cYQlRrnlr8vCFWXXnygd3
	 R8B1a5gx234jhFhWOp91/p/I24LPiWrvaZmcRQJ8NaTr5L9Cqc99cDGG3pyDQZJDCs
	 Lvni6jkoWNCff3iMhTwWCqUBms5Jl4vHh9cL731i3qIl6UexkRujF6vrnjQmWTHjcy
	 1wwMM18lpuPncsRXbE9cCcDuEh0fBI4A+YSK2cN2JYXCIe/uigBFCuXbBFlIdQKD25
	 rRxZTSh3nnSSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D037FCA17F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308729363.8254.848696238902026993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3887341e08670aeb3af61f09f213d9d8f5b101607cc797de50d1eddcb0740898
Date: Mon, 09 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773087293
