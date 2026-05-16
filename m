Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAF73D34B3
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778933434; cv=none; b=qM0vtIlLAqXT0GgkxNeHKcHv06V6gG0WjVwTgAimjeAp1Jgx5X0ShP2awT0H7BXRb5+62clKYVu16lrUmWA2nV1U3e7HqqFjj4a4Nf1rU7qKGu/6/glMgmQRJrq5PQCyCrNfo7BLaErhzK7d+vVnq/kemFHudYpk9s/Xq3MDSrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778933434; c=relaxed/simple;
	bh=XpDw7JNUSd6X//CYrZkQdhrzG8uhbwjaecuhmCNTGUM=;
	h=To:Subject:From:Message-Id:Date; b=NtBMbHfLVv+s3m7GZT3+k9uzusOhWT3J5VFXqoQGbYgqE1dIFLWQRWWJPgaTe23hWbDhRLtmS8p59t5C6YZNanu/2FVnGj3KnEBSklalHAp/HsIPLIC3KZp+7CmXpwFcRwo/d/3ZvJs7EU3gEdhIysP69Uw55m7q4zrKJMo5UTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dty4C5Vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dty4C5Vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53C7C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778933433;
	bh=XpDw7JNUSd6X//CYrZkQdhrzG8uhbwjaecuhmCNTGUM=;
	h=To:Subject:From:Date:From;
	b=Dty4C5Vgm+m5scmOZTA9KzAJfAohprj0Xikky82lkhw8taMfLX8F40DQAu8BWdce+
	 10R+Uzo7DJ4uK+sfk6P9jm7SJMW2aql/RbwbHfdkVQylrtVZhYUrxh50jthB+Lx7re
	 qcNbHsdBfaTIqNwyrLpm0dBRzJfoZVvZ9gkP11STbD8qk8PeE9eYqh99B4WvrmDy5u
	 fZZplZ4yYMtYxxcSsTJ0MLiRzIMvTydMJAI0IACAga0H4PHDba+qECsiY2cvKh9oUj
	 cTu+D8Kg+2azUqhBQJV3SkXEKWpE/aSOEGfsCGpXdw7a7nsRtPN32bdYFkZSzni4cs
	 rZH3thojuxMow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE665CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893343369.2867.9355816110613137280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8735a257998f8c4a9731b462897a622ad261f97b1579e58a2f896d2867457065
Date: Sat, 16 May 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778933433
