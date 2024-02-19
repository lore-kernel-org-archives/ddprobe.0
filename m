Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079FB163
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708303097; cv=none; b=imsQkQjxzekoP7sLq8GH8h+oIyBZeyGOYaHbqbttSKX8A2BJvfIZrK4hw6r/M5eQT7k7LRgjTwZtcCABLV/oMieI4cZ7wHCLFzNowjZ6h4MkNhAqZEHm2V+2cyJJpk/BRqYRVP14KLBAaYOlYkWOHVfmk/eGrNWsLy650a+ZR9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708303097; c=relaxed/simple;
	bh=K4lTbls1E9CZvkytci1vMVlp9rCi5dF3p9xf9H28dfY=;
	h=To:Subject:From:Message-Id:Date; b=lOQUxlRv8Puwed0q8T8uA5Tq4Kcrt1PuL/KdasgZdYTXaYu/d78vbLS2V8xn/gqnE9hFadaLPji5VmMa4UWNPIdJHzUxc6HjgZz5IsHhJCsuyo/sJ3vh93B87eExin/HlD+/DU+VkK0ISgPE8Pesa3chy0n/wgMgU94bItjbSu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKY+U+m6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKY+U+m6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D007C433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708303096;
	bh=K4lTbls1E9CZvkytci1vMVlp9rCi5dF3p9xf9H28dfY=;
	h=To:Subject:From:Date:From;
	b=SKY+U+m6QmoPL13H0jE02BMty7d77VDMY97JJHds3g2TKtnHZvZx9+ZQrDwzaIeOB
	 X/IChBXW2mzd8JoQxMjwwHftOxOu7MulT/42vTzoDaR+YFidj2ttofpsLxVK70eyCQ
	 6b4TtY6cca2CSrUPNZTm14Lzfu1uN5xkwoSqOQ1Bi2M58kfDaiYscQYE6SRViOkRjA
	 y3df3UMfYKHVZJOFz1CmzktlWeNA+ALpVZ6oTQRPz8H0hYdFcKRMh63zbg/C4yPKWT
	 FHiveyoh/PyHLP2bOc/ivhLXIPCR9wHZ6Q3Z4d2pnEKUA01EapAt9/spVcrIVY1xee
	 b0cvn9IUKqnZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFA3C48BC4
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170830309637.30367.2099218854880741499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2109189354a3b6249ddf9ff5c55ea72532f49cb488a86f2ee46b8be1772506
Date: Mon, 19 Feb 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708303096
