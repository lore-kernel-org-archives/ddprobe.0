Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23833199EAD
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774820694; cv=none; b=YK72fUmGjMbg5E15AUc13Oyd4YGAo66+f14ZRjyQptmBIePoDk6hiyl+Paku4J6nAMtkf2Yz6rrkxftsRBlL1PXg+KfuLuhQMXLNjAX4zX0czFaVNbzcDz8qTiruFnP7HMFLHZ+E8hqY+v/U+wnWrgpQWPQA4fPd4orvuPM9Zhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774820694; c=relaxed/simple;
	bh=YnNVQP13rYBh0lsLpJ7dJFgNYdjNmzzQbA3EZlLGkQY=;
	h=To:Subject:From:Message-Id:Date; b=jb6kFXEVGxfUb6mI1/dGXzn9SsTcaSBoclfNBg+lXDPRWyeIpPMPU3YrGDiet8QrWHRXwHU1oe9oiOi7g4gb9cSv0jNKBsn/KZIQW/kDEsoOqejUWa1czOYjfkFrjzbYTxuPBGEv+IBc009Dub7OwobOF2Lp2g5SQIxUSwBU1NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJq8kLBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJq8kLBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A9C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774820693;
	bh=YnNVQP13rYBh0lsLpJ7dJFgNYdjNmzzQbA3EZlLGkQY=;
	h=To:Subject:From:Date:From;
	b=kJq8kLBBN/8rUfflCkz1JTraWL1TakXbgjAEINMNhbfyix33hzxeDdRH3no+slZlD
	 Qw6/5cZvhA1AINVNwAYclkG5SHtjuPT9nEAPLLj4R9SbmX0r7YX9O3IgWrzslWfhWX
	 f33iVzv8tQY/QWolWuGlWo65We2u8ssmRIMQTJzFrXnR2nP7nQahQrZWmAFmU3w6+U
	 34nTlCQ9P3ypFWTEU+XZMZJGaC8b+Dlz9o8FpEDBY1gz0KiJzW0tjImdAkLYVXo2OV
	 +fE49EpHO3XkHpnauSA3DWoA8ycExvnBLrjs4g4vUg7mybwXtkfPbarRxUxOG4X4yQ
	 lk9SebhPxtg1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D43FC97F9
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482069358.2371.2821117595842237128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251cbca3c4546c137743d8f3ca8f8a89652375ba8d7d439e1807aaa123c6e037
Date: Sun, 29 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774820693
