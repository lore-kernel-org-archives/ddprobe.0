Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A3030C144
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782275194; cv=none; b=jgRN83LJUoqCx4uPyBQgJ3W+L+KXH2YmrEZ8WMaeFE0H7uSfsPeRQmr/wwlXNJu0J8vlOuR8bAkRwPRNmUDmc8VQ0sziUOZ6r52MITaQmb8F/tQPEFuTitsKxTUw25cKCW4s8qeM+PDXIx7X6TNFwIgQe44LGGHlW5SDVJi31a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782275194; c=relaxed/simple;
	bh=HgG5SdF4x1APDXAqJy/jnJ3YuW123iovM5j+R8QdWHM=;
	h=To:Subject:From:Message-Id:Date; b=of2tKUJykhNVb9IUHcbBPgiqhbNldUHGoDQv2OwdjDkfnMUw3BF/bEg3IdJWAdGsEYQIx6Pd+6WGzCa3Le/VNU3Gk20rHN95fYw5n4+euJ3w2dUlefJhdHKmHkcza2gb0AjObtB1ME2n37KHWzG4i4Lt3Q872GX9C6aYjkk1uJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFA7q/BL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFA7q/BL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50D8C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782275193;
	bh=HgG5SdF4x1APDXAqJy/jnJ3YuW123iovM5j+R8QdWHM=;
	h=To:Subject:From:Date:From;
	b=kFA7q/BLF1TBzQubNUSn9Z9biT0ZRjiUkrbiO3WX3Y7kFHvXg5DgU2VSPx/rMqtMM
	 F5ffyPxYK1RVxOE8o5GM5nKD8cSAn3a7wovdgbFDpi8axGE7Wdte6uNB3az0LIlYff
	 TAN0P/NuoVB+louH9Qsf8NGQqAC3Xp9mybV0h9W2+fShLC/pCwjaPNtgapiNeg7MTF
	 atBuQNTgeuv1T0Mw/jtrJFE+MeGWnjcyzbuTAmG+bBXCw8mDabKPZ2ylc910ut9u2k
	 /BfD+xMgW1p/ya5eyOHc2nJnRdQkxuHAMhwDMeK8F7ch/wQGKXWPBrWmqd5dnBTa6c
	 NtNyehjn6SHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D62CDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227519374.24098.9954769782030725123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aafec7581f475e8a0d572efe6b7ed1e4bf5800f387730ee01a41c1ebb715fa0
Date: Wed, 24 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782275193
