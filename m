Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB9422127B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764199374; cv=none; b=ELg7F11dM2j28//+VnB6F2czA2W1sYoYDKizsZGbJkKxJxVbX7p8ktrYNeQVJyXzBYjVZp7KBdU2JqyUJgxiHTENQjRUwdXXT+N48lcKOCTHQAx+LebuUYvoVGvvPdfwGBC58c7DME23NKVpVxp26+O/nNzaJ+E/+gvEcUC3rGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764199374; c=relaxed/simple;
	bh=qGKr+BxPOspbLDpHddCBoKY2JFbcB3eftkZIdOBQxYM=;
	h=To:Subject:From:Message-Id:Date; b=jhRBFTz8pkAsZSEXYCGo/LGTVJjhWA61cLLxVADRlcniGkVcQ2uY6/NhIzQjQBwU5r8aFyRhAkOZJvBnUkwXuDLc3J9/yMl2OVwXAxccBvm/ZyyhkU7BgLJEjfEwAamzeNqwaMrztus5K9w07ROdt845NkQC8+c3KJa0WnBgomw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/RYZ1XV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/RYZ1XV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3242C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764199373;
	bh=qGKr+BxPOspbLDpHddCBoKY2JFbcB3eftkZIdOBQxYM=;
	h=To:Subject:From:Date:From;
	b=G/RYZ1XV0P+UpsEh9Yro9uyX2PcU92iVw0bKmuElEx17HSE6fPIq4LqKLzrdrAOpo
	 xi3ZUBL7n5PaAyNpRHjvKQI8l6ZS7OSowQdKBCVrkFLXqzDc/vtwiLUjlp53vOC1/U
	 xGkQINhgoYZPVEefaR1R7nHGzA9OPd8bBCG6PUlNQsrqRcHudT4U3iq7wlnrE4gIA/
	 xp1GZoMm/YjmYPKNmvxAPHdvPNGKxrlYNt2VL0iwRaiadAWlhEEsZU0lTYBzFQeXk0
	 0iOuVken7mZyXM7Fbl0Rw3gyzwz/BnCgtPr8eK8MyxkuEhZBIeBJI38/9tLwWaph7u
	 BP/eJy7tE+TjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A2BD111BB
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419937358.8902.10272332058561585841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2c977ad5dd6077abe41206255cffc8d4b383a784b7454ce772e2c466a4ddd6
Date: Wed, 26 Nov 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764199373
