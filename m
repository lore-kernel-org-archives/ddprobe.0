Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1992147E6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764011574; cv=none; b=jXxd9Dmskmntv6fejHUSNrz42ek4UVaiH4v6mR8pAeCAXKR34+JIfQHyihb6lBg+3vvv17QKBusAqhugnICCx+Hh9HD0+FSpCr7snmC7hcufD8J1JhwbhI2YT+FU+80TcuTq5fUop/5ZzdMoJl8/qBKAB/PKh+3fDuvFYpfVwK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764011574; c=relaxed/simple;
	bh=TYFxfxuwnE51ZR0mFL4f2k1S5j0IznUwphOr+CmDpyU=;
	h=To:Subject:From:Message-Id:Date; b=HZ1oDVMEKKv20qBsrYrZCLymnxRDk51ncdQhaIQ1gm/gVKXOUZ3rjD1xo4umvRq5yrorOs4EvunDd+qbfFWeqKYjbc4jPXLt0jQvOxHxkJcAKCgv5zbnlJlplMUlJmLBodbkU0CEC+N3mBfCQWyqQY2tEOIfqoh0P9MizQQ0XGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRAofhni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRAofhni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2551C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764011573;
	bh=TYFxfxuwnE51ZR0mFL4f2k1S5j0IznUwphOr+CmDpyU=;
	h=To:Subject:From:Date:From;
	b=qRAofhniuLnOWqhW3DuEjT3zP0MfXR7a+iA5tFIax8uckAgY9jzkWYBL62Uz7H6WX
	 s3MXH1jvsGAJGmD8+hrPPt8XyrXMllo4tixJQcimCwBm125WLWzveB+o8kjigZqhP8
	 F+fuISWO7fLaBGLUpKeDBj7POYTRZOQXWdhdTVfmbQBDwAkhnaFXCeJelNyHBd656m
	 LXGoYytFa3a93LxvK8l6RA/mA2pEaKpd3pphfzVHef5602uORbTuMijcAs8/TzIDSo
	 gKzJaGRjUzLfytnxwc1YuF/3pIAYBnUMYIe0XH4BwLd+0OsKOqwo8ZYle8sSgJJ5nt
	 pIooTjOHVm2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93420CFD348
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401157359.26809.2135548208837509948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcc56ce441244fc22870a1778b85c4992b39018f61e97129deca4343db69d3e
Date: Mon, 24 Nov 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764011573
