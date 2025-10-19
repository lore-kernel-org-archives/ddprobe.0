Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B97C2EA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760832594; cv=none; b=Km211mkeUbpQ64GXa9AHR+LP3mK03I4a12L7DMhxuetl9k+C3+IrcmWmTJfzvzwcZN1U8RtkGRvAPN8o96fKjY+1yKY9Xi+NEF4xa9dNd5xFh3PCu8x1TYkGRcAJcbiTRKJlDxQxHhl8K81+IuN6qM3iZAxiD0zEXn+pY4wGUXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760832594; c=relaxed/simple;
	bh=VLOraM/28kcyA5jpe7WRXLmxcit0aatgUNrd0mdTs7s=;
	h=To:Subject:From:Message-Id:Date; b=ZuUi3Pj4y/RyMeVim3ciNVMopYzSZQENX1KqwZ0UuzEbohtUPEM7WSzJ2jfACs4glVQDm4umYeWyXJOc+FwHyAsxcf5g+bS5AojkcEEse5E4xfDPf94mhzCzK7XokWE/JwLSV5l/SxGBrTK0KbJ9uIvyFDQZSdN5fCyvP4SeFEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPJPlxgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPJPlxgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8570C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760832593;
	bh=VLOraM/28kcyA5jpe7WRXLmxcit0aatgUNrd0mdTs7s=;
	h=To:Subject:From:Date:From;
	b=GPJPlxgHr3kcFmAE2TvGMZrCai9VnDWNNsOTRNdHQb4Lc7J2J7k1bDNywwWk/K1dp
	 3zRJfDQMh+MRE0yXdg/FNt16XvRrSfS7G+Ysc59v4sZ5id8ubd7BeF23A6R7Xo8V5x
	 csqBejuVMIAw4eXIniH04aL6eYTNB+x92K6TDCk/tCI+yGtxhV+LwPCvXQpFUKpE/N
	 ic1JlkQpoYt9UeYSoVWOoyUZsfY7Jc8N6BqEIarf6PVoLV/9Xfss6BCCTFE/mpKMB4
	 0XCwG+b23JSetUhxGTPrGqgqxsqDAdBV5hL1+GP9OjWXSumr791oRzjscmb9ZO9CCk
	 DEkgiJkLMiQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928E3CCD193
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083259358.13169.11649412177082126478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9775957f35618125eb6f414128adba9a2635d022f830bb751394f5d5bcc952
Date: Sun, 19 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760832593
