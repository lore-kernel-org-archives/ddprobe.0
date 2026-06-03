Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0AF3ED3DC
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780458874; cv=none; b=t7qqgpMzvRJ6fQrxqdbNYPpE+0T1bihBirtRFTrj8XJzwDTbPQ/gduaycvypYhYC8u+9gMWknFxpNLpcBwqrHfmqtHWY4wsOjip3dtDxNM+93Dc2UHUll4qUS0392NIZO0JuIL+1gMhWQeSB64yy3YYHUapkuz7ajcSmWoaIR+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780458874; c=relaxed/simple;
	bh=EZ8xQ0ITq7+nQ2xuO8/8L1E5T3ztmbS1r14QuaYTTXc=;
	h=To:Subject:From:Message-Id:Date; b=PHL/SKDauyxJeF695cxW2gJ+blwZ1bQM0rcycPO6e+ox7bnQ4bQlyFUwchJKD6AMYdzfG2GtKvuhbvCDiDRawiwFtjmUiSEVvNzuCubK6JifCT6LiqtndnGcoTCrEkBYZ5MyblCda890wJNjpTg5RuAWDVLG9ymnQhTl+aXpB5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNQ0sHkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNQ0sHkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C33C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780458873;
	bh=EZ8xQ0ITq7+nQ2xuO8/8L1E5T3ztmbS1r14QuaYTTXc=;
	h=To:Subject:From:Date:From;
	b=vNQ0sHktwtMbWqljS8FpdQrakWOXoec6fHSLZ0H9Kn0wUMIMgqAew26fyT8zdSXh6
	 7xRxfRScMZ7L/WTM83D1CySyf9ky2r7Bi+E5b8x6hADI64C8OKYpF6qyDP9mJy9d6y
	 q9IppJdvnVleQcZoQdyfJXAO2hu55U+dFP5ba2slxs5LU55bWcpGScVhXaBUULAWlZ
	 vtZanLds82lF09cDw4polE5bHSPgjTvjrIafzA5rwlhvoAZqHD5HMcyOeTIEHVGhc8
	 rZomYYN3H3dRRLF1oCuloy0YS9RYHhbVEn9eyrU2m9mnTZVmz0DVcI+y8dfiF7UJLW
	 qcnfqwoGR0HlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC57DCD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045887369.15364.18259544521964678687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f6aa043bdae83074504b3d6d91f448a6227764840b70d99fd60b8e6166e27d
Date: Wed, 03 Jun 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780458873
