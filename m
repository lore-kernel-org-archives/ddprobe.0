Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2946A20D516
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746117596; cv=none; b=cHcGDjq+1xML6tTQ3UJyIhifM6Y1Ge7P7Elqdx2/x6n3Cf8eilGpwNqh/67Fw/5X1YVmbSB/lVJnz/G4SOh5DtBt0ENGvAWeQ0hTSS5eU2QuszDwMDySHIXJiBqYKCpEulzjUoeMEJQSmS9s3p5J8pCsYw8dXjUvdEFTihOUHP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746117596; c=relaxed/simple;
	bh=YJpXRZK4ZKXYBat0wECjPVQJfO8l2vFL8wBhwLCZWDo=;
	h=To:Subject:From:Message-Id:Date; b=FKB2losVWzCyvdlKBlvEZCGpFi7S247AgUqbQGdkXzyVF+H2EWBIfxdKorRjD76WxvqklT1pBvdE+S2fuJCPTLbSkD9IcFojyye5bz7xYB5QQfmDS9H6ok01dyP4ejSQzZpHRcZsNSKv7Xdi/KRW9ZY9Q1evzxzpq8vPUVZgaWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jePbrxo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jePbrxo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7A0C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746117593;
	bh=YJpXRZK4ZKXYBat0wECjPVQJfO8l2vFL8wBhwLCZWDo=;
	h=To:Subject:From:Date:From;
	b=jePbrxo3kOiR8QaT/OFxbARHi0vyFJxKxKFHYk4bAbQoEP3Lz/1bIn+retHhMX42v
	 H3W076eOfPVgxV+XFfTlBQSLgR3bI1rmcqhUzQlOfR+DSFbCUiQqMAKW95INMw6oLw
	 CRsQ6sSvOVHTqJR8Cn9Bm/+ZEnvKFIBR9vCL70119UPr/v0KXcGp1bcGTvOOwFQAKt
	 uT0Y6HI2K1mY1R6hx5sEp9nTPqdxT4jHZ1gAS+ASKCfPmEHNrGNpZr/U6gRQlI1o7w
	 Y9lA9+CdTX0F2kstnhUrXpTUAtCVuulznhvOG1jwgHaqyKyYMrcYOlzHYWc1cRVHG/
	 U3BFQDf8x735Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1EBC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611759357.32655.11283386157201930398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2a52eddcf2a28792a694313927e2aee9ad9703193786368211c4fd1ceb645f
Date: Thu, 01 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746117593
