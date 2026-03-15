Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0599533A708
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773606294; cv=none; b=MnGJyKZGVmXwVO9BKVqB7EE3hj0ZKsv3/xcktLK0EoXxBdbhMY39Jy+y1l/xz9BufMt55zg+oGwoXLzJAXB2wEx+4EVOvR+izuNrMFIZ9RMq5AKPcaJ9vfwbnvZZOHDA1O9gEWflMphkV77l1LVw7cFjsqa0Y/wa1oC0PX2AgqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773606294; c=relaxed/simple;
	bh=Dmgujlsma4Rff6SLvDdTZm5R6XWdqTMIAwwWWTKYrdU=;
	h=To:Subject:From:Message-Id:Date; b=RSIFt38e+Osrte4B/r1+pzyPzDz5aT7p9MuME1vlfcowpYA1gwjCwDTim9R62nSZZO5hYhE7/vHfrVbL17Fb3tP4hRKgANFG98Iz+n+bijPfmPB7fApuhycJjWVa88FYiF13mxpIyOjyQL+W9qnzOvbmgLzOuF0JegHhnkhBmTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBYhbaUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBYhbaUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6441C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773606293;
	bh=Dmgujlsma4Rff6SLvDdTZm5R6XWdqTMIAwwWWTKYrdU=;
	h=To:Subject:From:Date:From;
	b=VBYhbaUQc7ln4LGtY1vDriLWhR/H/CVhPAX/VAcvMLI42sntE+HsENOVfQPMqhWSp
	 vGmro6W1rkuoNkc0Q51LmCseEcRxArN/H/VzycRWWWtjRxMdNd4fF7qoZZrR3b5TVF
	 KzBa3MRijkazD2LCVzPDvee5wHmTxLt+skiOghzIZlS5KDMFcN8C9pwQMLb/79PQrN
	 BP8Q8GJynM3fGAdskcG79YKRcL+/FJDFSZEiAK8HVNpk9blf7fer5Z52vQzEvTozJl
	 bYmOJwrGHBfniks5CcarBzGWTlXVt9gdE0rdHokxGl/ePut5F0qehXF4UR8p+zzYUI
	 fTtKonGUIkpHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934D9F3026E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360629358.5795.11872905340155678563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59cf673f00d0b4d9e1fe5426e8a377892ab9de3b883a17090b406ab0418c2fb
Date: Sun, 15 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773606293
