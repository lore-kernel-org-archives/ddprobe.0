Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229702153D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761463794; cv=none; b=gU02A95I/qWt5jeMgyr7MLJdBEcIOFaUJZA33Xf9eJV7ZOY0LKNPnniEqsvnJc5MdJE284uBo0BJ9ziJ6E+t4dHW+lLUlBOF3OS+Yh/+qva6ZzEGGzwu2Hbah5g9+QC5Sw1eVOCVQtWCGAGE8f4/IB8Kxkz8Ukk4I0oPjZVYT1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761463794; c=relaxed/simple;
	bh=Us8xT73OhNQI8nNfjgx8ZNIaiFP5oyvDIKwjsEnAeuU=;
	h=To:Subject:From:Message-Id:Date; b=RWFiHFrmLqD3MIR68zu6doSS+VBaY1Quqbtns4vfZoru+OERM9wVKCx4nhMqJxyRBVF9sd/ucK6Ho956FtZ/41JSrQexDut2oSXSR2tzsukJQv16XCD4EIz/jFMf5Pq2N1EdkWgp66MOS5uZTniMCOjX52nemTupYsqlLR7qU4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4ysxIG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4ysxIG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8418C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761463793;
	bh=Us8xT73OhNQI8nNfjgx8ZNIaiFP5oyvDIKwjsEnAeuU=;
	h=To:Subject:From:Date:From;
	b=l4ysxIG9Ja1JjZQb72HYJZUjbdegcINCoSOStcnpTpB2tu+/JPGgLHd+03iwQf88x
	 OAMP01wNDDIG0s+YyB5Ft001n310zhrnSOzihFhtsDNveQFQXlUaJOPNQ1AWrFZpAi
	 DP35HcW+kj3BJLltfR0rlNXrOs/TpObzvNLXKz5e+KmgGS7ShYA9k9BGg9PDGvdA9N
	 N2AYC+wHA3+GHPmLPMXYmoUE4ReVHlQ6wqAhF72S758o7jBYbGQbfJLjoeeFraT9xg
	 /6C5g8Nn5X+HaECH/+SgBLpgffgFe7PweE9HSmXjqQVm7kZgwUhOFZi7aa9VLK+gTY
	 dZz1dB6MQ/sIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946A3CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146379359.16172.268350910088940688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bec138dcacbdb751c3d2667fcf4ccd0e77ed1b88c9189abaf606c96b98f7ec
Date: Sun, 26 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761463793
