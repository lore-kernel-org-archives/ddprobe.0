Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36433175D53
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751172594; cv=none; b=C4PIreFszut7svjuD619Cbt4waRId9Vy7VQcBZ9ItxAXESXzuA1TmQNMl1VdhnSOjSNomf+bf/cFayWLGAiv9HpYwepkFXKu4DfyDCyzvp8KWhsa2DoleYhd+fcAS1AIqyAct2lcXuKnmZq12NOkJTL8htUkKcYfL6RoGWWBRLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751172594; c=relaxed/simple;
	bh=DESmJUGVg0YXBm0oIBC9TQFuTrdNyn78BuKAFe/p90s=;
	h=To:Subject:From:Message-Id:Date; b=h/ka/xjCwqtCl77iNcVSX6ghej+VaAJNlx6+DR5gDIfYGmC1NYJmBMRWzrt50k9E9Pbv7LEH+1SXyzwHRKbUoSM1VIzEwXb96vuoqE7ppwsrDpRVcxW8hG5+2JSgPrR7a3dUnqQh/U157lFI7knBvrna6WmHcombWW7yst5vjsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aA6UxzJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aA6UxzJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C92C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751172593;
	bh=DESmJUGVg0YXBm0oIBC9TQFuTrdNyn78BuKAFe/p90s=;
	h=To:Subject:From:Date:From;
	b=aA6UxzJvoJrgNpF9V2yc9tDMiyS7LEBIf3FtoXMWTIGKhQGFArxFBNy48/8I3+G/8
	 es/6TPFRRliP0A1oJZnTeNVi5CehUGzhXSP3VKqoGOQQJMpa8KruhsePQ6F3642BH4
	 5OTgmkfl5d1Y4KmTbi0ZIlDFEYLuahcqgBd+Pgd4aidrPv9LIKwECgDPB9gngJYk/R
	 NnAOQTD2ON5BCxs5hTQpsGOiqFMTK66z6ILtaWPaSCtsGrDIiwOTnEYE9sydTghOft
	 VH2Rqr5Tub0TRaLnGVXWI/+BKo2jZFa0tXTneeaTYOMz96x+ifuL3eB2V/oT/LvMQH
	 JFYluxTpf+F+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A63C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117259357.4469.10391065642782699093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f14f6327a708af301ca886e7aee70f1b4dd229cbc274ea2cae347dbc82fef7
Date: Sun, 29 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751172593
