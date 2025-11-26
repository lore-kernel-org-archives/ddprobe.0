Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A73218FDBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764121974; cv=none; b=P2zFaGb8GWb+Q1pRckdTHmmrDMN/dbvLmpg9pQ/y6Cc+gK7AUXx+22v0X+iTKF/P1loPJAV9CyUnGZGSa5fyj6Lnim5tOFSTmLVOgL7Iqq7jTCjFO76ISgW/uMgKyBdUPyQXL99boHXtwjXjLU52FPrOsjgy/qqzj7LwaONl6to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764121974; c=relaxed/simple;
	bh=xkvsVzNQNUWlsRS3u8NnFj6vvfwymaGi5yoD6PzhhgM=;
	h=To:Subject:From:Message-Id:Date; b=T0yXOmihycDsLZZ0qT9U1uhF64Ztl+IShOCXjJoDzst9K6tjP8Nf4+0Drn9F9u1igYVFwEw9pZman1/24lFs2hxQ4zcF8CG5RiW5UZx6YMEMt4VYc6sjwRlb3Sg34CVokzPfkxE07k5ZHNlaFsXh3qmmpW2Se3dsqWdUKNq4iBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0u9XVmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0u9XVmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AD4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764121973;
	bh=xkvsVzNQNUWlsRS3u8NnFj6vvfwymaGi5yoD6PzhhgM=;
	h=To:Subject:From:Date:From;
	b=D0u9XVmqwCHK2+a96rbt2/kNzD5uwslbu+YR1PXCUfQ20rSKr7luhJ3JdGzTPcTgT
	 La3nyIc6h7L4LfzS7mZXIhWK1DduPShFot6plgWD/Nb7Fb9mRVT1NB3hH1Ix1Q6F12
	 oghMhb5KyrieQd1U7gVLrR4tcAeMg00qgAJa2IXpl9lzNrO3M2ukLC/pbdeXJ5YQXn
	 z1sbSuTfsdpCL2+yPP8J75mTppxTijD5kHLZ5bWewG6UT+02eQh8oJkS87m32nBl4i
	 /JiPKeOahevOhFFzQQ+ChhSmsJE1bOQSRrqwTTEijDIkradJVj768/jDY3BgmETCo3
	 8w6qcSkNoYPfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9285DD1036F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412197359.32207.13413947521808550095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f383fe46630833a2f69f19746349dfc03aeace4a6c03f43819be1641bdb2ce3a
Date: Wed, 26 Nov 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764121973
