Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8BD7260F
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762322394; cv=none; b=P1qWUxtjEDqLX2yATU9hYA/GZPsDtCiuecHyfxsDWGO7amszdhPmkeNiIQRE5/PI2fuNQq4IJ/uNM3JGsklMfJyBUtOT9ZB104+zZOyYlYZ7Zop1c5Jothx4g/fC2uRGyLGihw5+Sy1kgWmywzVoDl/P6Das3ditrbQfMf0NzT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762322394; c=relaxed/simple;
	bh=TtLRriqIlcHUdGiKyyIF6BLdlcPSSDL1+uMVZDb7HQw=;
	h=To:Subject:From:Message-Id:Date; b=j4oUmIjZe8ccRlRYjhi+FLmV15w/5PfyDqPOPHKkY+71zZ93JsmlLULsx/YlumRwMIaPWHAxz/meAEIyN8zs6Ha5NXMEu+HSgbQBFzWMkWcymqVHT21BzYjPZkd9R7xvVuZCHD8jRmJBgs+7O9sTIdxHQHxAqVnEro+upXLjUQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2Gfbl7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2Gfbl7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD9AC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762322393;
	bh=TtLRriqIlcHUdGiKyyIF6BLdlcPSSDL1+uMVZDb7HQw=;
	h=To:Subject:From:Date:From;
	b=Q2Gfbl7X4uL8ZA3Nj+Z4WsRtuwiHAG/Og92/pNqyEmsiTPF158ktya62GYhtON8mq
	 5mdcx7RxdazBpYUntJP8DK4KdoxT6wtXGgQeMqU6z7ys4xs//NEOpx39DM3QbHeuri
	 k5u12kfcjjMpSkukX18M/H6MAr391mYRf7y7mA1OAqu+RKl8Qj7dLETkWoNB1I3UOy
	 qVDxjJVwzcQpk9B2waOWcHKdygtCxMiyp7kDRjkgSYX7KgGc7Wn3SscxgVUtOJS+CF
	 0uTZGnnJ+MPkUC3WiYjRNyjbrpNfFjzsRTlcCghDrrSM1+Odmu//lCnko5hSFiTbVf
	 o2s4mxKuCxDRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E667CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232239364.21930.15336360456823008541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644083acefa67c3f6e62dcc805817f21de2a2dcd480b88ff151398d75ddcbb54
Date: Wed, 05 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762322393
