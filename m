Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385F8301709
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788682234; cv=none; b=AwHxWHtPRPuUTK0oJf9RDspUSBeDQPzM74gJRnlYlEQg49mOgkUZTmxbeZYgoYmrqjO3MjCsWjR+7xmXOfx1vioojPcQusfG4cNlIcwkwvtdUqMsu64MXI5l6UZ4PXnaU+aGjqakTgY+2crIdywN4xaZ78G8nGNaXL9viZyCMDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788682234; c=relaxed/simple;
	bh=9NBM7irUz11ljCSn0l5Soz2NEUzldvaj+fHnhoysKU0=;
	h=To:Subject:From:Message-Id:Date; b=OYk0vJ3XbU+F4IEfpba7Xvoxpd8u6G2GY0Lo4zUSsZdi+y96SjY0x65gKY5wUCfcOLw7kIw8HyfRDtf+sjE6iBgq1h6L2eS31vVVa4zQVctFEvQnydmwghJByYu2+Q5UzP+dVnJULTiL4GwDN7dxA+NMeHm5g6W+hBP1QZUO8Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMEJhPwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMEJhPwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE14EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788682233;
	bh=9NBM7irUz11ljCSn0l5Soz2NEUzldvaj+fHnhoysKU0=;
	h=To:Subject:From:Date:From;
	b=YMEJhPwxaJ1jS+e4DJ5WrP7Cv+/c23flM461afj6r4clZGMkuudSnfAr2v3gshdN6
	 HIHk/h8CM6rlt5+DKRTZgbiOO7c8lwXv1ul/TEBTPD9kMhOrcp9B9gyf+aLLGvlrzF
	 E2Dt2Cs1eTFjagFcSxjQwMajjMsaAc4wDDJ/lX5zmxv0+lVis6nQtg4rpHVKOD72Oc
	 wtolpPFtGSsnMN/3bChCylbUwQBzIc3vmza8pPCok3yeDwtLhggz72aQh9tkISsBlE
	 FroOj6utCa5GTfOLQnk0+NAZC7SjrJQpI/G5/ggz+dmX2aTVW2R6xlC/gIl/LR/kXK
	 xLcR704DmHUpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA43C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868223369.1685.6381937263806492731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd9c82875c54173f7cac098b8c79c933b17c1a1abfaa8c6161f874229d31ea4
Date: Sun, 06 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788682233
