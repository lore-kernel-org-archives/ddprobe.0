Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2781F12FB
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792026634; cv=none; b=jDYIKXhRpjXp0R6rrycEOgae1QqVGPMuPKxOwZ5VWaiONnfvAH/wpNeLJ8W2x6sNPSUfqFyZVf/6B8OPz09MjJd6TcndvP4IUzdnuOKKTbbjhxfB5u0nnDGrha6tUlbFfyCNEwHTHVewVBzM9RwHP+ABAebVXlb11Sawfj/B/+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792026634; c=relaxed/simple;
	bh=zuWzfJIctLgquvYvs0svQJDdwKRDNVidA8huMTXzvoc=;
	h=To:Subject:From:Message-Id:Date; b=TOp2fdyNfD/KHQxF9fzY8uPyJNm2CG3U8UXgz4GdTLQ1JCp/dPzs59RIvZ3xs5LbCaLx1Idzt0fQPtADlxKSoywjuH+05o+RPZxJrrH7kLVXRlxsHi2rHwweB40jtGcFRKn9v610N84HShrRLyUW/N+fbWnpUBq58j5XdGPrT6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFUABxWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFUABxWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE16BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792026633;
	bh=zuWzfJIctLgquvYvs0svQJDdwKRDNVidA8huMTXzvoc=;
	h=To:Subject:From:Date:From;
	b=ZFUABxWy4RHIqqS8ov/keUzxy8AKl2BI19c24XGcoG3090XzXvnKUCR0R5ytdP9Dq
	 vPHTNA5Y2HRkVkwO101A8OaCfKROHcHrkt/vbYipiC5lFJijOqndcXPcr/uHJ1f9h+
	 N+ZsGg1XoxuBV52LqNLGkzVyy2QoAh6W/lBYlI2MVpOzoPf84K5A2Igu2xteLmfIDV
	 Kq7AN/S7D/Bv01xyW8PSfgZ9N3him1auB+n6lwik9WEbpA16r4CcAIx0yMKw5ocHa8
	 F9QzTYvr6rF9yWHX1MQDPnF2/on6kShcuKkH6MZ30q7WQEGXdTO0tkojUBhXQGs0qs
	 AAkrUX4I5leVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA49ACC6B2D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202663368.22242.8773411843195965951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97a57169d0fb5e8afca41e07a1703b1ed739cc6f4804e53c54a7fb463f30d4e
Date: Thu, 15 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792026633
