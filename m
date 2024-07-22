Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAD72FB2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721622955; cv=none; b=h4jDuhWJBHGpUlFK4kEu6TNXFsfPUGHUMilxSJ1Topd1Ts2hVENJl8yPRCekhz3QM4l2NJcB19fMN8mqEKmfb8Kh4MxneuNcdS78mUoQTG27Dhf7xa0RO76cnmqNh3D+K0HJOjKECqTG8VGQ8F3/FX95FhhWGzhfvWSrkK+8O3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721622955; c=relaxed/simple;
	bh=L35S5ApEG4IveHENdqZA81mTzOsmSQDwcNTYIx3RtRY=;
	h=To:Subject:From:Message-Id:Date; b=O1NWxzntUgbXWhMYTqTQuITDJg3gY39RyOjVGB3mUCr9/Gfh8FvuR7SEArXcJuT1fXqdDeDRQa9KDDIXVDPXDnTUiNhbInqN/0gof0ZLIzMvyisrApTx6vQPQ65wbeHxmu6dHCmseb3VheSAIhVOM3/egIM9XlkJTxfEhgdq0fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rt90IyOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rt90IyOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE6DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721622954;
	bh=L35S5ApEG4IveHENdqZA81mTzOsmSQDwcNTYIx3RtRY=;
	h=To:Subject:From:Date:From;
	b=Rt90IyOJLL7Y6l5Fudl2apugZh/NSDtAx5bIIhnlos/rr5J9BXLkrzUC8tgFEtQu6
	 EmbFfzBDtQNPtQ6cc9uJYFEbQDaBtAO+axzYu++G1IVrp3kS+7uFJH/UsS2NrkCck0
	 XpOrgd8GKGWzBZELchMuDK0/M/KIkuJEMOMCRSpLg/UNiaNVneFKnREU6rIqts6D0l
	 6DsaPsNlopeH7MCnU90Z0EoSR/feE4QfwNKduFfDVLZOqV6MbjckAOXAY13nJSkAvu
	 D8YEYSl4Lb90DS61viLl66n/NFrp9sZ1JzBFxVRMt3KOQLY4+BP3wwPzv2nKR2XBT9
	 KIQ8fDYDiW2eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A57C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162295360.6939.17172744299410795971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a360f79dba06fa2f37ff1f88b80ebbcde09039df6d9663872ae2735e962567
Date: Mon, 22 Jul 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721622953
