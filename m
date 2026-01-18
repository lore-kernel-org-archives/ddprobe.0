Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA2923AB90
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768736634; cv=none; b=JdaVqEOoUuxlNb65EZ8rZwZzlytAPMder4Egd5um3sTC/yHwy/9flZ9Bwiwz4L2XPHqZY3YUBc+PdwFZ7sXiVkHtYOzujnp4PUDXzCiWRKminBSJNXR5MiwyzmXJfPZ82xdijCRZ47uOHhhOUh0f/+N0YrLX/Gh+tvM8nOkuGe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768736634; c=relaxed/simple;
	bh=9On2PIIKQEtbghQ9LfTlbp6bNqMGmv/wAAH5loyRIAs=;
	h=To:Subject:From:Message-Id:Date; b=kcoJYgFsAQ1iF0E+j0bAvH8MCTtZGlYOOfzXYhwX0ogvWDd3lTPj0lw1cRDNoCTQ3KqXxEIgNkaJeSJirV5wu9vcbzt5Q+Kuwb01ZgqinR0uaZumpjMNRgUuNiWRskx45g/35V8EnDXwPm+38wq8Rp/NlnUqf+8cJQva12zV+O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pURI6C8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pURI6C8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768736633;
	bh=9On2PIIKQEtbghQ9LfTlbp6bNqMGmv/wAAH5loyRIAs=;
	h=To:Subject:From:Date:From;
	b=pURI6C8mpu0KAPMb4tWr2zqP6UqNw/XRtdCYXaasaQOSprYpDhdp3dhkAe7hXioLD
	 nz1+VgDyKL7zkNiKdQYGeZ0SxMpsH3ntKwjCCvGN2JOnmmK8cC1oG3gbbf6v0y9itI
	 JrU8oyBWmj1bOTG4N+nDx6CmgJiQ2sirsKJWnvDRiUGxOKo2HuZFS+5Cs8EhI2JOpV
	 5SofGJKD/nOIFGGxoA96mxbF+OKeeSnTYpxRZeB/0Iu+3DWXOMyD9sZC316oHii8gY
	 D57WyNPltbs+8uJhOAd7CNJiPFLXCh2i4N1DLqZLw7DX2rd0ZkvrGDdq2N38ykbuQG
	 t5s/58bjix6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B6C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873663357.4174.6821893071041289689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b035dba8dcfe66c6973f9eab59ee06e6ec62f3548f1377422efb9f10a06e99
Date: Sun, 18 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768736633
