Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5C92BE621
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758016794; cv=none; b=N8YU6hOEWr/8WWS+iinI2+yGM0qsj52/+JW6LIxRgM8TiawEA6zRVfI+JZLOZXywJapTi66nDDgfaaNSFJOXKKJGVscBp4QBpaRlRiVo6tFy7oqmQe3POLnZiPQ9Ak9augeJG9LG9g5Tq57sXpQzKXpIAnSfGtk9fLGZJgfiiO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758016794; c=relaxed/simple;
	bh=3V2/7wSSUmoJFAwupjvCdBNRNp1R+N1RDion6M1oa3c=;
	h=To:Subject:From:Message-Id:Date; b=LS5GOeravDZVxXuvq8gUZAo73Ae8Hd7qOOEDLHpzyi15vTTe0XaGaSU3lg3e63wK5BoWUucJAcCWzT02NvKBrIEcXDVy//ITU3dntDOu4Aw1ZHO28PwQf26vkWMImLfxY5nBYMvUviCVTn6628WueUQf8TrEvpEWtcWPMercEO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMk+bZDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMk+bZDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758016793;
	bh=3V2/7wSSUmoJFAwupjvCdBNRNp1R+N1RDion6M1oa3c=;
	h=To:Subject:From:Date:From;
	b=cMk+bZDIcVJuGtQxpMiu+uX8AxyavUFZi8YCUfAQAz5Ma/Ee2WhiJj6IL13BL6gNW
	 LMDrL7lznIWY4CS8W3aGvwOzUOAtNo+at6bOzBKOhRhOs3+lfhMPdc+bQl4KOff2HY
	 jEc3qoFtlVdONptjtI1g1ShGs2B7zlJ4ENU6YKATTMPAx/ttL4BJlesS4q89f9xD4i
	 K/balUt65GBNALT1NdnH7l3XaPEaNH67KqxlaKVFs0ndARq+oeXPemmJR4H1TwQ0Ow
	 J9GvNViC0CsgLABYEN3mLLVLAa9QKr+bIgqtX23kKQD5oRkDzqdv0Z4Z5M3UVVYc1t
	 lkRoxWHfGz0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B93CAC59A
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801679358.5492.11257653564069120713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf0b44dd848b8b2af4f7b790850ccb91535b3d5348dc444cd7f2756b9e6f896
Date: Tue, 16 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758016793
