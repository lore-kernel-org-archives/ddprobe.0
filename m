Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC7726D4D4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757096994; cv=none; b=MYi7uhpliVkXV/YqsciX/YtKhGURZLp3wuHZlRh7vOecQ5bqytcwrOEmRiBEFQhkxYMrwty+aJ2G8sUGB04kHaw+9Srb65ojXsN603wGAxmNNE/LsWl9ruv6Ty5dvmWdijnvIc3EDvPqVXdCe4G399D8F9Bl17sIPS63shnzfmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757096994; c=relaxed/simple;
	bh=gfx0NEudZ5VqC1yCuuAA4z7TmXnp1UwzhYvv+nazyS0=;
	h=To:Subject:From:Message-Id:Date; b=QXNxf/dx1X0TKOBR2FXPajFn2eCR8URtqE5140cPWMnJZeTPCF5gZLfNyCug65kr9qhLXwXbQQMvtSdh4bdoZtoiA4wRd8V6hZrp2u/vt337mAAUzpcDUHRfl8FfydaOtvc5giUHGbg3MHeVf2IK34vPY6s5O19QgweJgIZ+ZKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlfxnJef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlfxnJef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B57C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757096993;
	bh=gfx0NEudZ5VqC1yCuuAA4z7TmXnp1UwzhYvv+nazyS0=;
	h=To:Subject:From:Date:From;
	b=MlfxnJefB3nkhdiPU32X+NTv87AqW1jlaNon1Vo2qoP2UYaQEYMIJsoORfYZAnMk8
	 FgPe2lMN9dYyXVzKbcHLMVBBQ4UWW8kFN7va+8UwG8FTSYmdO9zBdjbsnNqZAjRVGN
	 BTIhjVSGmzfkntgSSRWX7KNRmxsn2BpyiuS7hHLz/p1nEuCa7+4NDvnAb8DMqRgDIg
	 i0LG/4XLwUhmSbQykVbCmYkoHA2ZdzALnoEWfaJSnznzyqNDuDYmsdqrM87EE2Phnj
	 kh4mX9gVEtlJyHt3G592KBVvPjjb3WGN74labPyjRzqI4Hwce7g8SgJVXpNU/IcWfD
	 3R1PBIf86QsSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FBCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709699357.21391.10718759315776406934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e11d7430c0032c25a9325628e25aa141b2bdf0a5b97bb4adceb70a824cab66b
Date: Fri, 05 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757096993
