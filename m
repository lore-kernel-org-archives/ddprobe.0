Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1A824BD1A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748335794; cv=none; b=aaRUiGBc8SSuZUM+rscZOEYBShmqqFLyOQFJ28Q53Ntg2ZodRLMDWRiwo7u2aaUZQc8gX1tIwyfc3GUP7YjAB424lPENaHumGN0AoqizObbqL+S6SpiLOsxrK15Y/4DyqIetwEHM6RwhcbJSIA/32pgythLNdMiyq2iLmUpEOGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748335794; c=relaxed/simple;
	bh=Z0EQ1N6fEsOcO5YzDWHnvlFefBwWAp/K1N/AsQufpOY=;
	h=To:Subject:From:Message-Id:Date; b=PzVsqm2b5nJFFrmF+zz5RW21Nl1/oJ53nq4YdXiakCxoOjw8Da8unvUUw/wV5zzXplAiHOCNgQmvzdUQKAgiKj3nmUNK/T9leBe4vw/m+TaoyAIB91Xoe5inTYEscmPaxt7Y1T9WIuNpfhv5nt1U3n/ZBAKjOkCnbfV3PlGtZRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBkmDG+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBkmDG+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F928C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748335793;
	bh=Z0EQ1N6fEsOcO5YzDWHnvlFefBwWAp/K1N/AsQufpOY=;
	h=To:Subject:From:Date:From;
	b=nBkmDG+mS/m6/Hkug1V0fElmkzWKWUhocwukZ4jzFqgfwehrJa2zF+DsUnSK050Jz
	 9j5cwI9/y5X16cHEVHWnYgE+b2eMr8ZXMSUDWx/oksgry+9Lh4PaXJwemZgNbyLkos
	 5kEN4IWfc82sCS+xIzjgmST3picMrLzTTd7MIvE8uDBMM/uSjNESdxjjBwSt+Pq48/
	 +tUtoDLybwTg077ds1Altohh0Vu7ii9pwJyyKMfNSq1ux6HwY/bkZ3vxY98B+BYmB5
	 n0zvxAQvGQbSKogXe9Xr01FXWNFQrqsdGer4o/znLAiy+SbES/RQkCcD3bFcC5jUQ3
	 v7+L8RGuB5pnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90055C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833579358.10037.11627711679176170621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2caf18c3bd3e075f33b7f5c4149beeb4c9a6f21a2368b763b6556282db0221
Date: Tue, 27 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748335793
