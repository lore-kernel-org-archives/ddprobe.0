Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0ED211C
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741666734; cv=none; b=pmUnR7d1vSIOXBJaK6BM7bdnTiwvYzb11bmkjCTElSRRd+FVOVE/trExzCLLi6tWvPqec/ZY3SeLdEAqurhh5G/yAImNI796w9WDvJyEjzYXqpHMGNRXhyJeqg8pVgR1cmH6C7gwwW1hgZIg+UJp7RRRebHALYMQdTHvPeqAdJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741666734; c=relaxed/simple;
	bh=/OyeR/w0BugMZDcsx/Zs/ckXzNIO2WNMRlSYzzhdaaE=;
	h=To:Subject:From:Message-Id:Date; b=twmrW6TZcA2YBnOEbuUinFjCdkgcMBFI2DlC1vtqN45zC+ZYJu4m+ojRUEgR6JtV1XqlvzdTuqTi/pctcKszuIRrO7Iif3KmgOpGtXDtotuiv3xbLo3wQq6wWRmVWsruPbmVdUkWU84NBUz5ZojOlSZoluFF0rvIhgRd9oZEFoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2BbgqVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2BbgqVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA854C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741666733;
	bh=/OyeR/w0BugMZDcsx/Zs/ckXzNIO2WNMRlSYzzhdaaE=;
	h=To:Subject:From:Date:From;
	b=T2BbgqVIHZeeEnk0bjrrksWHEcifib7E2P/YPQ9A5UINXjF5F2byPBFUqr1Nr4Nbl
	 paxsvyY7p7abkTH7tsvqPOgtf//D+MWZsE3woTLO8xrWnTAIo2icWZi6mFgK1/HC8m
	 rI3nIDrYNH88zxnS+7k5sOt2VEFZtm6aDEZMRAjemhmcvcc1V48Xc7CGM3TZuXTr9N
	 zptDMdAuLTxO7wABY1KFzHqfrk5e4TzVP5jF4rUnCvOItR5LU7mSWZeYEhPhUsQIdg
	 ISWPAUo/8+UlYXwroTOQl12eaiWcvnSI54twyp8DKfgnIqT+vC3GYte44R1XUFOJSM
	 p6CXPO2YLyr8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9ECC28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174166673368.17636.4918124593672720499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfa41208ec034d1e2d993356eec406f5fe01833b52f19b97aae7cfc9b637727
Date: Tue, 11 Mar 2025 04:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741666733
