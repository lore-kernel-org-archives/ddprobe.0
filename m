Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA44344D9B
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788138634; cv=none; b=HLH6AaMDnTkX7q88cxgF+SFSwgysNAJaXABcTYSjI38D1+6EbIBE8MW9ZABQZ4hAJoenBl7nJM/KTWLVMAj37RdPOYeI/8CZ2hDE3pPbkCaRgr/NFoaWA9c7LinEMXrWD0et7vIcmHh+h4oYTWiT/PxWQak1qGU0nICEig1DOUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788138634; c=relaxed/simple;
	bh=NQLqLoAPQIdglEZ9EqAB5jszxobFzkEh8OT++hhGs+c=;
	h=To:Subject:From:Message-Id:Date; b=QgM2of4YZz3Xf3Prnm/UnIPF+v9cTHita/v7KmOHxtcBQgcex7+bhScj90Mkoihn34yczNpNt5ZJ/ddS6l0Ck9pnJxjTHTQ+6aM/eGbz6g5ban+gvfj3a0tBT3nAzqk+kFsIESQE/lqqNNkN+38gL3gdDLBJ3fXftlWklSKSkyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYbr6MF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYbr6MF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19C3C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788138633;
	bh=NQLqLoAPQIdglEZ9EqAB5jszxobFzkEh8OT++hhGs+c=;
	h=To:Subject:From:Date:From;
	b=KYbr6MF6zZ1I9J2jhtQkI3uO8iO0o8KpjBKTwXFoNJ7YUEmMrq4nrTJ1VKdV0HvL8
	 6N2BZcg5XlUvJZSp9TXa32EMn3c63vkr6ItRTX/u5rQbD8l7UMkHmuOQTsiDuCVJo9
	 /pypSys5NffEdrj9QhFLem5V/7FEcBQm+fyNDlq19w5ChR5dF2f1PGBmmamBhNhe+K
	 OE37GMEWo89+wpvBG4tCOVX3/OsLFu8PkFDjyDUy11AiiqvSfs9RCgSkZ+0MPtre3s
	 vFFgjEN6GnKNr397Pf4EkwSX24Y4XHqPemFIhqmiyzIOAHhx/2OkMnzvvevxC0Xi2D
	 kABBDrLSPa9wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE191C61DE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813863370.22526.14164235926969831767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a2fd43c01eb059a7b89051f5cc9442057ba274c691e985b62f572e770fa77f
Date: Mon, 31 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788138633
