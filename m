Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEF82F56
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736694354; cv=none; b=sVmS0ckemzyPv3NUixU+7qZw1L5k1D3aZPzR3N0WlDUL1b0HgxA2FwvmjxhaFSWPnqdeMS8uLpt2fxUr5NUSsTmg7y4p/wtwwPRPDvzWxzGjpnFyoUj5AAmklf69pvmay7ulDExwR9JHZ5OHm7iSv0JJZCC498jhH1WfWGgzjtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736694354; c=relaxed/simple;
	bh=zcKDaSM2YA5L3tH4BjCsmHb3su9k9Zk3S3YP73QIAx8=;
	h=To:Subject:From:Message-Id:Date; b=RgTEJssJlPpp5TwI3swQZDl1Zqs2OG8RW+ZLzuz/had1U4UmJcItYduiR+MeDLIiBLH1djzalSBzp8Eq5+adZqPExkC8+maYTINaRw/nc4INhogUXMAYfq6sB+pEwwYVRJq2Co7eIgsM2R85x0IXfIMYEcsRpJ34VYPxEJU8EoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu1V//Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu1V//Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD78C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736694353;
	bh=zcKDaSM2YA5L3tH4BjCsmHb3su9k9Zk3S3YP73QIAx8=;
	h=To:Subject:From:Date:From;
	b=Pu1V//VtxVWKoABEnRNuajSvnanpG4Q2qumpPIbhradzh3gL/f1gZS+BYa9NBANtT
	 TglODxNnlIh7v1qE0KNNgaP6uYPBNBItm02JJdyVjlFnjKUzbjev0/OW0Ljkpewox/
	 EmKnAfi9vi9nmsT9IeSwFrYKASqd32WEi4AbaY0UYM2tJ7pQGGhoDLEPfAVG1q++v4
	 rU7AmIV4kOMuY4b+AM18fmzBBhcBTZzAWVuViPKpvPa8HItwTeKwzG7dx/db4qcQm9
	 2T43HSGq56lMmurThJ45l11ZuRbBQvreln82JRHp8GgwJPVXFZmEs7hnX8dLQlOYU5
	 ngSkexGGfkxpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C48EE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669435361.29663.11385094908275903550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c283f8c5f64ceffbe9c1e08b34f25728868dfa6bd79ce3591bbf4dcb6ce6ce
Date: Sun, 12 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736694353
