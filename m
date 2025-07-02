Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B19714B950
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751418595; cv=none; b=mdfk2wlZlCDXaH/AhPSaXB5vGf+11BQkN2hrsURcz9DoTcbwl2/8bR4JmTl4OPKcn4cJBU3LZ8grtI7fgHugYwThar5jHO8umPZKmAMatLrZdImNziI9ur+4KLoUdCG9JQYBekJeqwR5oZOsvrsVhjX+zK6z6aQb81X/xBiXtNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751418595; c=relaxed/simple;
	bh=FK48kkYF1wtAjqQ5F3ssc7Ccaiq3k5v7usQd7PdBGDA=;
	h=To:Subject:From:Message-Id:Date; b=IYBE8Lz54Of4UPU9vh2SLG5GooNx0ICbLcP/8X65TTr7sSD5TKHZAwnZfKP38Er4i5hQCrcbtyLNK+hGMj/G+o7NsVzvfwdxFlO/nCGCx9ld2nnN0BDJTZ4Ccizzj97EnDx5U7MTyA5R8AtLIif2wCWdAa3IF0JKr2HfG6dPHHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ7tP0a/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ7tP0a/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751418593;
	bh=FK48kkYF1wtAjqQ5F3ssc7Ccaiq3k5v7usQd7PdBGDA=;
	h=To:Subject:From:Date:From;
	b=nJ7tP0a/XM3R3AUNhWxPos174hMp5WV0Kwn6lRfZKrw7Vsdur1Wn66mNF/7zt1AC+
	 OlegoAO/dn8rw74AyICEaqEi/dm6ErIQYcuRaPpiuDYwpeJmbrvENArbX/9Ly3c4eO
	 63Q8qr+nA0YwBxvO2XG2RrnRbft/JGFKZNhUyczeZiv4VK5mLQ24LnTbkMFVBPfKQa
	 3sU95Z5rswitdPSpxcxGFN8VDvOaPzbpOfgIwtnM7ATbzW2JrOMdd+rV3sRT7H2/tH
	 iEzT/z+p3b/Zo8zQI8t9+/ImRAP79Jk4Vp/ON94rXsEMVgsROAGstxKYASlmARbxTm
	 Cq1plLMXNuauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CD7C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141859358.26313.4329595225444445991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0a1d44766b1b67c39b332682cb9b1dc99912e8ae21675709adf79856d477f9
Date: Wed, 02 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751418593
