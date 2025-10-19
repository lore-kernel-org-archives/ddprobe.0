Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FB963B9
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760836194; cv=none; b=A6slXOHBZDnw2gCKEHJytV8qneeDh8v2dLDNG+bJah1gMvj7IZ0fmnqpz86Pa1QKZgnaUrPDH0MugOQyr2uUJAIBXFnjdF01Cqu0gqrAY6PeR6DrCzmzTBItyXelje0c1y+bxfR62o7kkFY6yQy59XA+JjCu++LZQyHDkk6EAtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760836194; c=relaxed/simple;
	bh=JDAKTQ4S1wGWnuxYnXHU+y7Qid0gBm8ViTAm3wF0rj0=;
	h=To:Subject:From:Message-Id:Date; b=jJonNT0QQfDjSBuSF8XmcNged9a5fH4QDmWBwf4oamtC6iodAbLZ/GxGYdJRC8VHVX7w+DxZ363DX6uzFwJSC/QNgf7vbjxTHIoy8mcTQ4csAbvHO00GjJ+V/KELoemKQLeBfFGsx9+UKS6n2tahMONAMyCXQnhmRi6cjG2QRSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smCW7/MH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smCW7/MH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3028C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760836193;
	bh=JDAKTQ4S1wGWnuxYnXHU+y7Qid0gBm8ViTAm3wF0rj0=;
	h=To:Subject:From:Date:From;
	b=smCW7/MH9ecU18EePb/BM6mQoy03ZzTJqsozwojZt0bVec2gUKT4CUv24iGOC6R7k
	 a0hC9FF1YVjzXy3NW4+PJf40i8fcF/eSFca0OIeIvZs1EBx6y4pjWJC94DBAmiICi7
	 e/b95U4eZfUChSLy3L2Hf4JxhLvz2TQ8c07HpyA0Y4zOXEIq8tDg3jpWmLUNJg2yL2
	 l9bd3JRQ33ArGQnVaqZRQaYO+MLTGASIMKn529rBqo26d3A4i6ymjG7fP/xnTwENAi
	 vuuPVEBcCkS2wV47BcUeCZzScTlDD9Nt2+qWCMonCwG4TuS7iHI3A6rQpZ/B19cIZW
	 +tJED0PegNXIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9072ECCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083619358.5372.7319804392745558800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd1b5c7f3f6a1a782661d95c39c0d9ca692e86d6288f51fb92cdfbaa29ea269
Date: Sun, 19 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760836193
