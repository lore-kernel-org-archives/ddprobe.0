Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2407036D51A
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764394974; cv=none; b=cZLlo9VaLQHaeRfinv5bqW3fP1N+c2AXx8RWCqT1/HrEcg0Q3EdBnRYDlRKiNeU7Nq8lhZsDWldfezPnQBEAmYZdKK8IZpEQcu/UKWNh443UnpJ91rbinKgx8mCSbKOwZollVGegjMe2eSIhAoWs4AvH878eVTIFsMrZRYJgxIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764394974; c=relaxed/simple;
	bh=+1H9RoZdBVeiSAdgQvPRtsbcmHPJGIB5oHlhkQLSYYk=;
	h=To:Subject:From:Message-Id:Date; b=nyvqDAok3HrkUd4ghcfXDLcINNeIPLy+JZ5qN4IY/rZ6Ne9fuWK3VtOhr+jSjo7nq6wZ+AOa1FDqYS03rE0FhNRNyFhHZ0Lx20W3RcZoU126ebLTf1rwRUZw//hvVE9AYAOrHYFGJdij52tAyusysqtpAwYSymTBdYzgvEtnvxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxI9vnEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxI9vnEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD104C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764394973;
	bh=+1H9RoZdBVeiSAdgQvPRtsbcmHPJGIB5oHlhkQLSYYk=;
	h=To:Subject:From:Date:From;
	b=MxI9vnEpTHIAgYfpvxzFK5YTgpXCC2xjMJvENjfzysjFbPMTn4ceERs2+oy3CRwnL
	 Q1pGZB6rAHZn1b88bhv4DVDpIE+WFmbnI4FbmW2EY05yqWARZ8yw3IN09c4NSpeQ/k
	 1sjXAlo5rfTJMDunFKqZyRss35j9fUkR3tqge6MOyQqaCxscnRKvfY9MXKCo2L/nIU
	 J2mGpX9goZXgl7HZE/fS2ceMgQZxsSrd69j/OAKoXK3aJ4YjouerbPT4f2uppSt2v8
	 +NpuSMcpAlMU3uITd/astGcJOUsI47oS+RQjC9aLY92pHr2kG5Z9Wi6JL1sRVGMVDA
	 +XjKsgnBstC9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F88CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439497358.19402.4241955430949297626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812ba4fe41c4f2c5d002809605f67bc3499c14f58ff6d500425e276bc7184913
Date: Sat, 29 Nov 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764394973
