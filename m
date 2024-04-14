Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572C31E87F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 13:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713100163; cv=none; b=Vz5r7Fw87K9h/KaegFvb6M4/btTQpudDypg6++AZTBHDWjnn2Xtsqk3KFhjpfABzBJ4eZ/WpbZvsQJZcQY9sJGijTiINYLkqb/p9938TePVpJ5NEHhCG7kp3e905bchrx51d4o8aiuezQwBAa1sPDgMzPtmZ7BtLXcvEPEeZa+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713100163; c=relaxed/simple;
	bh=qu0YEHdFsH9L+fSwYkb1U9Hi060OORtYNP3mB+TSfIM=;
	h=To:Subject:From:Message-Id:Date; b=nwvkoL4vLQXPPv921T0cBbhH6FeNT8njEzU1wZaWZtjagSeL7i6RRev3q02tWBH4fl+E5F2ANMRmxrd/nYjaoAMTuAtwUL4UhLEvm03LXf9XTzPoGYZN5DstDrzFDlaARCDf9lnyjced9jDWZZVA5kTTSh555pjU6rQoxd/ojnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfTOCJAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfTOCJAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0BEC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 13:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713100162;
	bh=qu0YEHdFsH9L+fSwYkb1U9Hi060OORtYNP3mB+TSfIM=;
	h=To:Subject:From:Date:From;
	b=cfTOCJAHyvjTTpcLIAbL25PTwA4BF8vi7pPPedBi2EMGDrcGGU/4veIoUxt8JEB3C
	 ssHkyyOgcyaVyTi3xoA/FbQ8HBkl2JWbtO1ySG7J0B9fci/FubgyKbqh8f/odbZKmc
	 iYiYnj7Q2K64XQ/pXvFawBtHAAQve0w+Tx1NQhdr5m3HFVvMky3tIljKQak+OfHJV1
	 XomH+Ju7pGbpaoonbE/kOc1sEL+5FV48sgHW5uuyL/sgmqZKe+t76KLMjVyO07/tmv
	 MRsnSRVG0bdwFm66pEzlvsKjhSHz03GmCoE7A5ySPq77+3otsyTGu4h80qDX0n45q+
	 9xEkBO9ZVvQHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDFDC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 13:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310016276.496.9820521690951234285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee272973401ae6dd8b405efd9d83041627d812b9eaea2ac124165d802b33b48f
Date: Sun, 14 Apr 2024 13:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713100162
