Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C7D25776
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775691934; cv=none; b=DNQkhlRt6io6QsbJkZm317xos5bEFJGSjgYmQNnkZSEBLcJA0wRu+LELOp2d5S0cVdH+t9d2LZYXjx9emO1lTdelsUxRLV1/WW+ZK0N7FDw9LEdof/WBcSy1DFiGbBxEon8HN0DTgaWpd8EqA3EnnHRScPl5pwbxWtT9NZY6pOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775691934; c=relaxed/simple;
	bh=0ITwlHCtWud12sOcDmKB+IqP/z9lq5jUxpVgtC5y/1s=;
	h=To:Subject:From:Message-Id:Date; b=OuGiETdpTI2HxWjL2mnhWrY6+VlmLSUaVvBRlYHitKvJwVt6pWq0TE074CNPtryYDPlv/PShcLq4M+u7GNhWi8C2iTntkxFAyM3KOSk7PGoDvDG+TikpP/6PUR/bVsshZ6jU+BCUb1yv41C87lpTOGoOkQ4Uxk0+Po97JrDH+hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gr1fsP9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gr1fsP9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB63C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775691933;
	bh=0ITwlHCtWud12sOcDmKB+IqP/z9lq5jUxpVgtC5y/1s=;
	h=To:Subject:From:Date:From;
	b=gr1fsP9e5WkNeq/Amu104hAua8RYa5PL5qcp6DSmZRqeLpK+Bm+xGh69/xLqPLDif
	 S8ELF8fvQFjtVW6NrXKhZLOGciyKXtngI9gec9B6ziCO+7cJj3Z+NP+YqzQ2EovPLr
	 X0tjUFcMleoHV90LFZu+RdrxkQy9MRRhYV5Ue6M77ibfCkmpMjhopY8Iy3KmEJGCi0
	 1OYV8yUE0Hgu0gAmAr5iWhNDtrvbLSK3PJbUrxrrzjdKdx3orZAkLQFRYThwkBQqvn
	 7wxjpRA4+pCE/M7u35D47XvC/dwHYJLGLDC5NhC2WREsQe6+BJkiVawf9suiOJ8T0l
	 FIBvitleXLRVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66F810FC456
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569193373.983.17202643821617173973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc66afe5e600d5e7dc80c324970ce0a2a7339ee06fca8853a665006df66765f
Date: Wed, 08 Apr 2026 23:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775691933
