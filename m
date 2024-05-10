Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DE21527A0
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 06:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715321543; cv=none; b=gFFJjzNnRuziCkN60vXPMkFQhYw0vvZae+wdsgUzbjA+0uHB2EYYBi8d9tNNNndaGbCmn7ZrmKufoom04rXqNetNRUhhs4N4FLaF43LGig5cOCF5S4MyZZoA6hAzsHAWtk9jsifxKvHLwmSdjiejuAbAc3cLcYfM0jqhxVtEDs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715321543; c=relaxed/simple;
	bh=nAg+m/K5DTMaboXj7a32aiOWJ/QN+0qqJoDjA/0xpdI=;
	h=To:Subject:From:Message-Id:Date; b=Q0DoPpJHTtOPmrn1khd+ttYrCa/g2RFmkxyexCiuxwidmtSNVtcqs6dJuV6Iho+D7cHDIzQxon+q61WLLP1Joourgquz5+SUKWPXXOIXc4tzZiLznQtD/XyTB99EpVIIrKymrkVJpmUEaMkTblwA/TTSHolsXJ1MQp7djmRtoZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7nNQa9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7nNQa9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF153C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715321542;
	bh=nAg+m/K5DTMaboXj7a32aiOWJ/QN+0qqJoDjA/0xpdI=;
	h=To:Subject:From:Date:From;
	b=Y7nNQa9NT23afmMx87E2joZ5+2FHIVf7IqgDIKJoKJIqUGAkVGpiQwOI0WEaXqeBR
	 lpMIA69R+9/CehxtMZoWxkNDe4LflS0YxDQV4FQEu+CEIve7s9Hl+nEzvMnpUI3HzQ
	 GSADKafgRkSMcEiX75p1tdK7bixrk0dq5nTg+1lXmsrcamS9Oq6SzwEVuyuC+4DBpY
	 cbuE0uR5eJYFZbUWYPiDu6PO/pn1uChBJP+bdaKl66D8tMvomCS0sSbJf1te33bJOc
	 WBvscMEgx2/xtBt334gbDCr30DiBcK4wXMGrrOHH35QnzAU2YuAxwXJRonuqQxpgAc
	 A1TSQIswylP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF30C25B4F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171532154277.17292.5772223028282164532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e207c3b15acf39f8054f2c675e52b4747778d371349141082ec871289a1b18d1
Date: Fri, 10 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715321542
