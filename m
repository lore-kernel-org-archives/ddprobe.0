Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557C02F39B4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780864474; cv=none; b=hkhuyMsfxk/G1VLohGkEEysXzyu9pq9DLv+7+bc7s0Llf5YzMgdHnlKUX59L8oe18Uop5fD0d0SfTk80tx7qbw8KGV/yLrPvVGZzdv1LSRHYRrLjJojRMFUcU16U8Igt878Oqrzlq/eNQIXpibvNFc2/GicxOAjvYm22LQDPNbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780864474; c=relaxed/simple;
	bh=tjqp12uVgrp/fCdHdrZ+pxN4Z620i3Wjq37w6sCaJ9I=;
	h=To:Subject:From:Message-Id:Date; b=OTAEtD+1u2rAl+4NpGgOuFTQdgmgcdzJ97U6e84hsoxw6Y6Bn7wyoQ0vUpWbibk+7skcr6KT+QBRx9YFjPoyZTumH+y3xk98wfI4M3DKOrvOgxOSQpF0dhgq8WB7A/66HBMdMt9O5NOMMd1PPoswgTDstVcBbo3zhaJEN8hOhCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGPDTUqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGPDTUqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55E0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780864473;
	bh=tjqp12uVgrp/fCdHdrZ+pxN4Z620i3Wjq37w6sCaJ9I=;
	h=To:Subject:From:Date:From;
	b=tGPDTUqMioatEQjz3aql98/CvS6mY7McvdSMklvsQ9DJxEWYHIdoJzWKA6wPBfbAG
	 YrhbS/oCAsKzbg318NNosGja0dJCQ3QyVUChHH5YYLPvLdf8bmKzTeXy/jz0Nj82QP
	 UoGzYMgRwt+UnBDmAjnUIWv0FhJPWU8xqDM20SIoW/fvQSpT3uDzwU9+G80AURm4Wu
	 DGkIsPJkV3w4m7BHdv0dDW2kUmmw290BqIHLbvqHGr0QbBIYAQRdgQxQUyzOJ4DWTR
	 ATfpz26JyGXxJjTI4X89mEZPWpAOPcYzxlDgp04JUnf/kekSnueH5vJe6B09TwN0vf
	 vlbrZLLT+sC8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA713CD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086447368.26524.9996915303765823129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afd765c892f8d80e54840a160eb4413f2f5500603ed121d07b1d9039b80d962
Date: Sun, 07 Jun 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780864473
