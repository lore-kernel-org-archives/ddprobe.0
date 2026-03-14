Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041E435A39A
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773494094; cv=none; b=tQ06FP7pAU89N0/Q8JLkebRhVL1n/jfAiYPE9xso27GwONfpE2HH0ix3B9DxK1v6GX/ZkYNHHIa3i0OKuv7lln+CXxk8BazZfNYZK0QBpbnAbw211O/AzPmoaLjoYHv4pdBlkXR7ZpXhsIjkx3ryRR0mK9bvsGDDk1oKkLk+0A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773494094; c=relaxed/simple;
	bh=RFUNsefqVf6pU3eM9UtN0jVtUoYoHPoN6MD+z8LRXck=;
	h=To:Subject:From:Message-Id:Date; b=R3oa8C1xdfb75L7RYOsQOkBQmO0KIXDseNwkab/VHuhiCCrBiFYrTWsD/41i7ZOYkfNi5GYRxGLwItbnx7GZzEkxN0xScgxlasAOh30Pw7vq8OL8+ne6BG+hYJAahvKlAADxjJvCaFMAMA8TENvowfj4QMPqKM5Qtb5uNFOSiU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPDp8mJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPDp8mJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E5C19424
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773494093;
	bh=RFUNsefqVf6pU3eM9UtN0jVtUoYoHPoN6MD+z8LRXck=;
	h=To:Subject:From:Date:From;
	b=jPDp8mJ0tuAmWKj+WsnIanvuvNbllShsMB28RY4eyo2gXEr5s0+1MJ1JKhOW5pQqA
	 iF9yh68oMAK/3QWGoU/tHwmYcjlgcZTthVhZUge7XTSd9+/CskkNHbHUi5jmcWFaM0
	 HgDfZv6t/99u97VqJr/QabNSdOYorX/lglT+D5lvLZu9afQJ6YBKReHkrCJQCFCPXK
	 Q9H6o9YRiFc7FkuA+9zy0YahaB1upOqH2aW4IIOUGg3Hrh+10LoTXy7T3qcGSVgsEM
	 zSLSsZsNDd3U//mDT9z00D/2bko3ZeiUrrjgUzI0X7PQNdxyadrFMptO7CRtGU0bKW
	 hcXPCCF2LDy6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E2A10706DC
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349409360.30170.5144407400208723168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6af30862c42b9e71dfe2584291a5d0a98a91a076cdc022f3fcfd4ce02468903
Date: Sat, 14 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773494093
