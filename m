Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432D62594BB
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735442154; cv=none; b=OHAIxr1qxvj9GDNVQcSxg4vElGbjYLq1EnyyZt/DH1dqSV+dsQ8F59rZNDiDDnjhfxF7VoCIYiuv/ASGU4HdaEpRaqCo0Y2wEAd54QcDJ4AUaxRqILKXZ5sFG0+72Ygsq9bULidjFza/S+iLuXqYnzvYv3zPWhvyJ8ZBd6WxbAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735442154; c=relaxed/simple;
	bh=Ouu8QGSC2IDagsyo4gD02xd/MtRCt2FTL3kw9w3MTyA=;
	h=To:Subject:From:Message-Id:Date; b=KqkTcAmJZH/DPnpop34v2y1zQb9cNRkkdht+7pG0r6MDNiHNa4iKBMEmYmcz/mAn/0oOeHzNfS6ANrpOaCHCt8xV7YR6BSO4WQzcMSWOPbSo9rFXMYL8xoiAktqDoc5b+1327mrzK3DtFYipglTch5PR/0NN41nkwMm2tp3nVlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5O1X/ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5O1X/ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0301C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735442153;
	bh=Ouu8QGSC2IDagsyo4gD02xd/MtRCt2FTL3kw9w3MTyA=;
	h=To:Subject:From:Date:From;
	b=T5O1X/ueLbLMPZdraVH8QySVhhZqgIAxecWGMqeXSpHQevVypg8HID0JUx+hI/2el
	 e8Uk2QNJxy4cTOIYCr+VH2LDWsd0zZgbwBE6YDguHhIcFbmzphVtMNto3KW9Z7yJ2i
	 T50MsnD/Pq1G/iw/s11wC2J4/Dg42ILpJUq2+ezS+p5FovHUoojtQkao2b7u1iec2e
	 8LtF156zcLZbodVHhKXCN45vwvEQ9mlRBxefE5Xp/0QPdkL1va0LwySqCaBXTkKnZ3
	 oezh0NMv7gPqF5REXRht6sbvwk+HH3z7lXR/htbev7QD4vhGW+BHHxpd73cjNbBfp4
	 5mDMsR9ZzqeHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959FCE77188
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173544215358.28547.10062663119020051434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edeb39283aa2233ade79726cce72b7d284fdb3c45dfa8c8f3caa96057b025e04
Date: Sun, 29 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735442153
