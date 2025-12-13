Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287B821771C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765646574; cv=none; b=TfJj9xsm1vMo/4bNaBCFSSxYXpv1XYh/kbDPAKrZe4RjjZstTXjyUKlpUNyPZ7NujLA1KQRYvWsrYCOwJ3igx1dBT2aq+6ae+ohE4arzpGUd4T3gP9pkqhIgLtLawizPVUctE1/gG9SJMLqpiSFRymWu+GzLTOiZp30s4gPYjeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765646574; c=relaxed/simple;
	bh=GZ0H+oNIdsi2A4ZDeYdNZ+ai2aKR/OGqvxgvjGV4pas=;
	h=To:Subject:From:Message-Id:Date; b=CmS0AE+RSxZWzp29ciMl+1KkYFW7CClK5ifAlcmWZLbLBSwSF9paWNwlLnAAXUpRp/sFrGR1YyBFhYytsTZHH0QnGvtAKp/NfGVfxB9mtqaMS2jfydIygf3lo+6VoYuuFSKtG428Ptu7pxjbmy3sh1h3WHoifT3n5oBxZap4020=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwvMf/jy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwvMf/jy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73B4C113D0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765646573;
	bh=GZ0H+oNIdsi2A4ZDeYdNZ+ai2aKR/OGqvxgvjGV4pas=;
	h=To:Subject:From:Date:From;
	b=lwvMf/jynSZ0V6iLhPS4MRNDEHaBSgsLCe0Q3/k4XYgr5G20rg7Z51WYmjyLwYgJy
	 7bNMUsGOcKxmoQSj8jnYbwCQC1bQUKskRnpJd5AOS/rWowFUAAF0q/AdvIsB2Rd146
	 T+Ujyct1hdSbjJVxuoGwfqvmg68gMf3FII634yzWg3NnENg3HtU9F5XQwSDEJYINDK
	 A4DuZBSmcVxlqPCO3fMEl3L9x95XybPcwEuiSQUFpXuDy/COEwioIz3wz1LgD60mnd
	 Yvo/6FZhUsGCjJAW42w5z51Iq1YOwECBKj5BKSTjpZQdVsMD2v25gXOragBoH0mP4s
	 3l7ZB6PBdRSsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95746D5B15D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564657359.6479.14726678919301384126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3938c03bc3e173d14ba991be0b19c645e1b793d2cc45744bad012cf79c26c96e
Date: Sat, 13 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765646573
