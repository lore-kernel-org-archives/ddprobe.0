Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384D08828
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732434354; cv=none; b=ohLQzaz9MCwrLHvy14LyFsJlxxophi6G5ya+EpBj4nMB3kmgv0MJM2rta+A690Lq33NUK62yPW+9x1MTq91/1cQNzOvjUc7cUDDLBDVMqArm+tXNfeK6DwYYOyAA5dP4h8uAOcanQMcWpv6oDKrBus7uDK+wPmVNVsFGh/iSxUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732434354; c=relaxed/simple;
	bh=4hOZvOeS0fyl3iw8mBUCz0Rf3ssIxxUM/YFEIhj6VCE=;
	h=To:Subject:From:Message-Id:Date; b=jrMkS91N6YoGRt+SNMgacarsS6AM8IIPC0kikc+bL+r7n01m23+SPmjYyuwaOEPI2uRima13kzhIMAHFEflsBolyVmuN1HeHlZpeBrLg4H6SyJnEXaZR1d4r1Gqagq4gzKUWf3cB7vIha8UXN6k4FNabzF2YWD5zPQW8W0Vq2Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+b94hcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+b94hcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BBBC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732434353;
	bh=4hOZvOeS0fyl3iw8mBUCz0Rf3ssIxxUM/YFEIhj6VCE=;
	h=To:Subject:From:Date:From;
	b=K+b94hcp5wqovxT/g7Dy4cq1FczzNpKZGHRwTcutHUH9jjYZv1FRiKtJJyF6lKlim
	 RnOoB+dmd7HrHpc+lW6fnHM140xmW6CuIdEpJtx66u8rP1pDgld2XGZcQ7WdvBVVbY
	 /0KzlSU3qqQuF6YI8Tn4l6vuNU8gDClLtnKm3xC5vCLMgLgAlDK9z21/YHzecJoA7P
	 iCc7gqv53jInWnepGqOzotmT7nurUDspVmKR1z1QZ9st3ojOIwAB6aJw6/oa8z78xW
	 bjoPI9CyQz8cJSdH6Tn0+WxTYAgy//ts6KuM0FytC6ZWbpUDiDMKxRiOQgT1x3859J
	 YtUYmJ3geuB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A2E668A1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173243435360.5126.14972782027338836445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6665073d67843b9edb90c763e0a36c12839772fa21b4545332be4c322ee9615d
Date: Sun, 24 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732434353
