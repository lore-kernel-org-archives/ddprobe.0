Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319433546C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783919914; cv=none; b=qx+BLJAh87H2vUlBT/ONeOlnn2OxsVpEcSozD09f0D8o9hepNl3MN+n7/pu2C1lqrWKeVgkukq+IorWayLRX92ZGIapjACZ87ogvdlB6gGGEXiZ/VYCjPrMn3I5yi/NivUWCt73mvcCfCS8ESgoaFyio7Knd8/6lAzkAJcKZa8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783919914; c=relaxed/simple;
	bh=npKmtkZLDoN1s25UrragbNZ5lXEYm2jqanj3ArYuiqo=;
	h=To:Subject:From:Message-Id:Date; b=dYnZ5ZPsn2SgFBt2a8N0Q7dNyzfAijeEEW6C0z+3r4YOVB+KGXvDabyM2MmpNxowJI6ryrE1VqDOUIF1Y5GBc37jjRSaEFw6DfIwfT/kbJaw9t1/6zpDCiYYI881Xx1lryTXGOvgEOFm8zTSuriPl7wPhzPfMRmOqmLyDyJN2xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxonZZvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxonZZvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCE2C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783919913;
	bh=npKmtkZLDoN1s25UrragbNZ5lXEYm2jqanj3ArYuiqo=;
	h=To:Subject:From:Date:From;
	b=SxonZZvodIhk/8pvFAGfa/o16MqqOnAiil+0+OQQm95E/OGVsZr+KH8HFYHhRqGw0
	 Jb5jQBALiMSGKhOtbr8S5TQsnyTrI5vX7ns9l8vkmfuF9ifTAzlUmR4lioc7YqSg0Y
	 /QA7inTWdwfEJezUlt6hVUXiqIvR7zL4T6W1VWHGJPkrPb8JgFOKr3reDVPTENc6Y1
	 LvGrP9HvRPEX0yDhVg0aMtCvfD/UGu3m+eocy8OqjrvRedXNcf2X38cwc3hn1XTirf
	 TPAt0c+orn14rzoRRn1AVI6AE2ZQ5oG3dwYaURzKZiyBoYsgyKilwe0XrUnj4ChdX/
	 MEWPOXRR/T+ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9730C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391991368.17347.401217594113483529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcee79d856e428914daa7f075c095d7f62ab98248b8ae3cb4c0145eae20d551c
Date: Mon, 13 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783919913
