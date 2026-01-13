Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD894280335
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768344233; cv=none; b=nS+a4Su3LYpUfLVApBGA88AhYSxVGdtAEHw10mOjxPKLjIKVzgQEQwmwHGFgkABRYNwlbZk0Z61+Kxux0ho7MYXHUJQSqtDOuYs4xUpz1DJhAFR1fMhvkTHUzwfiBewIYFUthskaJ0rNPfIy5zea6sU4aWiLggMb32jt+VEPDww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768344233; c=relaxed/simple;
	bh=G/49Asg6CLVhNVt59XOyeBw5ajWqCLyvXPCE9jxMV3E=;
	h=To:Subject:From:Message-Id:Date; b=MIWYlAB3bOg2NXTyO2cRCRK8ZJXFDhPPbmt4/AcO0NCPLhqNkUEaGlkdj+ZgH0wG9F/3Y0MhQZAcnrl+QMNrbU6N/2u4Qhdk42Qa753FYktAl0kHj6UWFzGWJiAyv8k4A9S2lsrAE6qeGQwmweeFZeahSdQwNtjcmEvW810DvF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrmqvulz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrmqvulz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2146C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768344233;
	bh=G/49Asg6CLVhNVt59XOyeBw5ajWqCLyvXPCE9jxMV3E=;
	h=To:Subject:From:Date:From;
	b=jrmqvulz9zzxpCTlwM12n01FeN4XrnTVI8kfKtmIqNgwPT+/YTRzguDw5KpH8EFX5
	 LseRHOGXfYxY+fIkTMKSGg+eeFxpYpU/V+ZZZammXb+iSXDvKI2o9eQ39XUanIU/Di
	 bXsxwRgas870s7GM2znUEcG7HSo65zGYUT0Ymd8N3KK6LmGOY+/peDmCgywj1iT9VH
	 CI4vW+oEw4S2Ko5RQk8G1fbXOQBukCbpPxvnYsYZp2QNhWI0o19503CFB8E1xHKkTy
	 TKnuJY1dPE0KPfY2F5Xtn+ZgmdWdbW3afOodzdJvCMv2/L44sNRl2wmnMLNmQtu/C2
	 UlE2d71w2DaEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E6D30CDB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834423358.9494.1941177091815358780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573c01c9b671e5af60ad031cc698c21ba15f7939f8fb048da3f365f45cf9087c
Date: Tue, 13 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768344233
