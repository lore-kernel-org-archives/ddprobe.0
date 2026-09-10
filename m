Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FC4175A86
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789015834; cv=none; b=glEoTwpTQRYDUi/gEFrfD6EL1Wc6F746W6UosvcW+wv1HxF90wbqWtoH+KpFZnT0Q6146folETKj+1WFgzq8dd+UzxNe5bPnOs5p1EPO0pywySXtc1B2efmXkifUFyq//yHXs0DAYJASxwYhTtbjJGJF4tRxADB7yOa2+o3AiX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789015834; c=relaxed/simple;
	bh=4N04mpd7gdF61tz1FkKk4DAez7Vm+uFd8gIKY3F/048=;
	h=To:Subject:From:Message-Id:Date; b=tgJdOarsDRLeXZhKsNAH+h+KL6+4Vo8nvOAAsN1VPWK4lXU1QXu3RUVhsmQFNOxdUBheaAZeq7r6m2KQRtf8nYjO5xCYKjZPV21/+UvI9zcjv3LC/3VUc2e7NQpxwrB6x2KvmM0aq8CGY+1ORx1w9BjKtt2ZqW5ySFiVUEn3/YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JN+c7sxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JN+c7sxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC982C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789015833;
	bh=4N04mpd7gdF61tz1FkKk4DAez7Vm+uFd8gIKY3F/048=;
	h=To:Subject:From:Date:From;
	b=JN+c7sxhOyc9m8y7HHPIvAgpUTRFm/p1VO7tQRkZSrp59XYPjVfTFz3TAl0q/YvHE
	 KI3NToEclfm9cB0RYkdjRz5s/FeLBpwGbFiKciBaKxQc2gfVMeAyTQBf6bn78u8blf
	 r+FH0396oW5EhoGqGtLEl82Vpg4B2YG3aSoBCFloZvXHTIV3asC1Lrm4E7bWKTdMrC
	 1/3SFngNu0DHHJBnlF28AqPoJTlUTYKzf5llpC/3/sRwqG+2shTnVbFJU0KHTmG0hU
	 bTK0WOdjGZdt7gEk/X0WQJRMc1MSc4OlcoML7TesfMar/os+3G4sNB/GFaCNM1fKZ9
	 uCWHQJtjS4HaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7195C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901583373.4129.2051292891266973495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a90b9f3f479ac7d93f7ca4afac5eedad10edd32b5c4b7ff598265786a575ed0
Date: Thu, 10 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789015833
