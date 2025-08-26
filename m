Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FED1A239D
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756185594; cv=none; b=Lt+xTFzXf9UPGwIXANGe45T2AG9z23m2nArBvUwOedYk2gRsjQJm8UulxOcT3wWZAMYR2FrLRExziQ1i911vxmZbu1Yk9bMQPCxfMUGmGPJ5G12Bwsw8WfJYWUA4Ldxw29AW+xuWdMyYORJO1Gp4FPzTPbYHpXitoUpT5cx3mSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756185594; c=relaxed/simple;
	bh=2dcmzXclQXErb4gAuU1ooAkRAkuqTmiO3fuz/UOBF6s=;
	h=To:Subject:From:Message-Id:Date; b=VcTWA914HIbOEgSWFynHk7OLxQWRHiaFFdzsiCQG9gm9Q6WEQmPK7hxO+5uiwN0YU3GGtxNmd0JVVzXuzt+l7bl+NAnAwWN4jKxAqOXteC5+dqyMW//A25eiwTHmGMobKW7ctxaKNPMldeE0Uou0g2yXTo+O0/lgKV5fFviNBYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDmaV+5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDmaV+5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F487C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756185593;
	bh=2dcmzXclQXErb4gAuU1ooAkRAkuqTmiO3fuz/UOBF6s=;
	h=To:Subject:From:Date:From;
	b=YDmaV+5Mf5GavyxmMSbAitbzk/2N3tDKXQE+OgM06IMHU2XHzUkNxv+FWOFh4DX3h
	 mXFNFvExfG6fvfC0I93or2/HBQgQ9temexNEc92vpBSFNyvjceQmTChYMU9j4PRINc
	 iGqlCVM7HF6eq/zQdOrINibuEjqD+uRChXJghXpxqMF64+ABh4LlSIKIPC1MoMB9Az
	 fs67u6fZx4fMMuXtUA8UEIvsHd8FKTyLdfj0IEzl3xEwTydbbqETVRFcB4B5LyODK7
	 q5u4i3WUJmewas7rwqQP4plChcPIGB91M0V4ayZBX49JHF6gWdA0hphrjZ3gwKCvrO
	 tOnxmQ6rvuo5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DAFDCA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618559357.13426.3449669434920952498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1e78ab52d03b1759e03cf4a0b7e51a18d9fe00c1abcff4bde0a0c92d54ad14
Date: Tue, 26 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756185593
