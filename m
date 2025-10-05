Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334E334BA34
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759652394; cv=none; b=gaZwhk1M6rNzSgOTPDQe8BcR6VJrixjBHgeXIA1qwzqwwLOQJRoTV1V/pK90W/ATy6S6xfMIhzyWx6P6cNm4WkybUiaajI5aKT5iK/9kcxGQ2sUaa7OwHxsyaf830Wf309akzdMbu7oKGHTxpNWmuvusgSQU5vaYuM9ppx/aqdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759652394; c=relaxed/simple;
	bh=dRIztF7fwHUTQBX7PfqrWJ2BYiM7KxleDo+ggfFzwRU=;
	h=To:Subject:From:Message-Id:Date; b=DLXv5nldRaIZbVgb1aPcl+WqE4HJ/lKkoJ1TgVxjlbAdZuMJpDO31yC6nQ+pYI1f7g2mGjY5uJnMOIyMkR889pEOKMyjeSWA41SkZ6V3huWDp/Uh8sVxiYhmztqHe3HedCFsGTGAAkqrg6iWrmVylua3hQLKPL01YjEmY4kxCxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEKrDnhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEKrDnhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7555C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759652393;
	bh=dRIztF7fwHUTQBX7PfqrWJ2BYiM7KxleDo+ggfFzwRU=;
	h=To:Subject:From:Date:From;
	b=qEKrDnhi+WAzbKMP/4w2RFAAUVMKtfocn4TFEW6FSGomtGRqGLvBZhCsdSkIMrkFz
	 XWy8ltcYnqkHiU3xYnMGKMuuPuJ3yvT2ni9qMwQwdQ7lIVkcLTHTu09CfVuH51vR45
	 EsUPHhkWZnslTDSZnozFikHJ8AP7fHO3ORUN7XegYqJNLC5GB+arYFtG/CaafXu0b8
	 nQc1FR/T2Q+263sKWN9TY6wrFrzlLMtlPMi1veykQG0cbrW9hipxS0KMTRnWsXmJ/O
	 f+wJm5U643swHzOvB6i3BPRuXLnMQjD05tcitFxdzP5ZP8J+rKKTyADbYb/Fesr6DW
	 U3k0pl0V7fV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F2CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965239358.19178.4243656177895934342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697799d5505ee46f8014701d08e52ac449cd7801235392b13af20fe82753192d
Date: Sun, 05 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759652393
