Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167921DDC35
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768438434; cv=none; b=iZr5BxqoS0BLhzC4xwDoiUuUOjQxtb7R+PlLY5olpiF5TPHzUFvV8EKy8ufF6vw5HbTAp9b/QosMRuNY8rWl5YQvoCGnZt/NSc79umVHi+8kHNTpK/aWdpFD6JZnEugNOkHxPRuHK7J7y4A4HOXhTEpLGUSf04vz8LHny/ouq3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768438434; c=relaxed/simple;
	bh=5cs7FT5trNlz3N/SdrC5jKuWNimB4fVlL1sOwSxG7wE=;
	h=To:Subject:From:Message-Id:Date; b=Jg0ipboK/Vdu5eFbhcq/Tq1E7zJy0pTCpjOxUBgIM7w8/Y3CWr2pGVQBPN4MWnibhKslwbtwlKp6iv1e0zl0GmO99rs4D9p+UEIlZ6p0Dc2Q/UOnG6NsekB/FIUmD3inNwDomgLHDQ7/1NoMtin6XAjoWioTyEBoMSbkA16pjlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aarhuf8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aarhuf8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07F8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768438433;
	bh=5cs7FT5trNlz3N/SdrC5jKuWNimB4fVlL1sOwSxG7wE=;
	h=To:Subject:From:Date:From;
	b=Aarhuf8WC1O3SEHdHlVioVNfXXJ+/XzSETpPW93FDEEoQwWS1aWmiH5OmgdsVRYp4
	 VAjV95H3ZYUtV1v5J0HjksJ0tqaBcMC8MtH1y22XZ23Y4C8Vy71SVMJa5W/a2JWWth
	 HSfOUJjWwYYDNE0MvkKCqMIm84RwPVkWobGj2ZNPp6xOcfPtYSxUHYh9MtFwb1hPI9
	 yucHjvoMkSrfzJctC12ab4tiHFgwQolTGCG/kXKPNtPifFDE9y9/N2mPNHAdCV5mHo
	 q6MpQmUJOm7l4EC9YhTS3HamZ8PsvErm8nE6eEdzho/tUfVdiWmLblfvSqpUH3JtZJ
	 0tsiaRpi8bKwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F702D3CC8C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843843358.8956.7107365346775251356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a894521de3db88499d6c48afd230c32d1555925edcc265c8f474a690404ddb3
Date: Thu, 15 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768438433
