Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104CC1AC44D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774137294; cv=none; b=Ym+0ctmBJZwCUcvOqz6DyEpQpvi0+UsSlvqSlPa/OqUCMboqCOzTktkjlCv58R/4gR/0zpUenpjlDmN0BUgKRri6Ev0Dp6QafGmJxLhk7qASvNXj4fAcND4oDVWgrAnnkbh67IauyCqsezI62rrzjRnLR1c8PuhlNYPd2sNCgg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774137294; c=relaxed/simple;
	bh=+bllr5PMdt/CcAQg+k/uK7FUq3xoeDd70EsXccBbUkw=;
	h=To:Subject:From:Message-Id:Date; b=r4VAWUhg3vNrj7z8ypJtIhJBx1dFQ3ACaC+sNDschkv/yOT14uc9TQzQI2NNZV5RRBLsMfoxK6VJFB3fYTVrxona7Odu30vhoze3tpsskWghwZtQEBn11htQzl1tZKx27TP9UbZ+QcE7YI8BF3cfHekJAcvqH9vc1pN5IS03B/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwmOSgE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwmOSgE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8F5C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774137293;
	bh=+bllr5PMdt/CcAQg+k/uK7FUq3xoeDd70EsXccBbUkw=;
	h=To:Subject:From:Date:From;
	b=YwmOSgE5qFyBA1dVBgLNGJca4b5WLeneZjAoMgXktsiUC3ymnPWi9GXkd59SGqS3C
	 iJZCMLl0srNZJ6/zGJKRtog0nNbX5o6tNpaNAMOMpXt26ey3yO7qKTMUD7BtmR/3k5
	 9FhhJbkc6H9W06vJc7DFykHqZdeafmYg4Z4rIdpEfvwIpmf8klMCZygYKv4uoIf0y0
	 uQA0ZVW7agSxkYJwVP7Emrha81eoO3WUdQ2d5aza5mrOExAPz11ipQQjyZAPrSSpbh
	 nVRu0Qxhj7Q1j+BnSwY8EAFd/MOPUWyIYWaUAAI6ddmZUI4KCrTea7pwU2KdVLEbhr
	 71rq0jgk9xP7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F181094481
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413729357.9342.9249894623745246694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2424cbb1c6c806b7bab2928defd40095a9e92218a2a66fa3882333536f030d3
Date: Sat, 21 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774137293
