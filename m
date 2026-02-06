Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127FB22301
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770375834; cv=none; b=DaWGBMMEEO88rii6DZRuRDG6WJPuYZcV0n9jsUBuvokAwn4uoT/4iN7NOCXMnj92jdUpuJC4ki0tewcYkzMr9ZPS7cw8vyk8gUhLWq6a6SWgEmmliEWHKWpes/WGSBuR2/rvzkpMo/rBRq7o+tTEbBSPrT32+BKeiuEgYf/GCh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770375834; c=relaxed/simple;
	bh=ixBi5IQpIo8eqcamM7KUpILJ6g5stx9TPLHLRq+3fyQ=;
	h=To:Subject:From:Message-Id:Date; b=ugLpQL1cyV1BT22OFn9rerUdW2A322c6IqXBvsZfyR+M5I39T7APy7JARp8AKsZU7fzlj7WpDDDLHzuv2s0FdJuN+ANxxf5bwYs0EO3oyq9ENIxEfeu1psd/Ym/vLnHHKOLgZF7x6ybozWGMt/4ir2LroOIUVW3AkDt9vCWoTRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiHhLQ6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiHhLQ6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4D6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770375833;
	bh=ixBi5IQpIo8eqcamM7KUpILJ6g5stx9TPLHLRq+3fyQ=;
	h=To:Subject:From:Date:From;
	b=LiHhLQ6s49rNRR/lY55V0xxFrR3gErRyDIFreh3WBbaAYnOK1aFUFVfz54uVMfjuV
	 BiQIcMASlThPxYfCvMb8Y2snh6ugYh3xJ4IhMQE2QHTVvPFg6pjBbjr4GJX6OT6ItR
	 pdv0GJzfpsGM/F1igCjTYflfPkemWjLopuSrYlrmHmGyfMdBpDcf3mvFtcYGRuJykT
	 JXAOTqs5vyM3nuKSKd4ay/XyFD8Hpg1D2xhOVeAP5t3pQvhmcjYZA1y+nvcG32xRYB
	 8H7IxwAsxCJAQiK+tSzM9ttJTwFN67zhzBCCGHqj1xcJqjk4WVe/qpjJovU6z/Lwq4
	 JNeg1UrGuUOjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B46BEE2084
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037583362.29102.3364761434852120403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94701dbd1eb2131f784128f4ea61841501b7f61c3025aef96889e18f03b593d9
Date: Fri, 06 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770375833
