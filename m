Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A64931ED81
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780207474; cv=none; b=VsdNUsmBkN1UEhKCpKcYczRJ31jxMtaineccyg6njV7z9THn5+YiEDGQFLmOfpMqxY0vBr9Ys+pLI8xyqg0X8LS7BN9sGQOs4IZi/QR03r7xNeNdYV/N8jOCB0uSDuZ1RZ/wQMknw068bBnB0Xurrjh8d52dqn+/BdCp0zJwhqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780207474; c=relaxed/simple;
	bh=xJCptxp0ACjLvqLytUtnX5byjRcFFdaf64NRolF89+g=;
	h=To:Subject:From:Message-Id:Date; b=QCgk6IqPrMb1C7DHfqOTxIv+4OfO4wEj34kPRF/xRFy4AhCkcX/QKNx3gYQxW2ibZ6o2Ya4CgiI/CTDnrxZVY2wyHN4GJyqPoLjdbJzeanHMH0csbYYptk8coUyI6P55xtzAldsWZHcG2XIfCVlqu2FVS8y2gQ0pr0rsE+ku/jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJn6PH0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJn6PH0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6323C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780207473;
	bh=xJCptxp0ACjLvqLytUtnX5byjRcFFdaf64NRolF89+g=;
	h=To:Subject:From:Date:From;
	b=iJn6PH0NLBjnZEYbMWyEUQJqP8U3xygxUo31mkv/pJ4D5Ev9q5eS7LS2clDiIoCTX
	 HQMoqIQ65iIL4NNT0C6WT/X/x44YJywRmaQ7m4oxoQcZbqv0C85pmuS7q4ti4dpMOL
	 0NdbtI+9m82VSkNJwpv4fybWVS5tqgWkaXev7xQ8W0KKDmohCQhJs9riiTMjQULgVT
	 EKqG1r5I/BdJiGI4sGGYYcJLMKWaBxWjv1P0qiJot4pY6kTytslP24xiPTIfgD2tW/
	 9tmUln0g/cBJmu61rT6U3IPUABQgId9DTgngvj0IfBgFzjOGRh6qF7x6K1kdgSFrrL
	 dFC32foNjZuZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD319CD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020747367.7544.5828833640617889112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b513f86ba8d9551a85db22fdefdc958692e29c93acab925e15fe28c9a8a802
Date: Sun, 31 May 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780207473
