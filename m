Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255111EDA3E
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742914794; cv=none; b=o/C56iCpOTH3frlgVTFYZ7FeaU7OvAeWaYBUiBl0ARZ5s+UsLxATAaU/Do7NOpOldqwrT6oG1jvitoOyWEZBxMjpHBWrwETLI6aRpc71oYdrEExv+EmOndcXMd1pcpC0ls61f3HKGvj/DAl/l6eneLUc43ZW88orwrfpgJpiaRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742914794; c=relaxed/simple;
	bh=xuhteGV7TefvmoAFncdaLM1N1mDFK1n8tudhwTRkZG4=;
	h=To:Subject:From:Message-Id:Date; b=Szcg6wXhZSyx00u1gtUyK+yhbwACMI6Ul2Dw/U1Jt2DFGbr+EbmCDEJmdnWKLWbWb8RcHuG0AU4S9pO6iDQ/adI2BrnVNlwy1tyNabjEYfdLpaiOP24xmKiYY00WV7igy/cQnK+udappOQBSprbq5S9B8fT1thIhjDzKiUUPxo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IV4yWBLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IV4yWBLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D61C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742914793;
	bh=xuhteGV7TefvmoAFncdaLM1N1mDFK1n8tudhwTRkZG4=;
	h=To:Subject:From:Date:From;
	b=IV4yWBLIUE+aq81fXxApfByNjxi8o86OXhuF6EmfHdKjjk9y6KrgXZijQCLg+s0kZ
	 aUaomKij0BJeaX6st/0SdQcqLeZy6M77RPakw2jnFg9sRqp+pYzydmBOMHS7LKJEwz
	 UNloM8eofH230Bh44iqq+5ijPidvnIf+XyC1hhEMcG4eN/ii17rCz/U2J+mpuI2qfU
	 7m6cTb5UYFB92P21dp4E5O0cbcJUWJ9p7HZv8niykMxSjAwIWDVQm5keHbkL0YXkpz
	 p15I0g8ypCrEokLEaqpCSVuaTezdvPKJJz6SsQ+wRy0oDvBGZhdfSodmMmNb6++pEn
	 e8oce2c7AA1hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94255C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291479359.28657.14300201495849186364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b9c8d4d77afd5ed740497467d6b845b27cf4fbca7f149dad924a54f1d83db7
Date: Tue, 25 Mar 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742914793
