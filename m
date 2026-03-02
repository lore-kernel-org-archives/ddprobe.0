Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3965C2DC334
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772489094; cv=none; b=aP9KvlYSzCx3HHm1Sr33jr0uw6lxHeosA0oaiHCdmASSIWSgMWgR9nOP1aPgzlGuA6XSxLHcPeWDlukLteDJ6wu3gWyHyJFYY+jytgW7FYvm5OzgVBZ5DMHVLx+f1HvTDSehJSMPHt4Z6ccuH28Eh5hDprH5P5Olo1DOnK6KJ/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772489094; c=relaxed/simple;
	bh=YpqKQTxy/ZSKcK7zvTbwDOKmsFrViMUfJ5OR3D7pXJA=;
	h=To:Subject:From:Message-Id:Date; b=mjtlQ3CuJdvXiYJ0k7uL1A3vuHx7pSHeE315J3gVM/vMSpT/2F/hw4cDju3eIxglhOaq4rfGVPOseE0tUYHWgCJiJf7ccdWRNirfhlC/oCFPCkV0ZCRgi7JqvJAPGNMN5cZOsAGMSCw09FyUBljmVMM9fcIrSE/seecDv4MUxaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukndKe5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukndKe5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D01C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772489093;
	bh=YpqKQTxy/ZSKcK7zvTbwDOKmsFrViMUfJ5OR3D7pXJA=;
	h=To:Subject:From:Date:From;
	b=ukndKe5galzfpGGo203TMn5MLSMrppjLeiUsTKO3/pQp96lgPi+YmBjASyBpgoAZb
	 BSQSEe2xx1QLFMA2/MrP5xqK7Eqj/bm5S1qwKhjFlO+BT/RCshFlLMyblpqXgvvmQO
	 Tnh2wtbiXzaP7xwfiItuZb073czcDUwLLQU2co57uROBTq18DtXSGqN8ksH7ck/i+w
	 Qxql1RHsc9R4iX5Vct4eXJXGDMxYObQy/ercbap9P+LbspVVWZDEloA++bzDJXtfJG
	 Dj75/ehqvluxXQWqg/Jlf0YaC1TeJLI/myML3Efg21MGP0v9FEm5GOuzHyW4iAqy/J
	 peLpZJFPXVdpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECC2EB363C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248909370.13332.18095847299870485838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628fe2e33edeeccb3357fc1d9af2c8498d3b0e277b06a6da8b3ada81c4e4711c
Date: Mon, 02 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772489093
