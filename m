Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433B0148FE3
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 10:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715594543; cv=none; b=jkavabGUrsMQBXYBXsJ1odsDmDvlWb6LDRm8ik2b924VoRypoZL6KLm2pavxrs/PLm2Yv35xV0ecBW670JofgDstaXQ3ohpKXe1o6oCqANGOgq2OO33ohB62Ky2Ir74UAuJ6OxLfZK+YoqcTAOMQmt7r3jd0eO84qLxqAMbP81k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715594543; c=relaxed/simple;
	bh=E8RC1imq4QY4WSX3x6fNqyqlr2JlwajCcaKRg2rWtjY=;
	h=To:Subject:From:Message-Id:Date; b=YH4WInybBPHhJJ/Og3oOv0H12K+F8NWxnFsKXqfjExQVtvnq8WDiYTD+LPwh/GvnQngJv6pZet68Gkb1n5cFMlIIUYZksimPIQHrmyoWs45UlP2UpeOnDPbMA8JLEpHVZHNJzn08IhpOSIB0fbfqDB6R/N2SyqHstaEa45Pn80E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9vmHf8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9vmHf8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C12C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715594542;
	bh=E8RC1imq4QY4WSX3x6fNqyqlr2JlwajCcaKRg2rWtjY=;
	h=To:Subject:From:Date:From;
	b=n9vmHf8G6ppdnxL264cqTm31okv3RVXc5HuxaCGAXgD/oV5C+rP5BuQ4rLQbFY5FN
	 jtKw5GyEgKP6nOwAFplXvlvGiU6d6h9vQyY4ZYLDympDeNeM5KplZG2xyxm/rY/h1D
	 b+KY9zVVj6dQFQU3EyIg0Zt/SxzQII7dEAxzXyBlM98waux1pkib7UJ34XLoJHXQpJ
	 o4u03qsxNuVtEbsXdax7jpebN0Ac8lQQDg8TdEcnzqdmhYp60PV73YFZi8sc/WUlXt
	 xx1dYvtMO5hwJcBIPjnwx3QfX72FpRaS8Spl9wrYu3r9F32EpLFw077ZXKVI6qLkQE
	 z8Y2+f1wmUOgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23C0C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171559454277.31888.17176716193905936804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a9b4a5d740c5688abc4f7b95ce133d0cf9f86b5884295fb5c01f84a9b1dbd8
Date: Mon, 13 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715594542
