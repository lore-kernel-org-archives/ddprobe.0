Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2304A2AD16
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757805595; cv=none; b=S2E4UJK2m+6UQ3zVHW/54cDAerTnafI7l1XQ5KO4gyxLV9iJhS+VmfWGYakOvXvO1DpX3fa5HsVT1cKYh+KnzKfLrbEGkzhgu5vysfaYZ3FnkUBszsoYw6CxLDdG6zEgig1uQfeNdoQjpHNBf41LCsYg6BT9QR5yXbRTEgpi44E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757805595; c=relaxed/simple;
	bh=HKDWzZSLK90wQLcQ6r8rW7xk6+Ce1aq6/0CebPt7vBg=;
	h=To:Subject:From:Message-Id:Date; b=jbIf3uUolOZ8FmSP8Q70CxAi5YA8e2f1v7oLlaIDlcGaqJaB/dNbSi9WkkmCL1D9WifZ3Dib4Ee3Huiq/hNoVjTKEqWKgGKr50B58ytUUVEn0sn8Z+nWSQdQWbQlTDHdU32WUkLTbb9ZjkF8J3SwuGr//G6bd3k00CRKYrAZyXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yc5GeTBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yc5GeTBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC4BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757805593;
	bh=HKDWzZSLK90wQLcQ6r8rW7xk6+Ce1aq6/0CebPt7vBg=;
	h=To:Subject:From:Date:From;
	b=Yc5GeTBJ+MIG+J8wB5nnYUwI+ezpRCnJShdntDfurL/JR6PlZ9Dwj4nMEkP6jUmpU
	 6XKy/ZhS2maCo9VfOZBlFYD8Bks1FhZphUt84IfnWhIgV+O+MVROS+31CFSqNKQzgb
	 Px3iBqeOxS6r3ZJf2UEMX2S+muzw2aUj8Ewnp8g16ByURT7+tRg/1hvPNFaPtf1G+R
	 4o2oJntrsI/wJSTbVRdHELyJepRuFiZDNilDpJYGRVOq6ITkRv94WOk/Vhq3CXJ0PF
	 8R50fBuIZSE7w1qy9KaRCxh2t5t648KMsySTDwsoZzQH+b6xpZMut9Dj32lQF+9Icf
	 ffBmJKgIQ2y6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EBACAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780559362.18739.4681323780605236779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84adae9cc563cf3ee03edb6851e8630977df894d32a9136da0833b7fbc735749
Date: Sat, 13 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757805593
