Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35639217F27
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785118234; cv=none; b=kLaxdkcFSNXDPeodJV3637B6HvO/oNl8O/O1nOf+wJ/0yPd3H91rSepIhz3P70IcupgExuUtskBGxbC+NRPSef/ihKFlIIF9HSm3xSGjh5/xEHUb+nP6qdkcBlLOJl4fzzKRjAeRSGS1kNVUuCApp8pWaQAttKJrIJ62va4gH8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785118234; c=relaxed/simple;
	bh=U2aEb3WrgF8m2hyF0St3g9DF/wdW75O0l7rUneEfH8Q=;
	h=To:Subject:From:Message-Id:Date; b=RUxhYUjTk0Lzxwfya+3dI9ohXEZkDOfu1mnER+DP6pXDjVqwW9Ep/+Hbc4CSLr2VaBaBSRAHwfkwkUwNX4izmQX7Lz5WDEevZLyGH120nMGe5s+yz4fssMuFRPF9spsqz8I9eT4DrucLh7cV6sH09XYL80xoIpeq0Ppbel/gtQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZE5RkbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZE5RkbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5BDC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785118233;
	bh=U2aEb3WrgF8m2hyF0St3g9DF/wdW75O0l7rUneEfH8Q=;
	h=To:Subject:From:Date:From;
	b=YZE5RkbNYwNj0BLOyMDNzNXq5YcnoM0rMpdCoSXWbk5ZCMvCGS2fr9GlYyJ+if3ql
	 /W9vS/3uKquBpCSgig5w/dN/Zyzy7mvDxFxeCN+j2J/WkXafDVnwoUP9qMphrUkO9v
	 +5UJRxb9a0sADI2b7wTtnE688KG+Y369woi2yX89+uIV+Gmhyw2Y7jbntAa2qe/rr0
	 FkBG3/79y4PEB1Vth50S21VEAV6dkInOmjX0SVJ/b/0o5D+YmKnDYU7C0tLvaNHpSl
	 udS1wnLS/l4/fmMYxp56XakcBFh6FmVL28ye+uJ4FdlgpTdNkQXuC7pZCbV1CvTmiY
	 JoKEAGl4mJAug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB69FC531C9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511823369.7887.16949470675731753937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0a0d5b02abc83ce7ba77b13c179bc54a1f944909d63c3eb278e90d91178ff9
Date: Mon, 27 Jul 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785118233
