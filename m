Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384A825179A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748902194; cv=none; b=Knr5PGG8Lm1Jyh7HWBknUxDRwQac6fK10cUqtszvsEvAywI5R209ksHSFwUN4KWlnDSQ/VozldsXPTLpaW41XFgKKjm/2QcF186ayaE9dCIr3gRErTa0QdDwBQl41ltPrRZ+pM1X2QXLC3Z5zWj0GZ68nfbPsvSNqYzZfeaNbcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748902194; c=relaxed/simple;
	bh=lfxAJu1oyd3ZamSLpt91wF/CSXZPjB8lMwi2ibDZ5eA=;
	h=To:Subject:From:Message-Id:Date; b=pL9dlUXSYV+LDUSzscWl6ZWq/b5uYdJBldmJWc8ZtYLDXn9iyXUiAEXZkIWMzd6woDqrUJutil4DONDpaL67TdMP6HHiy7pgkSYHpQZA6+keI3r9JUurDbn1ggUTxaIUqI0ejhmVlGRW0e6zvG057qzgFk32uPB6RoAKfV6x6jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GciRlXuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GciRlXuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F6C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748902193;
	bh=lfxAJu1oyd3ZamSLpt91wF/CSXZPjB8lMwi2ibDZ5eA=;
	h=To:Subject:From:Date:From;
	b=GciRlXuMrJ88d6m2ObX9yXI+eClvRrvv2iUETHS8GokXumdyBAJUkMOWNp/NwwsaL
	 /g79frUz4a0/cZ1MhnZpqPERfmpm6IZWgPIRgq4A+CD3PvArp0lT07yPgIyrLbtie0
	 ZNVDzF2HRqAWv2i6VNS7ub66G6rMR766Or1dOPPKEDS6QLCgg4W72tZdjY++wuI/zE
	 H7Gy7JixEh72nWFnBeWYiRCCg/LedDghlnziSyae/eYXljKgkB5BndwJofKP/y72Uu
	 RKf9oxLcbIdO7Iphk8KRAs+uID9lL6JSEnbpWlu6OgtbQ0oI+S21Gjryy8wfuf9aAb
	 R9hLBTdWr9Oyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F535C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890219357.23009.3442540849124304953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92f1ff9f82ce293e91f98ef1e8dca91eeea4e9f99a091787e2bea5b414a5517
Date: Mon, 02 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748902193
