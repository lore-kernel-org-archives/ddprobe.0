Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFE137F742
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789466434; cv=none; b=ZdPI0L725s7JQvPCzNCr5o4BwbpLr9jOQQuFhvHjFk1x9nD59Gx463c53CCv7y+Qq1f7YMMkgEAT9vWnQQPbEqPYi1bYAMhRd2HHMGEbp5wXi9RXyXYo6h/U/XLwx4SVAIWjHVAu3t0ItSe8KaZnQcDNozyKRmRKQlLAUGB1DFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789466434; c=relaxed/simple;
	bh=x5gyk3j/xHLBiAuBwVhyq5Hh7+w+4P5wTK54eJ+W5+o=;
	h=To:Subject:From:Message-Id:Date; b=YCxnugC8j/7ndUmd/UT/O05QGIRqQ5LT7W+FgmFmyFqPNcQNoP6kjxLRtq1jNtkyDvxOcQg/P+UYbuCXRap6CKi2yEDIENucdswQfKwE6hgw0RbzRQuoQ+co9924fkJMCLQIZRMs/RiCsKQm2rkyqhdV45IBIhH1Zmthko+UWIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDd7+51b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDd7+51b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4DEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789466433;
	bh=x5gyk3j/xHLBiAuBwVhyq5Hh7+w+4P5wTK54eJ+W5+o=;
	h=To:Subject:From:Date:From;
	b=qDd7+51basWGWSxz+66Y8rDUvH4IigTKWCChLnBMHNbrRDR0KqBg4QH6ndJA/4vxM
	 kdNyu/kxLszucu3/Gn02VsEv/nxxoXZzDNwLboa6omRn5BWib8ncdVJ1PpSN7sjQIq
	 G1JaLTNXbcykabyk0ECxraxLjMEInDbff/xrXEKOG8+j4V9Pc6pndsGpJhE75IzsG4
	 Cwk5RCvymn+2cTtcNW0/fqAWfgPeZyB5/qZNgDyC6ZfJzj7t8ry07apANoWKoLrNiR
	 TeynRPZO5asq0D3kCpl/Ohw9B+bEx+l53EtiGbYAbPMjMlQJyTJwmJGJRuT1AVcCvM
	 UL93sGzIUmGCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FCEC88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946643374.7623.9099596855995438552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948372bbb3cd9b7ddfe05a4421f064da156e70f732ab419b1351b81eca9d26d5
Date: Tue, 15 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789466433
