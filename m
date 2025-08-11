Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319C6188A0C
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754908194; cv=none; b=YmfwMCdl/7zioL4zhvnjvRQR2KyjQxbenD73qMD0NZfqC8DrsX5DYktPLV/8fUOd4EVebn+jf8tKMiphCgYctpSOzTs/1ttoBeumXxYMJMWVYDrzQk8G8ngKxhzE2NFDCrswpeoUfqGXX3ssJyXksdqo7XSY16+dhZ/COc+FGTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754908194; c=relaxed/simple;
	bh=dILHFKsQy8+MsoyreCElcOyuP8JnkkBBgOvEUFJmab4=;
	h=To:Subject:From:Message-Id:Date; b=QaeoGW21IFBeqc5KnSLTvEqvqqQs40eFHVGOMd20vmWyLGQfd4ZK/ZlypkcP44EIxbrLyGcPtFXuQagmT/qeZxBIgFBJvZfnJMLjYUFN4aKxk9j4lrlawYaSGZvMQ30GccuRWzJ5Rd1hRaDofEuKVHjfhfGyc3Yg/YyT4M0lzMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPQZE1d1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPQZE1d1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754908193;
	bh=dILHFKsQy8+MsoyreCElcOyuP8JnkkBBgOvEUFJmab4=;
	h=To:Subject:From:Date:From;
	b=gPQZE1d1K0rCsSY5i4jQsAkzwdote3ay3IJ44KUrn4CJCkk5XD6SmVuDvX6W6Gfhc
	 LLS6Pt1WM/lQAi3ztA3vGupO9dJhqzhxyJw6ul4UpDbRcZJUB5oA/eTa2Id+oWcCOD
	 +2UEN5V8UEgzCFKS5uAU20Ol02Jp2sbB85hQ0ryKByVk7s0n1zuwwPe4wmbhSOIFSV
	 lteWlTeFkN0lF3+KXr/8dWdBaCPgmpBo4DnA/136v7/v7zgDaSQXuSYHfWQHiqR8wZ
	 HHOhQ/IISLbRhXCj1K59qvWdd9MB0QFB03UfFr80V0f/iRTeJ+Dtfi7mW96HMZjhwi
	 Y135mC8YmU9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F206C87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490819357.28792.12601134746340054335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725eb940b6014f647e8497f9adca49b7979633ccb1f16c7a6a5ed451ca283476
Date: Mon, 11 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754908193
