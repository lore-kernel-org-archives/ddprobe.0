Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145EE3376B9
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757598595; cv=none; b=WcsKkpYO+4GgRaOQ6mwApBBlVf7ZRBqdtQcYsV1XBph1j0kCuEXRZHpUL24e1qKmn6RSt1jbATpDIRfoqCTxBYDglGGHgB47ygPao1s2TKmo5QrOSRPvVAV6pwGDqs7VAQkR+cf5O5YVcSP9CeK4G1TgqeiNo1aevIDrsal0l8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757598595; c=relaxed/simple;
	bh=mMebj33dr4MAd9B01xO+eRydSXcBypK28aeVYWEm7V4=;
	h=To:Subject:From:Message-Id:Date; b=rUDZrs9xCyYArXeHy21kk5VnjNzVcPgV+u1oNAy9HD4Ej7CN6EC0Ihs+By9d8YFik2QHibLakVi6sis+RSFF62XlDvwH/CkrgH8usXf9Eo10LNX1IMFIqpEU2mG3X5kDW1iXPiriKC02unkEjYWNUf17zDxSZ5evoilRIYnqAVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O27oskbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O27oskbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E9C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757598593;
	bh=mMebj33dr4MAd9B01xO+eRydSXcBypK28aeVYWEm7V4=;
	h=To:Subject:From:Date:From;
	b=O27oskbdrF5BvchweigbHWdlh7PFghFbcLwcqW9+hEW4TIxxOn10k3VzR4hnju3T6
	 Aw6A+hwqGpH33X8GuibaSTzDCFWQaFLbbEyqZD9dNkdZ6tGRSxziPcEFywRX1M1ION
	 4B+RvJJaHmvJlLRdwWcXwrSev4j4gjNb/YXxkc96JxYBjfFva9wkO9ZCo2o9Xz4UNK
	 NcWo7t4+ohEEJmDwZ4wmG/IsyKDXTTCI5g/MrsrwvzXVncPJO1mz1d0mNZCm02j5P0
	 iN3Pyyi2eI/iLxGMZQJQ/SQdqi+bprJ3B5X8y3HWQpi0669LK9a/8pTEWvVy37dOGx
	 4HCdMBf7EvsVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F7CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759859359.10856.2845590310766477650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997697f56e20ddddcb3e7cd1bfd6737cfbc0220c6399adf6873a8a39095f2ab0
Date: Thu, 11 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757598593
