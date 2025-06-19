Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9F0634
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750294794; cv=none; b=H6B4Vk/g3vvLYEOytCR6ThZy2fRVFYHBcGlPYRpgCJbhiva5XkEOzE2gchlftx6t/SexeStm7AcukBvkqlIrmTe/oYaHCm+PMiTqqGaWU4GIhauS4Sjm0kD/20sLxQ2e8kF3j0+xTUsA7K2v2WkEM4RjXAx20HtlI28SULGQ/wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750294794; c=relaxed/simple;
	bh=iyFZqrCh/EN/wzy8vL/ExB7Urvr59HBwbAgyzDY4aAc=;
	h=To:Subject:From:Message-Id:Date; b=YISI5POp9DqAVypv8s9Nqg5fnyAKda9hPe5jfvjox08wHvFIwMaAG1dJtV7eI5IGYC6G7tHll6nVla8YtEeVCvSBK4lQ9boxO/owrod1raq89Q5FOG0Qy/jwNmsLTC40RJEzqGRARcH2Bn+3rlOW8QPVXcmYJzYPJbAAKQcK4q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNG34wVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNG34wVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750294793;
	bh=iyFZqrCh/EN/wzy8vL/ExB7Urvr59HBwbAgyzDY4aAc=;
	h=To:Subject:From:Date:From;
	b=hNG34wVYYnNUH/qlTxSYyEkBUd3msycAEuih0cNmh6yF1Mz3ZLCmq1G7Hs0UM5b73
	 UkgJ4AeDIxOtIo/jhYek+W+kNfCmTyn4RHdsiAw1XW8EmvISRZLpCnRFmMSPOS2D6N
	 dqXgRtKDGacToeqzdQq2mzux/1XY/uT5JkDgPKVV+ORwMmaQGlKfQ78XoH0jUQqipZ
	 T8Za30xAgul4u2QoAlTckRd/d+FrH+eZoB52DMraCIwd/SYT8SINfQ+r7jfWapwtFl
	 6JmZ5YoP8Kb/UwpiZYuP1/7VB4gKk6CuYLerKq7nFPtxlNwlOMhwXGsxTLMhXwTXJE
	 cED6AnqGhh1yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E924C71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029479357.4440.12362696645447531781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14957d457c23671fc4ba521bc8e30a37b474443d03d50e97c4644cda5475e3cd
Date: Thu, 19 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750294793
