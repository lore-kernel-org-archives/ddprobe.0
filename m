Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1301AC44D
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777437454; cv=none; b=BTgEFEF20lBBA12nJqguDcQcKbB8xa23Xh34m54YM955CR6bcqUWWRs6z5Vqit0NJrHinwdK9IFKRmp8eFQsP5Ko99b5KeXskIY693VqYTGecQ7pIJsYo76pTDIO5VcnMMr3wZedJdp9q21IDlatkjvr/L357iffIXh9S2Aouho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777437454; c=relaxed/simple;
	bh=q9SzvEqf50WDRq/QxMrHHR1XxRpYgRNGgVFG1nXSc1U=;
	h=To:Subject:From:Message-Id:Date; b=niET6ooxAh/8voIF5H22iuiZPTxmTYWJEMFRgaXpicNvawZbJBfd8CLk84xj6iT3H/iKpvy/LtdHbWZd4J2Gk+vyeFe/tfeFjvEAi791EOKlY/liO2UpkaUBj3pRlHyHL9Ygy1bW11Z/DTrh1Z/40myzqB4579KnQeZ+zgHetwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OES3Nz9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OES3Nz9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30ACC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777437453;
	bh=q9SzvEqf50WDRq/QxMrHHR1XxRpYgRNGgVFG1nXSc1U=;
	h=To:Subject:From:Date:From;
	b=OES3Nz9vwWqttbdCV+IixD0wjUnAbXBtfma70BxS6o+aY2094cgNKv67rY68LibN9
	 oGrqQM/S36qDs1UDQL8r7B6E7ItxM3TbV1PWOblIRkHpgE48WcueMtkV6ijao72T1v
	 WgK4u6ublONhui58xznUtQFZLlzKPL7w2dW+Ui3ofZK/Wzx/yL+qZ4/XD+5cHeFbyl
	 JdGNxD19CKncN85OY9eKKH47SguJyzsLeCKpXNNcyQ1OFCPFtp7r3HvpXD6NxnhOoy
	 Mt+b9Ez+ezPiQPhkl4/PGrjU+BwPch+wPdpKWFIrXVGZmVOU1tu0WYyQri07RkxssZ
	 ZdqAUoOvlfFrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCD9FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743745368.17628.6417830042434690411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68324eb4dab0b7f5aa1f476383f1d9ae112cf090fd751918d0e5369dbee39932
Date: Wed, 29 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777437453
