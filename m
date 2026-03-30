Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9D6824A3
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774899294; cv=none; b=HAno9ln873/l1Y98LzVtJh5C08XdG9X9HUtsLtKYfZUiwJ5CWrtxRImwsSFiBHRSVTpohBNK/XA5EsrqCJ9/csG7d97d+ZLJ9wKj4/sgK7oWDZEh+V6alSjpvBWSxZeDcuqxwlOiq7T/zRr5vPSO0xpTPx5zG/zDeimg68+sq1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774899294; c=relaxed/simple;
	bh=kwD4Mz85rr31KxdVkXPQWQPPlNPmk5YZTMLYuhta7OI=;
	h=To:Subject:From:Message-Id:Date; b=WY1Id6u8S1IwTR93SIlvJA/KtXusT8Jn0erx7NMPJf0FaBj7epHYs28Nntrxg99kZSQWe6ZKSqwJgtIFQtjGryJ+MQsG71EoEsKnIDk7ZQ2MRWoVrlv4m10VLnLMl5SU5Jp0z3E7ioKWMIQoYHFUWAvEua1Fhfibs22X6rM/LyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQqNE1EK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQqNE1EK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774899293;
	bh=kwD4Mz85rr31KxdVkXPQWQPPlNPmk5YZTMLYuhta7OI=;
	h=To:Subject:From:Date:From;
	b=YQqNE1EKrg9VyAom22LVVNV6UaFMf3/qBZpwZ1aSM+ac3C22Dezb6gfLLk63auCVY
	 xRphnKbknwAgFG4DDi8+yA4n40YNSxMVZjEqy9cpLvQ28A0R9QCdWJ875EHcWm+vug
	 us9sBN//XqQ9t9ATzvsMt2s8fCNJD1GEUtMICzPvZBQEh87AmiJSWPrakcFTCaAcp9
	 wkqdkn30gxiWwnIFlzLH0IGkgrZTcgqL0U5VE/VfyqBQ1VR17sVhH4pm6o7mRjmIMn
	 UTWBEpFa/ZuKfYigMBWceqfyEEtRmTnti4VqJkow9UOpy3CB5iU8nU0IiTFWz8a+cM
	 Deo4DOHf0XB3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955431061B1C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489929358.25004.5510827607076504503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e88dc9117d4cd3f8936e44e491f9193d3224d1b7a3a91714c8cc3140cf2008
Date: Mon, 30 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774899293
