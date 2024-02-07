Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D517CF07
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707317297; cv=none; b=LcfPcMdPNzszyY/qB43jOq2pq0uMJccUtE8QTud7fBa44reJaokrvIqV6nxbNS1iImLcgmmx1mbryf+fZJWK7TDXETT0ikASErkfU80d/RGe/65lLL85aom9UmcxfUJuuEbRqo4j2tfLgy12S8wYrGYQbLGI7ye663dwEiP92u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707317297; c=relaxed/simple;
	bh=WYg9zJop6bDAhu4pcXrO+DX+x2/UGKmdC+/MIT+fdO0=;
	h=To:Subject:From:Message-Id:Date; b=qmL78nfUCaRvWZJvRcJtWukadGZYVlTw6LoGPQYMLb6fFQ0hr4ZShBzYrrCFRJiHSnn8y0fU6slboQatf5tNGTUIvfjVgc5EY5Y6zHPo9gIyC8SprYRvMfMuKtttQmRSSKxCy8OdHe9H39MC7qw7N1sYQQC3CPf0J248yOhzOgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLA9JuP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLA9JuP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75077C433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707317296;
	bh=WYg9zJop6bDAhu4pcXrO+DX+x2/UGKmdC+/MIT+fdO0=;
	h=To:Subject:From:Date:From;
	b=DLA9JuP04KZTOwizTRwvt43jQ3dp8uJUgVzQ/wqqoVSZM/DcEGcEWUXICsNY3YYyw
	 meDGZCLSuCVyN2rwLvPQFKlbtTK/GLL70ACCXqsjIN2pHMzHX/8yfDJtkCgxj9DEyE
	 UNhPktkIWnQvlcCOZrezUp+8yexv60UIyUoG+1x+BHB1z4t7XqBFAq/jOfMkDBhSF8
	 pcvrpNPb0wn5FsvOjnrcnUlr3NXr0nnp4yniHzuIFEzdVWQZIplwA5ikb7Pdt6CIV8
	 fQaHwub+9HzTZ1pfKhmRjsF3/DhOVhkpsLl/iqUeQpuYBDn5lVkYz8BHchyGMfxBVQ
	 p/lqWifyzU4hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE96C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170731729637.3988.9204188103999849391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfddc07ca9883489170f37394633989a31cba430e0813f0beac68510e030b59e
Date: Wed, 07 Feb 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707317296
