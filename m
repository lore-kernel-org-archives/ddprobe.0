Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9BD158DCF
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778898634; cv=none; b=reBWH6iIc8vsfjK/79RtxJBFPCZmi0cQGKDv0p7pcQpgCdPED3xZnZl74sgAwIxIo2/Urqh/EgT8PnNgCsC6NNmWRnhNvB7NsphTJ5aXR+vBAhrfkt5ojiJC7SdKLfsSJyfOaeIv2Wi/ZExS8ChrlVGamAnUzFiPq4fZqQvKYec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778898634; c=relaxed/simple;
	bh=VeMN22Rrxjb2AWYIhqlwXWTjK97HYOunYmzVGzSODAc=;
	h=To:Subject:From:Message-Id:Date; b=qyFpYXON+kSyLXmzIF3hLtuUR/aQZCY3dibhB+mfOSWF1j8QACiuAANrz1Y4ZzdIeF5P2OeXmqjG3aj3wuIC8U8ZDhqFh0UVjWPdu3TnAkq/wLaNaVR7iX8QkYgs4HMoI20oEmiVRK+1g2bm2dMwz7eAi2TX/+JIJkESRaNTxIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtGEXIuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtGEXIuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF94C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778898633;
	bh=VeMN22Rrxjb2AWYIhqlwXWTjK97HYOunYmzVGzSODAc=;
	h=To:Subject:From:Date:From;
	b=BtGEXIuS17RU8bGLhdVBhh1evm8iIQxEzz1/xU4B9HciN6yDGgkazco2cPGJYjG6j
	 hva040zPT+hRbT2Al2z5dpg8MCXcPW5z0MDZEIVBE1dQMbkGgztxmSc4M8PFu1zhOu
	 4g0KXms8uyQBVxxc88ySNn+jOaDgwuLw34pGpJyxxncWAIp0jnxNt3YwIaS669Y0BL
	 ByPQC8jcvyKTFbCCh9CxThSK7BKUXZSQupVrAM9gvOH/09gW4zq1xCmJBb5wo8jRuX
	 xBPspFAZVimA1Y7Pb8WbfamrKJjgbojV3G3CfNKhXnio04oAnpuV/xzqd2I0TH5SdK
	 jY7vElcQPcKKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6365CD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889863370.28376.2874320234047818881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee25630ec35393a0d9f4b29a5eee6ff8345b5e8c9ce7e18a138da93a9edd1463
Date: Sat, 16 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778898633
