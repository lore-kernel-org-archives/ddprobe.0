Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369B4320F
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752317394; cv=none; b=GZSeJIo0q8uck3BdE4KW3gTLTChxJuJ9cQxZv3NAW7JiyMku8vXM+EbrbQqNPOG5P9WXBuk2/kf03aSaIwg48saWhfSQaLI27vp5hIGKQBvtasILmcjh2BRWIK++IlL65XtrP5zBIBMzcNo5HfNF2gdgBm0rGbInJAZKiCEs+KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752317394; c=relaxed/simple;
	bh=O5nIU7jlyi0UCHM9Mzhyi/c/Kf5oWLgquqd8wgzur2k=;
	h=To:Subject:From:Message-Id:Date; b=BliQze/ISkWgplyFQ37fqxjCOowHlp0jmKY8Ifwy65DI9pqQpncVjecVAjCCshNmShVAu2pV6COIBEsNGupGBv/s5WSsQMN09wBxmNnvdmdTOYlfDDFhuEyW9TMUkuuOtjzQLXwJY2spA+C9JnZpDCDdrSH4cGuptLbcbsRW2uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZoW0jQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZoW0jQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76A7C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752317393;
	bh=O5nIU7jlyi0UCHM9Mzhyi/c/Kf5oWLgquqd8wgzur2k=;
	h=To:Subject:From:Date:From;
	b=QZoW0jQAZV5c8c9wdm0wT34Ti6pIXcoMRfm+MBQ3q0k+57kkLnI9GW81M6k4LXFGF
	 JzRvpGqQFDkLDCNZgcttqGv6XY9Y6EsnvPiG7DaKWzGiKrUihwTBGAWnQF2l7iT5H6
	 qaFHidPYkuesBnxpIckZWKt7yrBBI4cpHdHGZVMQRaMDSWU8+MAqNZw5tiSuQ5OX6U
	 t7FJSOT7gFHh8pPS0SLpH/utbRR7QFoS7JOMqDFyz3V/ECXZUJ+WK7y1wWpmwNLBED
	 WYZz+mFElXTxTUhr0F9KKu0pZWTATAgLtglfeqareNcaId0ja12Yc1kVf0wNFf/cHA
	 F+VXMIz1djUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C29C83F20
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231739357.15391.910054877741457807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972c775b9564ac5e485536a87005b87f2f6c13d8bc81bc3e247f513e35677284
Date: Sat, 12 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752317393
