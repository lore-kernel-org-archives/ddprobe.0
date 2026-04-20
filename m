Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23243280338
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776650854; cv=none; b=AFsvTHexHiC4/iIN0wVvk+weCWzM1zna32S/Ezcnhx1uKoj/EjdgIS78dbe7kJXAlxvs/eDDhiOJzHVnBjO66hj5lD2VLprWf9wHtGQEoSPFmk0cvHih3tPSYQiRNl4ntWps/BjUFskrVBZzBgDvunXRt41zYUWxNiBzpUtm2sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776650854; c=relaxed/simple;
	bh=yMe84SIgYRXLTEZTm9+MCP4vURNbHs5AxKOJ4iXU8qk=;
	h=To:Subject:From:Message-Id:Date; b=esIJHBatNMGy9L3RVLp+iQ8nq4QZDipuB2EeeuE8hjIMD7z4Tcrld/ukZR08CxSH9AVYKNHipnTRzObvkKN24M6HZGi8F4oI/NtR9rWyD1wJPLabDYGTQtO3vVOItTWuVdDLlDlXZnGltFiFBJQv0t8L0nlqW9aGMccT+C1SujU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1CLAIhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1CLAIhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F18C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776650853;
	bh=yMe84SIgYRXLTEZTm9+MCP4vURNbHs5AxKOJ4iXU8qk=;
	h=To:Subject:From:Date:From;
	b=F1CLAIhs0wbnB+uvW4ZJHUFJKNsFvLP/Yw5rIO9h5DDwb2hN2bC7byIgMthdcJnyZ
	 cJm6P7fAlmyySoEO6ueRe3JNyYtmMFXR95TrhF2P7bQxCJoAwb7G/hi9LcyeumQ4CM
	 chAllL1SmR/aUDlC4SXA0V0LVvZQz7ZBLEFnS1ZIDNAYkaFhYETfOaXGIfIK+wOkVs
	 6BvbiEIK5IMBPyr2/tV241BuzCoIOo4MPwDPOrdqr+MM9IeoZQKq0GUJ67B14Z0Ups
	 bYxU6Loz/wu2OysTdsjC4vM7oY7tg1pd9aJkqnJ/zt6P+a+gtgEEioBIiGR6N3M9uJ
	 hm0faZDgKJ9sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7FFEA71B5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665085368.12848.12060261334148661022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d5fa46a937c2e33a74797a2bbbada6fb9923f692d60ae49985012da8bd207d
Date: Mon, 20 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776650853
