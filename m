Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211871798C
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734313554; cv=none; b=m3UVPGFzj8CUs9b73JfFGVaygj0DkseE1H0pb5aLAQkfb+Na49HTPiDvxSgwedXVn2sWOUc/63TqBw1UdQTx+j9yjit3i5H0ctXiNeuDLEeWSQTUpGtdpmiPjfEddH5HIA6OsD15IhcYQTYnts8Te6GpnXu8NGHI1m60+cnAIdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734313554; c=relaxed/simple;
	bh=rnKPRK3i2uZGnGe+h6OwWgU4NQbyqXB6ey60XcNzAL0=;
	h=To:Subject:From:Message-Id:Date; b=kdvcbhAFlEiLVXkt7DvOgWFmwlbVRx07Q4oBPjrlgVV+jqdkJKXhA0nDaIi+CGVzUwMnP7DuaO7VwnEVdTjCDZPICoQyXoj9/pZ+Ph/DRs7Ewt+eX8Aq9epDK94sI8lwyzGpI34z5E4iyuHnx1D0Ld5x89PNRXtXt/pQw6CXBAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLKSAQEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLKSAQEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7CCC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734313553;
	bh=rnKPRK3i2uZGnGe+h6OwWgU4NQbyqXB6ey60XcNzAL0=;
	h=To:Subject:From:Date:From;
	b=KLKSAQEB9HOpNQ3ZCSLFVXjU+nhymbPfoSO+TFy0SjZLPnpedVymtMiCd5rX2K4ut
	 KZwrl26SmNq1Di9hZb9oIcjtUR9CFCFAVdCgij/4YExHLdpZNRWbHKFJQMFmMdKYkP
	 glo/AH+Zo5oHzfIMzUeN1WcO9UN5Mf2pjhJtdh3S9W0kajSBXM/DVVDQsLQ1TLU9xx
	 c8SO32oDdGh4TQQgM2CAMy3RIv12Tr1Hz0YcR8b0yKZX6+/oT2g+H5Q03wREYMJ0i2
	 GSJZXE9D38dfq8bbuQTRTtqqNMeAPwhkLsN7LV/yYwBdkBhYXSEkZsbKHqTvn+Z1PP
	 1nOTYzMCwShQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ECDE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173431355361.31444.2956206920258545428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8dd58a5e3d77f7e1833d264a9dfcbf716594bf13f13f8a77aa2fd166433c97
Date: Mon, 16 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734313553
