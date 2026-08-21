Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4913F1AF0BB
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787274634; cv=none; b=euX2f+D0f4bPIQGaTLNZHejy+evB0gaVCnHV1b19yYS8EwnSCGRwQZDh4rz2kwdV+qU2tMthTvKZW5tIS11o0JbqgQ20zXxZPd2WJEZ9mtMlkXTFotT2GFYf+q76M4hoWDwJh9Ww39ow6wwXKP6CLJDCTflbOJ6uf166F+tBWKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787274634; c=relaxed/simple;
	bh=HK/Asp1HZGFqHGODU99d0BqEAyb0v3GzzfZEtwC3AqM=;
	h=To:Subject:From:Message-Id:Date; b=l8vkW9RFmZCbFa7DGhhbZPCD6/15a8moS4QVzbIu2PnxSFsqlOsV0WpAoFskQ5KkfP/X+Nt7GI1Mbq5eXpWAlbHWCH5hPk6atUTUze5blLqTvlbm6LW8RBDQLjx956nxoCQ3Zr0J4qZrQsMqKe961/OCZ7wWtJRdsu6e6B3NTAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NefDovCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NefDovCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE90AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787274633;
	bh=HK/Asp1HZGFqHGODU99d0BqEAyb0v3GzzfZEtwC3AqM=;
	h=To:Subject:From:Date:From;
	b=NefDovCkaVFZsIpIj8Mi1ZJT+HeVAz3zOd3vrTb88RkPDXPYL4+BeJ+LXM9hrz9WT
	 OmcYumNiZXLqQnnb1e9BjXJU3f+19SF3YQ7O5356RSVb2HzvPuJGYobwWPxZBrCIDO
	 7mUqVMpKwd8kh15OuWCsPU+HyokXtPQJWkWoz8Iae7g1rUuBqxeKlP0hX+/Vw9pHwg
	 MbcZRMexsX/Obl2Y3UZYlJtPPmIi3shAHTtwc5nXZ2XLk2O/a3C5r0nxO3YY1uQw9Y
	 qZyFi2R8+Qfjn6zwTy1R1p9NkhCO5c14QRRD4KEpniiJxjMMg5QHknuIZvpuaOlNz6
	 WLdpzxhsPvOoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADACC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727463369.27029.14507491967188728290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce7607b28ce021719385c4e6ffa0e768d76589be7338cffecc8a254d275a4ac
Date: Fri, 21 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787274633
