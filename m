Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEE423CEE5
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751120993; cv=none; b=WYw7f4rNQR+OGFx143g3raOk2dtYwaL2uyWm+azhBnEeQDqQeNqhkixdNt9iUNIt/zl2ikpXGgjgUEAW424K8EOqXusFIjXeqQxe3TCXV2i/dtFEDsBoyG3WoDybX2LBzFUqE+WesIyYwm0hREAFauRaFD7F/6h03xgTGeWszvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751120993; c=relaxed/simple;
	bh=hpuvcZgvl8bWK1Ta1gswmUR0GrVzWiFu5IFpMbi5cGY=;
	h=To:Subject:From:Message-Id:Date; b=I9in9ynMENz7VbSAC/EHWwh6uqM7cbgwQgxj7IYpIh4gDinnjzVok4vZipTWwGRMirLGT+Fm1viieJXjdaSsoOsKliCHE/W8DefgDkNRY0ntfTS55z6T+PNfrGhTn+CrUNc3jgTYSgBitLVjTMcrVwn0plY0TwJie/qqju8/ybM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJmeIw2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJmeIw2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F638C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751120993;
	bh=hpuvcZgvl8bWK1Ta1gswmUR0GrVzWiFu5IFpMbi5cGY=;
	h=To:Subject:From:Date:From;
	b=NJmeIw2/GU2jFHBqI+x0vkca6K8AAyVqFJuPDN9iA0n/otzLLXxlpJ/szlIDHd4ak
	 Le3ljThgpcKTLOlQTQKJo5zYKeSQSd9TtmF0CkvzTEK6TlboYVtQu4ToO0yx3u5Lp5
	 G1uH1BbdsR+fH2YH0mhq3bDnplGlrYrqikf72/sUvPtScYv4OfEUf6+lSYFGcSC1a1
	 nkUfmo3o7r3B33mxPTjVHz5yxBAwrFlcLS/aIPy7cKA2hIYMxOekmfD09jeu7jMpjF
	 f/ShDFapOHSwQw8J+q3xF6q9y7ijq1TqFEUmj3jNtA0nrpaB3ebidxbDetV1km0iKd
	 3ZnTnqZmxH66g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE93C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112099358.5865.2682458646618701884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ba14c7837f5a3e5bd413148e04cadec22b8ebfaae7730c39069377a853335a
Date: Sat, 28 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751120993
