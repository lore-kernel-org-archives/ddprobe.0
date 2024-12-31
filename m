Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F84286A1
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735608954; cv=none; b=SpbPXk3KE4Tv3da8qASh7B302zBeV9C+Tzv2fqya/qXJgcQjGxiPzpEzdrdtL0rU3I9FRUEjbP5QVD9lIVaLBb5ytHbrFRAdaBMA1hKMpBmrmHgCNCesH03wYCsLBpE2I0UAbkb0h3vzJcYqLt67cLbR9rOtlXhw+SO+e3qV/pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735608954; c=relaxed/simple;
	bh=DjGfyb4cfi/VomU6FtV1hkTVvR5iNp8dNUyjAhzIzeI=;
	h=To:Subject:From:Message-Id:Date; b=niqGRsWlsjFuyZB6bbk1hWxvNNvRjsGHrzLkCVJIrMWHIcRPlY7VDSy9kgFgS28hcTnnvNyiwhKe4mCKd1mCuPkqeuER17QBzntYd8eAppgivUZn36iTsYvOijEZIoqWyp0IgDD1eAe0U/LzgcoyaOJk4v/gpNUsQMwjMCK1a04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqIcGC2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqIcGC2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC53C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735608953;
	bh=DjGfyb4cfi/VomU6FtV1hkTVvR5iNp8dNUyjAhzIzeI=;
	h=To:Subject:From:Date:From;
	b=XqIcGC2feOMM8A/j3QsXcOX2g/AuNLyBtWjzerrRTF+mpQXJ7izr2BLIzYPbmXqpe
	 PHKXgco4aDGm/jur3NcwYljV4C80ranHW0cfsv6hSEIt3CxMwXZKtT29R+GVExCLmX
	 ttZE7iD0qbe9z6o1xa01LE14rgP9hXrAVjmyh1DfYsQ7X6tu5zIn0TicAg9cXES4al
	 J1KXOvNcbAwoKHdJ5ygkbQkeEll3drVhWb814Fp/JTW9cDf1j0IB7EEY1L39+6KLWX
	 +FwG8mfMhFRD0hritUYZpwRPyXIY5fjQT0kFFFdktTXGa68LobDgfyrGlv8JelbBdY
	 VPIu64orc1aTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C919E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173560895360.5765.1893662457103931153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b3a7fade7bf800f6a34a694bd45749897649624313112016b57de786bbcfcd
Date: Tue, 31 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735608953
