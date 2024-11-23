Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B78B374CC
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732336554; cv=none; b=UzsJofNqpRLStXPoypVDV9Yb43xstNnbDvTQKkBOr0MBlc+/x/qnOweLRAgUdCMra4k94WfJfmfTWCVK7glK+v+Z0rH+Y8Y4XBoRqPMjFwL3a4Luhzn9Mlb4lp6rrXRj7TBHpSAclSA8C2RgpgWbMyMy8H5gCYmsmh9JHbsSwfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732336554; c=relaxed/simple;
	bh=Y3qbQyzOi6syhbbqCwXe7v6lSZSmYwrSmbv71lr1wzM=;
	h=To:Subject:From:Message-Id:Date; b=qPTGFu+sATMusgbqemPxob1dAYvRoPawaI7rBg954iNCj46d9ZhvnDuVihgq2MOwwalzA9SAra5j3Xw3i0UxbkJFP3rU2TfeT864vsGrOQAospMLAEtdFS3f5eYch4vwKC7arxWuwBYSud3YH0BId2nDtLeHmrgEp4CQ2E164zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc4w57AF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc4w57AF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C0AC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732336553;
	bh=Y3qbQyzOi6syhbbqCwXe7v6lSZSmYwrSmbv71lr1wzM=;
	h=To:Subject:From:Date:From;
	b=Lc4w57AFhc+kB2lTVjJVJFTC8G00snWxsXQbVdX0LMXi41YuO8DTXOYmg8C/q5M//
	 A67uV9AvtGX+s6yMjZrjOG6pdYdjvjdc+dS1j9+X6KIIfAZMJa+Av047a5RDfBQ7/J
	 zQv7VNufUxca4xEijjR9Lwnt0+gKZX6k4AhpHwDf5ZsYvLpSz2fw5VNdmhd008Tcct
	 1tnFaTd4FJNYSqo3JmsmdTFHZ8vlHAu+zRjsvKd0rllaQKQNL91cCy6JgEsP9WLUhO
	 e4BwEIGTQThNUaWTeIO+e3+rj1sqo6iwmz8+PTIF0rlncgbt98uvQinV3paoIkGCHr
	 SielzUHxgXXHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C3EE6ADE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173233655358.756.17140772275824585202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca0f3fec2c8c19b5f07d49ce13bc987e0650f2712d8f70c47463cbc65925e00
Date: Sat, 23 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732336553
