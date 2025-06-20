Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283AA2192FA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750453794; cv=none; b=ijFWCQg+9nZ4cat/SOqGJOtvTehI9A930seqBd11HTv5h052HIDBCzL629vTPrilF75NqoXfolqvbT6rYMzaVgivqyMKY6pBoWPpESwC6bCFSR/++8+dBGt/KqVb5dfGjFKt9EF+k8Qq9aueUisLcLiomtwQj/vy8+ccnJh+PfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750453794; c=relaxed/simple;
	bh=2svuc0FhAMqQJ28ena1imRb2J2OaFaNtPHa6XjlBOPY=;
	h=To:Subject:From:Message-Id:Date; b=HcaMwpeowoy4iGwHSR1DB2xpFwa5E2wmSmDoN/u2/aIr9A8RskSc7p+geGbAoZdairYLFb7SuQGqATAQvDnqW5OpAvgBewNsUne5v86kcuYtpisA/Irr5KP3yrZDwIWn9F4K6Qjn8LGcP4Gj0PFgGxqpVqdMFdRhcmjhSfjrIjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b76+jVgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b76+jVgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE4CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750453793;
	bh=2svuc0FhAMqQJ28ena1imRb2J2OaFaNtPHa6XjlBOPY=;
	h=To:Subject:From:Date:From;
	b=b76+jVgKsE30aM2uN4Immtr/YCB12/MLSVA7CYVaCG4WQdKnRTtUQWeEtGqSBCHRs
	 VE5g8/84aVI1w9OeMI6ydCz/XFIobf31/2f+xdtmypfR8Xt5gM5mTutl1Ls7/gvIym
	 IjSMk3/CiEgLyL9QlslvpfRErofPpuzypbs/hpewvWuvbHXRmTWvsIL3Uv2X2jrt6J
	 m3Syn8BQsXzyWaSqoBO5x3Ar6AhWY8GZTFHi882YdZaHj7n6FSqOBh0YBH4VJ7OOQq
	 p7oO7TS3Me7BjUQJG/tuMKOmQ38Ve9Bk0mHt2RpPM+W41dNYyyLb6G8MsrDTQPHd24
	 P0HBsi+0hScfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169EC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045379357.25561.9543672771894398782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff53e009c26ee277cac276c707005079ac67ca6aa8c812bc2c2edd4e6f5070b
Date: Fri, 20 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750453793
