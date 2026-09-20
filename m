Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5621B2E3FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789863034; cv=none; b=HQLaXyGz2Nw1nKmEW6gvAaCfFK5Lye18sr8+mRcoaYdgDXrhcB0O/r/fQT56N3HdbYUp4DKCRgN7gnyd7P7HpJ1y6/sx0coJPW3JJ858Lvdz3SeJKIJ9eERtBuVz5jT5SkSO7RvilQvCvnKHGCBen316gnag7atwmJSQMdAFI/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789863034; c=relaxed/simple;
	bh=RLo7W0Qdn3rOmQlW7gM0TjbDkfmN3gIgKstaD0FQjuA=;
	h=To:Subject:From:Message-Id:Date; b=WPSx+1mcss8fZCJZjkwcl0NTE8qivdDeBCOJz3v/ikLOAvbSzRsXpmBcxJUv1kv5+l0N46g7T6jTopGi8MF2eWwE4jwQkfoaXvzD5dmpWhwgbCrzV2c2lY+uS+5a7IRvs+4p2QmrbMjaQKVxMo2OdxaVQULTyCLlRQczM/GAqIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4D4KCS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4D4KCS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEB6C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789863033;
	bh=RLo7W0Qdn3rOmQlW7gM0TjbDkfmN3gIgKstaD0FQjuA=;
	h=To:Subject:From:Date:From;
	b=I4D4KCS0Pqf/+uDHlWLY/4MHvxGn72PdDW6k+7hAVN4ifWPzvv8bjb4iSRL+JBTzU
	 aB4dejGfedX1rq+cT4HElnonKurxbHj9zjJ51wTZXqqsjaAvttHAqlr4OWJFjRe0eF
	 R5rkruEfYReI/kz6gaRMMTC1D9oYfcO91buoKDmweRssrRvw9AMmoJ2auGIcDmZ9bU
	 gxFY38rJNFqAHSLm+sQN+EimEUfyiCkkp8dr5m2njOpouSv5GZ2mhwtwb3tQxdTMpI
	 uIqVEfESJSgrMMJD7M6WoLVfIuGEEQ2HwgTPM26q87GVVNymmvwA+fe6K9mBhA5Ukc
	 sO1OS/mQKH64w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6C5C982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986303368.11507.12294619515372486157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8517366afff84b4a6579b046fa24b181f9faa186575d5242e57631407c8eb623
Date: Sun, 20 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789863033
