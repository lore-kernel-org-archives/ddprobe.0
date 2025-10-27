Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86ABF331A47
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761604794; cv=none; b=uv4sZ3pu+9JgcaOwNgGs5oT0HIZQjGYfEDYLRmiPnIvpANJubNll/5jCS3Pbhc5UlrBFA7yzHrp1kyFuiJOYN49R6A5isk4s53LrDa7HPMv7D24ZGezsUodLCkXdsg7H9ZYKgq5x+S35TeNVWvKCFHYG4A0eo1JjpqBiGz1bQeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761604794; c=relaxed/simple;
	bh=j0iwfMPHkgFyE7PG2H0pFsqahHQkHpqancJE6EQAWAw=;
	h=To:Subject:From:Message-Id:Date; b=rwgJSi7gFDmolLz2P7OLm1t6ig3SL1DzU2lgglUVEqcA/c5vbRk/gwU4c0pLoX0Nd0KzJtZZ3a3DNwoRkgOV3BaLknnpaJhoK5Pj+6GUIsUYJVX1sczT9MVWntNd19Z0li4ZW3KKxnEmeJFPBPG4vXv8D6tr32GEkNz5TwLbBVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrfB/hJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrfB/hJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13315C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761604794;
	bh=j0iwfMPHkgFyE7PG2H0pFsqahHQkHpqancJE6EQAWAw=;
	h=To:Subject:From:Date:From;
	b=NrfB/hJBDV+xSRoVsvHNF1cRKhp2kpI+RQwfkW+E+tKUdoA9X9BmJNeBLFrc1P2xe
	 0gEhHzkVNEXJ0tS9qhFhomoK7UVhveac8VfQ95JCfsScTtWyvr91oWzqJeSxcp0EO0
	 eCSRvYvZeeF6vFhw5UsaUuQQhI5xqpvZKJ8oZb0rjeQgjvdqz4MnVUYUTtGZgqN6kl
	 2EkQtUIGjs7KT6rPR+yCfonP9cRo8aXUEAWH5Y7SWl/TX5obJyFTY2uVf0lg/i8deR
	 I+NBwP00VE6xFRMVi9ohVwxrvCLsxzT6sOdqsO6ZgpxFuRK3MThD9H+kvIR5pwN3Bo
	 J2CLrix6DUKZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E0CCCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160479378.7917.535932378867871782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905dac7e3af928e9f6d74e8ab7b14222e4d9ec3b1e8dca38a000f4adbca414fd
Date: Mon, 27 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761604793
