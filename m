Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D52B241690
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768343034; cv=none; b=sNWOeoBsZFUd3yX9TJNiQ4zGRqbFoo7P2qRVeBdGJjxt8JKRCAGrWeFqSCDeA5m44/P6ojd0HzXp1axZ2sSOZTSQeLd5Rm6nQW9eKe7YOo21joMcgRUK7NdFV87aTZv2MGCHe1dyGru7UfXD2Eyh7tGwtHsdZ/WRPMtHiMxVAQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768343034; c=relaxed/simple;
	bh=pO77aDedp64b4Uu4KDmZanhhF3Wm7+b1uzKVs0uv0+k=;
	h=To:Subject:From:Message-Id:Date; b=X+KN64/65QWcYmgjybyU5iyph6xIiwPZ1iWAtdE5zuIGx4LHu/+/GOpNbHfT2Xub/GRb6XCtFJPSlkdUK4FZg7OjDb/y1Eu+wupOtlTVn4goBpYZZhhGGMd9VuQJTLGZwUDk1P/bLjyGtCmRlJQXjO2zwXunjj8RLxUa7fGydZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmhldcJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmhldcJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46B8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768343033;
	bh=pO77aDedp64b4Uu4KDmZanhhF3Wm7+b1uzKVs0uv0+k=;
	h=To:Subject:From:Date:From;
	b=dmhldcJil4c8XjRGUYp00E0kbfDwA0g7kLsKjfb3Tn/LZ6W9mBu7W+fyh5uY2uWs3
	 3zaX69vkq9CkazKFyKBZIPUJ7hV0+Bxz1TbR/PcZnXaxgOgIHQTGFd6cu17bd6MS5L
	 TXq2fdx/J5yFGU5ktoA3jCy9OYppGwRv/l/P5zaOURmTSmsVGjejWlVqTUKuEQIYD7
	 9gVirZ134uFK/tNLcD1kER+hiiZIGnv8LqXIywFX30CeVfrLFhjRSHyUmM7OmdFs6l
	 3A3edk4AxztN3o9C7zouV3yM3yVgitQ7i/2dpXEptudslLh0g3fLzNNaIKRRDeK+hD
	 RD1vV1nqLghFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92318D30CDB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834303357.8816.17641831067891281012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0dfdd16aea444e48b0a8f7a69d3ba2311f2af0a857885b77137fe3e31f2a723
Date: Tue, 13 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768343033
