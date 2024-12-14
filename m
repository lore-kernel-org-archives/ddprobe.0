Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243BD1C36
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734142554; cv=none; b=TQMR7ElKNmJWCrHzo871ofJRPCCfVgCiimG0cUJAOeUhV2zqYiNap1jsR9cYmyKxanAPt/liakSn9Q4TA6AtZwL/MrxqEFy7I2YLfcA9uWhVaoLawvG5fTFV9kQgvtk8fgC0KoXxaHUZlb6+1zJym5H+hQCIrkY8vlR2tVLXUBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734142554; c=relaxed/simple;
	bh=kUuwiAp5yAubtdHCsyhM24aQjo2hR5yJhwFtejncC6w=;
	h=To:Subject:From:Message-Id:Date; b=G/T+gca2xmfe8lqkEmmKfWW4PyaJkaj34hbSvUU1da/7EW3e2e7uoZAqYoGJd3t0kM97iFzA97R9ghqk0W9YGcsnOsL0aPviy3umeZFqegNljkR+56vq/LRvRhnG0LltaY1mDQc1xrT2cxz5ZpHVs3or9n9kBox2tGJK0MjjM/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLPxxr0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLPxxr0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE71C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734142553;
	bh=kUuwiAp5yAubtdHCsyhM24aQjo2hR5yJhwFtejncC6w=;
	h=To:Subject:From:Date:From;
	b=GLPxxr0Tkdvo7O08BN6NCQnjreJpWcC9kx/nDClMr4TacLWVYDum2zJfmxk9aZzOr
	 lGysCD+EnNJxYc6Evn/XWFNlALUbyKeLwWOyBnb1JI4H4j3N1IVk9L4YCBAKwlii3o
	 KvX/oN5w6CTAwfmAgYpNQAUAyoyJVNrDhDJur1z3XXDvUqgqwFyQUymnEphW9QsVCZ
	 A768F0OOwG36nnNv6l5sAKtf7SiZzFSPqLZsyrSyvKTwMKGwTAjtIbx30l8tddtFEL
	 yyImBX2HRJSKYR0O1cseKD2ciq/Xtq34ONrOPhgTrsDvpY91NxjnBOKqXQAeyH9C3i
	 PwjtsJ4Rb7RdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F96E7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173414255360.24816.17601282538309048035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded03b4279bacb3d3c8597ed32b1fef765a92ecb79a819c86e97549202532287
Date: Sat, 14 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734142553
