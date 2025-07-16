Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C106274B30
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752688195; cv=none; b=XgwAvgGCcEEBnTibGhqZs6P63R9NaHxDEXVhQy1oKV3uXWKENYJH8P/lrfsNgtSAuqtmxXLBxvoUapADruo60Ha9Prh2xXSN1YwTOF3m0rk6bCEAQa4+wLtnAq0AV+yjg6w+XjnkYV7hMBKwVHKU/KraCaQ4vGoi8vUCG6r7cZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752688195; c=relaxed/simple;
	bh=Ys47R53IPRHPUHuuPs9AonisnAOLAKat4U6bs9FdkYo=;
	h=To:Subject:From:Message-Id:Date; b=QlrMz+x8pIKwlqYHijioVnjYgHVe/6tGHj8i4jWQEpMx0RCgh525WmxjGKLQuUleI11tBX94I/oWx6u0bIdlUOsc0mBauRHW0cjY4EDoFOlxNF87ggk4fXW+x2i0nLIB3NHZs7bfyq6JuGZWoNBBReHPA5NZyVVuo4LFlnIIa+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umJ47lnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umJ47lnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752688193;
	bh=Ys47R53IPRHPUHuuPs9AonisnAOLAKat4U6bs9FdkYo=;
	h=To:Subject:From:Date:From;
	b=umJ47lnpLckgVl36TkokwM5ovmhuSIKbxtDVCLsbJjOhrmGzQU2QP/bhYDOSkRwDK
	 G2A7ctC8vQpQjFrkqv6ym8T+6PzXDS7w9qLmbsl3/oQdQyCmxoCSicJYFwoXD7NXX1
	 xxl7xq13uoa6f1HUdoN+ECsXKjpChJ1czN6lkgpp73KtAvM7V2945eKT6mIRvpyfGF
	 3szYKQspND7v71aHaNmM1Zg/eX6/zaGF9KYDF4az08tA7EKPGlvEHnGOV1uA8ctI97
	 yOHWlDsQ5HVu8v5ZOxsLgUZwPXBT7WOsERF0oRf7BD9QSmbLdqqkV1+XXc47mwlBhH
	 FOFIK1UpKt1wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE47C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268819358.10632.10179805853565654631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a57f1a0e93fc6b96c23d5f2febdb15ac7245ce545d8731e997805cc895a688
Date: Wed, 16 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752688193
