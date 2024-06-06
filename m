Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B2526289
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717653443; cv=none; b=IzptCNTdjl+M3mm2euQuAh0opr3O0nE7ApWXdI1o5rT+TMPOHnSAx1uUB+urnuh4JUsIyPHvgsQtRjZk0VCJN9xNpNhIzt5tROZuncK9L0trcqeptuZdNcyrFKW1w2t0jh2GsRxT37vVAEMpedqMxwB776qXopOZa8OOfJAeq4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717653443; c=relaxed/simple;
	bh=rdjpm56Q+zsYvwCj+poBsDe+sMIx3Nvz1iFBEXmV/5Y=;
	h=To:Subject:From:Message-Id:Date; b=CZxhLQ1KRPeV+v+QPNQP35sfz0xSyThQ77/3j+dMQm8XoZtuJ78SWaU9J62C7s/oY0mBxekWeAUxgitHuLFx3SdT9BTr8Ip+gVvlU/aUp+oh5s89Bx/lKjLzfgnneKpQyhTOTW3m2MQoXQiEmFJqtX0ZITdCbXrMmUxQ6g4AVxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueZGv+iD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueZGv+iD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FEDC4AF07
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717653442;
	bh=rdjpm56Q+zsYvwCj+poBsDe+sMIx3Nvz1iFBEXmV/5Y=;
	h=To:Subject:From:Date:From;
	b=ueZGv+iD2XMVXnbHtdctK3mlAn5Bi5K4zyzntNnRhlegiBR1xTu1TyNiRJkXqF5PZ
	 L6p/NzaoOYtahkBpOrPR+9685Tk3pCSHCUdFFOqsbtSRTrfhsvDft0Bb0WWz3jUDsl
	 4ObFbrkEu6lHQFyd3RoqkVormpp9lDza4PtgCdZfPStxBsvjPGzjNboQktCH0g1+KJ
	 w0Yp1l3eNbLKHumoACHBltWGyyh84IXIemNtY826DoUBVMgSKY875yjNb9AfuU8x4H
	 ZC3Nxob5FY7uLDG+Hq8ORlOwDcW+lrw5axdPkIZwlHuxCWZVl9X0Yw/bdFlFL/WsWe
	 6grXvYIKmGs7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC807C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765344276.31289.16904984533301996049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3608de6b00319c278f2ceca262147ea05381113926d86c3e433c543b4452a9a3
Date: Thu, 06 Jun 2024 05:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717653442
