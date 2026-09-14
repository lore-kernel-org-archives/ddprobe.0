Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EB8480DF7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789399834; cv=none; b=gbMiO/t8xOFbJVlvo7xhqbUWTHyZs1xUyoaVt4GxYm5ZO/aJrdWMcjHEqQSTdpxK9/JRCP/gdCdj/UkbAjX8xNq9X0r9/53D7tSQrHizyVhG1m1vRtNI1qWZdD6tTfAiJH6a+H+MHwoI1sk5wIMUz/7JXzN5m/yxgWnVzzUv3/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789399834; c=relaxed/simple;
	bh=LDFIrS3by2KGMLa2i4lyiqANiRu84SLWaJx9xnaxqbs=;
	h=To:Subject:From:Message-Id:Date; b=e3eeGzDq/o/NJ9IHdFjPPUbrfSOntW8YvZNX02jPIE5vW2PtjiE42ECLwFAt/cEKIjvrQE7OthA6t5IfUHh4Q5C3rBp0uJjo0ehcjzoID7Sjun2KwirEh6ogVZ5F28Nf6nLAtDWPJQC+LMxyeXNWjBN0sp6wVoGlZmT++loiRN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFLWjem2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFLWjem2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC09C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789399833;
	bh=LDFIrS3by2KGMLa2i4lyiqANiRu84SLWaJx9xnaxqbs=;
	h=To:Subject:From:Date:From;
	b=HFLWjem2nQSCihdMvyDdJCpLhP0YQn3/8Vt70wOfMr9lzesL2loYPR8eljygCsIZB
	 3KhY1/esKWTGOyG93B8cJKHJx4pPIjHXf91aYG8idsiDBRea5mqDFgj25TMOvDYGk/
	 hYmem9Pn/eDOH4fd4/ILgwlvYWR3io9DeN1VuzFY83l/CzKcIb0CPDWrGznvEMRf6U
	 GXyimn6gOD3Yj0PZJSMVjj6OaWtnbBOInA57GPtgj30b3v8a2Cmskq+M6RV1rFzvvQ
	 7BxxpdAn4Vd4HDbgGDAXexMP0YvLWePa7BBofVtcCKTug+cOvu4CYOsjraOd9fCn1r
	 yOBGAHpFUfskg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31C2C88E6E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939983372.30276.13691103080072642165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35a4fe0738359e9f9e995f1c92b8efe32555b2a32d502c31b64be94db0bda73
Date: Mon, 14 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789399833
