Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184321BD03F
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 18:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729621555; cv=none; b=pbm7W33BXH3J2+kqwpsHRR7Vj9ja/dTDP0X8tjKmU7tzt26FOM6t8Xgfg/QJnMN4ACosZsk5C8Q3T4QCGe9vPVlL4MTXn5y51ex3ApOWFDG8DGt2Uv6wcBHyXp7E8QVXg3tzbjVCXgKs5M6ofNG7Z9SYYwW2DcPn2N4TkyM5zuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729621555; c=relaxed/simple;
	bh=LO80UqQ9cJpeTHdbtRsni/gKeg2RwAk1zGvgRjvbZ3I=;
	h=To:Subject:From:Message-Id:Date; b=Ciex7WVDp+AnSGHjmhb3zbiG7y+ZP2JI+qsl0Z37ZfjnCi1Nkquy8GgmH23I+F2as2w82D5d2LHhvwj1gZ6WJEiPuQ7UUA/9+2X2Atoo8lewQNP60fJ1LzDMGZGlMzSuCAjXWY3u+qNbXkUT2mBSin4Zsnsg5Ndjcycbu6aK6aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n351+Z/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n351+Z/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C33C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729621554;
	bh=LO80UqQ9cJpeTHdbtRsni/gKeg2RwAk1zGvgRjvbZ3I=;
	h=To:Subject:From:Date:From;
	b=n351+Z/A2ojnq+qD9q1ueKxYxzsQ+QSPL2LXXuz8dvBHpmxGScJtt7ZVIGotpvMSH
	 Ov4uFyS0P/pa6LAMtij51rJg1cY42Dq4QAGbAKCDUziZXIwmTpMg0oK/JN+nBwORxF
	 w7RUQAqzj1Zkxq+eXi1bXEm1Ov4pLIb5AVJVAqigOjuEUBpxhcELozPV/8sRiZxCCd
	 Nq69X+gyBcmHMJiZFghwb3A3WCNo0+bndGnxRDRmQmjqFc5k8K36dWK0PwD6PWYFyi
	 rDonV9mMWauW+mxgmyYJR8N8bMRkoZHLMqqpAIhMffU7qpsUHOzcZF7iOmiVTZs8Co
	 ICu4cYoBBJ+RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968F2CDD0C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172962155359.21878.9863345983296809544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20b8acc1f272947f6d39b59125d0e42e6c54d3cdb3a6f3bc56dcf53fe4e5958
Date: Tue, 22 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729621553
