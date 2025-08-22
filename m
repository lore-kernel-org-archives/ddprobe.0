Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D05393DD1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755902994; cv=none; b=eEtobK7ro4taO72UAtuR6QtlWNjWjaX1tvhXkPI+GV6S4Z8CRivHklijCTK+C4wTUWiWtQMdNInIiR6HeTlccYCgnQYmdSeZS650imzCAp42Qn16pHxAXtIdIi6g7L/TTV4E9bmAkqbQDvSCiMz7NPz54+5vbnnMey4XVf1lSsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755902994; c=relaxed/simple;
	bh=+bfrTq6nM/tYlvnLJb+idKf2EbSYKygC3fX3e+0ez54=;
	h=To:Subject:From:Message-Id:Date; b=Y3fyejsNNhJ7hLEu5TNCMOuKV0RFaDpKOVu9kNxuWxQqpWMkqUnv7rDGh1KUF3KoYmf8cM0lJ3IQOqqjSuEsS2KmnMFXqJ/5aude/Zl2EmI1DQ7yBgaGrskKQXlYJIXynORboWPzWhn4nNMRzoBoW4uz2vKoaZfqGclTX8tI9kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLtQF0AW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLtQF0AW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7284C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755902993;
	bh=+bfrTq6nM/tYlvnLJb+idKf2EbSYKygC3fX3e+0ez54=;
	h=To:Subject:From:Date:From;
	b=kLtQF0AW1fWhjoIBVn0SsXTnb8Ul3PJHIPjIqzQD5bXLeGRk0Omyu4EHKxNVivTJk
	 eMOywtJIGqVR1FoZ179AtxHZ4D3rPDWkCvq2UTJF/ByTwB6VsNxREuKKZtq3N7rcGE
	 iwJAvZTefKNZSQ7wDYpGUPGn4ae9CHPjSsNnwbwi2P0HCCSUsf1zHetb1FbkwvsP9N
	 jXeUDG8QqHmDathV1XVxV4Rx/nnErDezFeFka8o1i5X4q051olY3chXfQNcd4YjTls
	 pWe/QFgeBE0LbW6arH7OShWTtUk4MmT1Df3GyDNNfYvujHMMYzg9yW1jdU/IfrETJI
	 ZqrD8j1EMw5fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B4CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590299357.28242.5775666715936158076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323ee3d24212a0f8d144e4535853191487a35d2104cdb2433d10eea84d9426a1
Date: Fri, 22 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755902993
