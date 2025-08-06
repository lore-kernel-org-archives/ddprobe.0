Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248AB1805A
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754446194; cv=none; b=HC2DKGBPslLttCocP6wNFojD45BV0q28CBbdMCNe0XmOMI1aIbwBKG+8OaullLmCxXJLi2bRRPaNC4cJfhcrPElw9g3k9EHnE8Hh2brnrJqmN6bhfKVi7FoJM92fBwrb1Z0fnHFADzrpgkc8Vjo4Fat95OfwNhqLTGveZfAVbhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754446194; c=relaxed/simple;
	bh=IlRA8t6+NsbZUxeJb7OPemWWMKaQdSRLzwojdPfWVK4=;
	h=To:Subject:From:Message-Id:Date; b=GNz4AqQNZbun3FJ/FqGRcv4d8XBllcHcvdhe9ZzvQPdzPXvW67jGRuLswLtOg54mcvIarlhbfZDSRpmUTREu8YKC1mg0sVgYRccQu70XisEiIIWBNYfDWvorNp1w/itMGDDP6L3beesmUjsIY2PUc/aGm/3cR08utO+KpmbDGyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxQoNoLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxQoNoLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A108AC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754446193;
	bh=IlRA8t6+NsbZUxeJb7OPemWWMKaQdSRLzwojdPfWVK4=;
	h=To:Subject:From:Date:From;
	b=ZxQoNoLCjBX45313buGJmyCaK9q5qY9fLyA7tvzRwj95hHs4ApTQxMGftNE2gqR8S
	 0XeFMIJTwYH6+8SHzF3isZNmdJ7tF1SpUty/SyOA21u+3hQ/dsnfsE4HopHaFjFLA6
	 RHSeJPF8Xd+gVCcnxmQBvFp5mJD+nv3wXe4ySq/4g+9n/QDJ/zu2+Qug/qASIwPldq
	 krVYm1ud6FmtN9T6e2b1dVuRBI4oiv5/mKGXyV/zP5MUPjCzFEcdbS5d6z+MswkqT0
	 AJw1ozcnxCmRTgA77q6Rz4WVOhHDhdh0gK3hlM7YM3oSmcUfsb7cqFZ0owYHt3ToCv
	 lgSWVO/KT3XUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCEC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444619357.8451.9344101653845677807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827b5a7265d9b3120132634609e52f80b3e34603f5bfe36b77916845e575b2fb
Date: Wed, 06 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754446193
