Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8BD2030A
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779733954; cv=none; b=PYE4xapcEo8uxsk5ZynS/TAH1NHBFk6Eg0dA9G7iUtnDGfxzCdnyDZMz3t0NQUq+txgU38hynH4aZQxovyEJ5v7uLq611L2ohQeDIdO3ajpbNtm/B6Xgtbms/+5ujhg8l5bJMnYtfO1WBLAsjpUotlRO2R0Hc0iw5SK1ObClDiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779733954; c=relaxed/simple;
	bh=TBLq/Re+yIEoaU40kb7fRz27QD/BYiKCJpaSEeT4JZE=;
	h=To:Subject:From:Message-Id:Date; b=DwF83hJJ+qN1GndbX3hyAkUyoNipOFyWP18Vou/RPv9/XD5TZuyyNtVy+V+/blL4mjXNswM+hdZRzLWuiqohs8NV4l71vPZ4yWV2B/MF9uBNgmYQnaV6pWc9UpHjmNtX2rh8iaenBj6Ihz95vu/MHLqNst1/RZB2tnJs5l795fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/laNzIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/laNzIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD36AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779733953;
	bh=TBLq/Re+yIEoaU40kb7fRz27QD/BYiKCJpaSEeT4JZE=;
	h=To:Subject:From:Date:From;
	b=N/laNzICoCs69jhUbo4ip7J+jX70LHNch3VY5yylL67GgGfL2xnXW26niNvvtzDv+
	 hcy8n7hH9l+bs3gNjjhox3a+dBZ+6aawGzDFX4Auus34XNMhDxS0IewL/ztBKBBqvO
	 +Ja8DRHmy7u5IqbLNFud33ljLen7R6pVmYTWgU4JBzispA2+82xohXjAtTn169ZWdo
	 ir0m6Kmc2Ct8deA3ZqIKEqbV5Nmv4akPb1Ch8b3FHrzMzPyOymYmFsbdINgX0trK/5
	 NX4WLick61/ZNJfKvcO2qUMyTKsJCzdx0Q9z1L1Edu8YV7AzQiH2S9XVWSBmNmksYr
	 ok9YKzFTtid1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE431CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973395370.2538.6037260036397137348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4dc4ba23287139f39feee1d2a7dca6a9741451bc159fe0789b06a0d519adbf
Date: Mon, 25 May 2026 18:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779733953
