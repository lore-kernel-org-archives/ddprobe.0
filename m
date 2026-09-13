Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6D831F98D
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789327234; cv=none; b=Yn8TVmJfqB0JZ1F/rAMVdVgR0C6qxYYJzcfuvTNb/QrmHqcROhsAwPIn0TXKq2RxNHNAdYjb/aA5tIOIkqxTaORoS2H6iKSVBHsmkzLqxxr2/VDrB66w4NIri0z5St8rUC/jBbAMKw67GGDT4kDBSOD34wP/RHZNOz7yUetM46A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789327234; c=relaxed/simple;
	bh=3ggwlc8bT09vOdp8Jee4IXZT5CqK4WeecLsNTgCgAMs=;
	h=To:Subject:From:Message-Id:Date; b=rGVB9IX2DgkmRbmxV4SzXzu+89PGQXUooFEC8TM8ZvZqfbccpoCt72dyBiKA0IeiZzsMJNXUtTbq+4YOAboNeCfeJeeYO6Pgy9sWZ/omjIMw+bgVxPuTNuFo89mr1+/4hyEqNmCnc8bljd+XUG+HrDzu3co2m5XXeCr3oqJKpXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TelQafni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TelQafni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E58C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789327233;
	bh=3ggwlc8bT09vOdp8Jee4IXZT5CqK4WeecLsNTgCgAMs=;
	h=To:Subject:From:Date:From;
	b=TelQafniY47td5iCWW46EbDxfgu2QD/AmiXl6EONDqw4e2TAAeStmhuFTuLuTLW0G
	 MLpOhbZUe29x8afr4Bfimj2XSXkPD8N+C9ZILL6VysTQdO8bFrOzSXokQJyRSNxLxV
	 4ZLF7VcEhaTABRhWsiupKM78pw6tq0TpyYhR1WP+SH3tENFRrhRtIu5FoLUVmRMjmV
	 VWxXmsd4wFNJ/Nxk0HfVMxhcmaRvwr8RKlsTC6/We6AV8CPLR6mC1dKvyF9Oh4ywR1
	 el7Wv+CI1wII2gqIEqhFYZALMeHznI9DeEecffRaiYbFwUIJGwxgp+f67CBn3rXZ5f
	 2pJnwQDwnfyjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD5EC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932723368.19631.4273852460680764134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe65650bc83746517ad422aa9e15d4d7e222b7d69183e49c602ffc85e099c47c
Date: Sun, 13 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789327233
