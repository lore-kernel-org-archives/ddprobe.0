Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AD91B86C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784354914; cv=none; b=bLsj0maJh55woGFSkWjy5z36JdX0LHdd+5rI/Ch5HYsKOJZk5iRZmTloFqCyDQ2ptpsYGOAK+ijNx2IC8o71UTl9WNEPepNYkUynUi6guoTLdlJG2y4tI/vOi0H3JeVn94wKAjTvTudqSW5MnBGOFuNDmwBo7mpRCtvT3tGxNaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784354914; c=relaxed/simple;
	bh=9ipYJxIPIn4kzGiKyGAbtFKzjPLZIIdbek6cfylNvIk=;
	h=To:Subject:From:Message-Id:Date; b=lw6x1wz/k2bbgC9uJGR//UyawLqa+o0ln8bU8sCuQoT5iLTenpBvSud0PIoz1U666Z2eOzz7inN7FeYWyBVF7QZ1KlLwW1ZUvgNX56wOecHTclMS6z16I+IR/UkMm21Twno3geOv9MdWqnqT5+hMnUbfxv4zHwYxZ6ejPHISVRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9ketY81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9ketY81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDD8C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784354913;
	bh=9ipYJxIPIn4kzGiKyGAbtFKzjPLZIIdbek6cfylNvIk=;
	h=To:Subject:From:Date:From;
	b=H9ketY813+kUEhKC+cBuVY9P6gRynOy6ZrbYWUvQBCfVddcXzvUsmQ4dB5tMj7rlK
	 uJfWyTAY9zSImGSdEwl/FID4f7eMCFloNSUseKQYWR08FBr+0fJTFzWmeVV1/NxQu3
	 la2hh/gAZ/bzkV6Pfr+OjBjeLRydqp/UQjPP8p6puLrergfVWMM0j2YgTpVydzDyt6
	 b30rgMuuSUxeHTFamZW88dZhZQJQhRSXS7Iw+izU4BmiKyz6zV1VePLWpQxAY9pBY8
	 CmAi69raPigYP2GIqn4B5aAJsxGikZBCoBiP4/cwAgf29mW6LKRJpULRWaH2+qPP3J
	 6tlSHsV4iwyYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA85C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435491369.12178.4997181869536981036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c8d8542ca78149e2d9ac172bcd95becf72a6ce2eced22f434b4420b887265e
Date: Sat, 18 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784354913
