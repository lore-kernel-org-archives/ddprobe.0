Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A671C84A1
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752266394; cv=none; b=i87v8RZ/VfPWKt4+2EITwdbT/I2c/DZlUEx7Oq3eoRSyEO1mORkze5JETFEznHD8qh27Ghcfk+51LJaQNgtGvwbjJ8evYo/0292+ouglgfj7kalP6b+ZM2QOPVUw5ayhpYT6EfN7EcQBJ7lfCTSIHu0sXSuyNLCcPPlMgoRQepk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752266394; c=relaxed/simple;
	bh=Q/HNUmZ2yRLoQSpXeG3z2jHd7R2LUPoCdPJNI349dDg=;
	h=To:Subject:From:Message-Id:Date; b=Dznj7FXp+5hHMAvCE9YqzBHbcCBmjHUnT4K4n2wAB62fkB2l50aYUhTd4v3AqPjXPzQu9hLorcPy9kgzBEI0+zhj5vNKNPvcvGtpFsKWwmJeQ1jWjF2w03RL7T3oZxMVfIyP/yMHtIuklj6yt+UV4kjX8dc4n+XkZwkMf054C8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdtzguSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdtzguSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C22C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752266393;
	bh=Q/HNUmZ2yRLoQSpXeG3z2jHd7R2LUPoCdPJNI349dDg=;
	h=To:Subject:From:Date:From;
	b=KdtzguSHHXgjO7sOTPr90tMHI/VaCNhHS0JTrLgty1g1VSLJ2X5INIsPdwUGbmtsv
	 cIKKT7VhHC48fIkjd9vNHLc0ePeWsZExuAbe54+18US6KWTvzJtl6YQConiVI7IM4D
	 yCsn8xnENvC8l+zPrLfOhfAkvKgJ85NWejXledNF2B7OqPNy1JdFAUcS9p7w4l7iWW
	 TMvLlY5DOT4VnJRtyUle2GPfpYX4hzY3BK3aj0thF6q/msXycZ9XoJm0o7LLzUpw74
	 KsqjsuO4iaCkw15AFmmxDdNXuCxJ33JZ1eK/WCL7aCZ5bsDH82DBtjcDy9q0iSr0nh
	 s+2eSZheKLSbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C1FC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226639357.21355.16915238030091097398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3508f85d23e632ec2a5431898450d31053a19151cd94d55de1b1e37d7e3065
Date: Fri, 11 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752266393
