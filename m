Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE9C1E1DEE
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745786994; cv=none; b=WNgNmQPJGP+krLtyLKnUkvLG0MeOhe3Jr8l/6g18az/QIz4h/pnTxgcN/TBsmKG7oSDP1SnOvHbLOpZ9qNOaHqPrtHiA6QkTBvPXS23NI/vKKh9M/0NPpFl8qceAiTOpqkGc4UH4VtoKnd6Aj28fxRlXcw2nfPAkwH0fdVRIcow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745786994; c=relaxed/simple;
	bh=Ntsv+c4xXNjXrQ2E8XkV/G5Aix6o3gkxWAcGrE1vLDs=;
	h=To:Subject:From:Message-Id:Date; b=V1GVnVvGich2SkeaKOEYPhTOCRvvdRja5ARUngmpBHk2PYGh9ByB99JkME87k15ryNmw2w7hYF/s0KEEcP4edfeRuVWNvWFk25SW5xwu3B/lmVEHcvxndt1sA7fHLP0f2N3P1j0Lg5LINkdH0jm7mL5fYUg4sKITGWSGTIpaCnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfKqVXnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfKqVXnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D9CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745786993;
	bh=Ntsv+c4xXNjXrQ2E8XkV/G5Aix6o3gkxWAcGrE1vLDs=;
	h=To:Subject:From:Date:From;
	b=SfKqVXnq3taNDpqK+lF0f0Us57FFo4BDar8uM7i9OdIPRxkU5UYJ2RR6RnWgvQnnH
	 +JP0U9mxy5nQnBV/1Fz2HnCuRD1oSKaNiGt0E5hejkaWY8msAX57eMDYTwl3WfzFAY
	 X9tDSVqm6tvlmpuJ/y5Y0FkTzF01ajf/cGRLzghcNYjWQVubD1jaLT7kV7tM1RllNA
	 fHpAiKq0/ZVW+V23KdAxqtUDyqwp9/uYf0Jlpn93/BcjgEiZiwW+pGpN2ykHrSb7VV
	 GQvpN2d8vrpNNRquTyj9QIzy/rbr8FeeU234nHBQN2/UwhOHUYo7eAJiDplaKPeO6r
	 i/JK4h7eTKGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8EC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578699357.10600.14415518068827159689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29283efeb621579d87d372274a9f754337d4fe706a893af0253e8fbf7a07ff44
Date: Sun, 27 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745786993
