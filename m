Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C451DFDA5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747189794; cv=none; b=jQb+EcNQFUYFQBOUPeVFvCTOtHbhwMqL0C/juyZWFV7XGicJG+A8OO4kcIn+daVcd0bgmk9FkzqQPfPpbR5e31HOmeOqNM4hVc5zCwIDmI8YkLXOZl3JR7ffj1N1TjWwQ0EtT0OOyWglhzS4D4+x0GGqGW+p+ZXvlxd6LBux51I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747189794; c=relaxed/simple;
	bh=YRPT303cZ86D6VLdYm9w+XptGVPcHQuxZwtlMj77Ik8=;
	h=To:Subject:From:Message-Id:Date; b=ZPeBVlffv4W9rI046LmxCLg/p1Kn5ms1AtDjwqA8lP5nvZ1o6k2BasWuFZqmeqtJDxtr7C5r+CgNsCJ6c2JPj7VbyCqUWeXL8n86jqeO3dqSRK777D8fr3zn/RCZiAWPGyA8WUj8tpkuvc9+//irEe/n5DQu7lujfExWzym5sTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4cVASsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4cVASsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A490BC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747189793;
	bh=YRPT303cZ86D6VLdYm9w+XptGVPcHQuxZwtlMj77Ik8=;
	h=To:Subject:From:Date:From;
	b=X4cVASsDv4OBWPq+B0w42nLt32aosq/2RjrKx/lAUtQKi+7pZ9dSvXHfRZuFPZ5oT
	 Yd8gyiB2mcSKSrlCdAHgk7wLUKiBajDOP1TblSb70kMc+aeuu6fZWQpj7augQdlEI0
	 1xnuaCbFGfkYsinx5lgmiVy8uVBnZFXfMVEdHEo6qHB8qs/k/IUVxZQYZ9846G5NSm
	 JdbnImuyGudQVWkTY5sEtcbIO7/tbMlPDQ5lBFKDUIpGcBW3RG1ap7csJDsBxL4xD0
	 AeUIKfHhgwJP0bFRBGlNLVunlEBmikQ3ZdGg7isTGDj4a2mNnQeUBBhqPdk0c1OxW9
	 pDGqXWkkUGFsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96906C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718979358.30208.18163872854523567669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e99d7d64db4a0cf75461ff434f8b45ff88878ffed2aced0b1eadbee6d0c3f1
Date: Wed, 14 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747189793
