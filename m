Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A2514B07E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737678354; cv=none; b=XQCDjfYdVL1th248Iy3YorYbOyyrZoZA0Lilq7lFOmRCXc/1IcwxMKDTrHvXkyCf/W8kkEQfCn6TuVEh8Lh9VfLHfoWX2rPeNG6t/iS4AgXqxXYoqCKqhuERjJuEmyqegKoVAiL+jrUk85Qqu9LR+IJii0i5QdXGySFALkt6Jts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737678354; c=relaxed/simple;
	bh=wF/k0li7D0q3pq5678Hov1TRablgZKpE8bJSNqchiQM=;
	h=To:Subject:From:Message-Id:Date; b=C7z0aQ0R6OyEQOSq1mn1OhnwBkMJHWQk5qIPV8UajVqVxsZfmcidT1Srb2BgJgb7mLqjZZHVnDoQZQoZfRIy2mmvicZR42mSWV5xczY6MO93bVy3PcSCPZUc8DNLyCTfGolnHD2KI5R7JW+U827t0O3O/e2VZjRN/8LYEFyF/LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yn67zRAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yn67zRAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0471C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737678353;
	bh=wF/k0li7D0q3pq5678Hov1TRablgZKpE8bJSNqchiQM=;
	h=To:Subject:From:Date:From;
	b=Yn67zRAeortXketDAL3AsGdhbCWKtHx3Z5UBeZNS+urUqf/O44SeHz0FgTG/H6eG6
	 szuxWg48qSWoQH9rCxHsUoMHcbTuRYogMpgUV10prXxfdXGNJPa9GR1SbD0KPL7qPE
	 /68ORR9g5P9SRFMuruDksNDDBgGSk3mPfxITdiRQr+9jFFvSyEKhGETySvbq2vyu8g
	 TS+pSZZ8KgVTyDLL6KK+uOWExZTOMaceSOY3+TGcfr+06vN+xxbJDXx33Hhm+9Nihf
	 Bb/GpX13mENehrQSPW87obRzP8JOzYHLTXPqgm2PXkNA8a/NbTdYMi0b7w+0xZcnLS
	 U4qJUAIiJ4sgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED56C02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173767835373.32548.1041779512775391490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9db8f816ea798c184aa7110f23ac63ff042d869a276b1ab15b9106091f8992
Date: Fri, 24 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737678353
