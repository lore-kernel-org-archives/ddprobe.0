Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D2D285C9D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768571034; cv=none; b=dbz7eiEcZdtY9MtlhkMtQwx8eDRTDkcpvdRfY0TQGKj4ZMcbkzlXvvKwLym6VRMepXBZXV+V0p14OYPnYyjy2uJHdot97iC6zHIn66ALgarWwQr1R60Jpj7/KbxjnsBSTDFHsGDWlRtQncPlvysUObmNbMmWvS7iLJpyn/FfljI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768571034; c=relaxed/simple;
	bh=SzBshnHbMHVe6rJsiAHPbHYhHSxYzMjCu5EB4DfQkDs=;
	h=To:Subject:From:Message-Id:Date; b=B3MIDb3lej9M7oLpXhmbeVdZiDPHFJ3MqLrlEiqbLjcH5xZVkwxEBD2QnxV5K0TU9CbLTU0aJ01JV+2nlz9L1FB/n12ot79TVrZEal8ISQTWBA9XdhqcovBmyhqaZMhmM+Bved4OeIjw01n05/hjhpwnWuxo08SSNXa1MSCeeuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwDNEhHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwDNEhHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D9EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768571033;
	bh=SzBshnHbMHVe6rJsiAHPbHYhHSxYzMjCu5EB4DfQkDs=;
	h=To:Subject:From:Date:From;
	b=EwDNEhHSIs1xPKNK+ra90DO358Gz36KRyb90NratwJ/amfWb2LnahKATdqlGuJmaA
	 Y2tSnLeg58/KmAzQllijsWhZG+Kv1ZL7Ls8gsE9QOTYctqSeue/BjiCrOZnCu94pBq
	 oaosWBm0Zxqa/gd38BUQKNppR8tjHQgAHVkhVVk+GoiTi8lfo7ZV7md13Iu14j/jB1
	 oQXDYfM7N2ZGWwfgxTu9Pk47dUsvvtF4lC1pxbe+r8ZT2gTXSxZgj9wlbSwvzJ8JeB
	 aAtNjZXBiplE1xp95N4WV7HQ1WAXB2WQzuR1FTTihw4XWtqFyImHcX94S/H64NOutu
	 SjF8GqS2RHO6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C6D4899D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857103358.5505.8041721288622627286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795024ed6b3a720575a1bd0ecf6c69f1825f99367252dfed4b06a326d324a405
Date: Fri, 16 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768571033
