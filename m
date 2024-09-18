Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F38175D59
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726702554; cv=none; b=W4TgrOnxcJInkgjFOaqzWT3b8IHmS4UQo1EvH06vXGlIV3OOIUku1iY8xs2CRVVeXsIwKVOHxooH6nUj6r1n8LA82cFnlh6CbNNraHXQ9vNns73PACLjMdEdLJFJTZ8ibA7F9LI+EVkFrM/mbiTuZGWs1aLuRvGMetoeo8+rCGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726702554; c=relaxed/simple;
	bh=9Z736mXTaHXu5+OWOQrmnBa8nwjGfsMCashXeNJQrUQ=;
	h=To:Subject:From:Message-Id:Date; b=AWNIDKPpky7pMvKVyvcqhLLAgDhnQE15sq8T+nhXSiSNXsfeAJInoK+hhnM0pelpwCUwEMewLfR8PpOYjTKExBKJ5XYP09NcXaVYhVkl4MTVsND17WSSAOo58QF7Slw3xkKV7M2K9MJD1E6wXoeGFKDFqozhpbrEhBAMO4UKIR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tww+/+Iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tww+/+Iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1581C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726702553;
	bh=9Z736mXTaHXu5+OWOQrmnBa8nwjGfsMCashXeNJQrUQ=;
	h=To:Subject:From:Date:From;
	b=tww+/+Iyx63XsTTVYGDyOeDog/sZYtSdv+nA0JBL9M8mIdBIL7MS2y2yuVxFsODeY
	 RM9HPzhmcrvWm8dK5X5+aK4T887SU94E1YgJ7WrKoTbiGXzArGqTqLwKgHnkt0At6V
	 JrI3aEyn6N6gH/FAtCUtb73x7Ugqqz6+ubtw+NsfytBxsEm9pDCOy3fztzjyRXFaP9
	 VpSelcDTk1PFgvX4djFrh82OEffmQBdsANbUwfMLijsd4b9faFlOJ12veehCpcxy1R
	 npXmkvxdfWPTOzlQmIzUoOvixny/af7czzHnAbTYKhHt7R0F2TevfN9p+NrB+aiPQN
	 Tn9nt5kG8f48g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C02CDD560
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172670255367.5048.15065006281340310599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f04dce6dc4bf8e9307d81281d4993210f1fc27e592527c785c18fd6cd26126
Date: Wed, 18 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726702553
