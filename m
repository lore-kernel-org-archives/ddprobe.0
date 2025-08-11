Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303B0170A26
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754874594; cv=none; b=OmV+nhTZRA/BbUH0vhxkTlB+zDt3RWE697nPBaycJ5Rv/JR6Or7zQFXw4hs3gXxFgsk1CylbHXs/M8yAgI0/x94/8kbcoCxHOIbuAUaH6/4s3pVN5NaN61ChWfqztAtQ+FhBXieuYE0Qz/YFNYbKhDXIhR9ua8TOPBr/O175+bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754874594; c=relaxed/simple;
	bh=WBCYpCHxyE2AbNt9OdGv/SF4IhlYBvxrlDF0xMolzpc=;
	h=To:Subject:From:Message-Id:Date; b=QA2WmoRkKI+5/iSLMxHa2g2EWxb5BgT5uEnJl5kOJ4HSlLNM/cyr849rr7NiVIG14g6mqINCfhnn5Szb5Fh609VqVBIf6ru/z3GaJJ88f22B7BBQfBelcS/a6k5SIYuKgF0zcchHhpJGnVXZUlATQxEi+i1qaDFpZXTO5NQuXT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3AL9E/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3AL9E/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AEEC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754874593;
	bh=WBCYpCHxyE2AbNt9OdGv/SF4IhlYBvxrlDF0xMolzpc=;
	h=To:Subject:From:Date:From;
	b=t3AL9E/nez1j/6Vwf8LgYWRTDWAUhH9TmxKaZk+IH5dJ2whQHqFTva1hoqp9GrZvV
	 RQKVMIuHeZhuvtkkM4/PUbUp5Dhrt6LCc3jgUewOqtmY3Cz9Ep4IXuDDHrkCVOL0Yl
	 oPnsw8/iJeHc5n3IDMxcFjJdVl+RncAUviEVPg1T00FeePPCtz7sy91kfBS9NKmX+m
	 wnpVtg7rQw4gvKkusLFAANGERJ9j3y5y8FwR+483J2vzDktNMllF8zJCwSmuTqGg1O
	 JB6y4V7eWBXFmSJMDugFXeOKkSW7DREWyrDVN2KuK5BIsgkqJSY5AM8yp9anwgxb8b
	 4LmiREjszYhjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD40C87FCF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487459357.13193.4699004542489117324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedd2f5be08740a7f1fc114a25efe1c71077c6a508f567082834237f7c54ef49
Date: Mon, 11 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754874593
