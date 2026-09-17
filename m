Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAEC3DAAAE
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789628434; cv=none; b=h2W2ssQBaoXlncVngzMavNruURWxmzp90ZtQNrxUrVROxffcKIPuVGIA0pU+4vVXCHRupLC9ouY4cPpMmWpMLwsVwzU20KuJmwaQRJuXgR97doj9XlJ4x49BoFrVSxZhBQa1j/MufWmoS3H4T0daLGeB12HPomekc4/li68+yFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789628434; c=relaxed/simple;
	bh=1Z5bzHbdCQWuyX+mbMrEUyVZebnEKc/Kcc5/zdzGuo8=;
	h=To:Subject:From:Message-Id:Date; b=PWVv+riv+NiF7Fsa1DKhgvjgi10Sy5YHjC9LwqDnoYh0CDYJskzLMUhilLC+7vqNF1QDuOF6ZoWnqF32hFv+d2b+Tm/L5+2Qlku/KUtJnsVKu048tQZ2D4qujl0pwyVcICiBW4QImhNQICCDO56rA6ld5wlGwgFpbxPsNNz8b64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2iWNFTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2iWNFTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82C3C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789628433;
	bh=1Z5bzHbdCQWuyX+mbMrEUyVZebnEKc/Kcc5/zdzGuo8=;
	h=To:Subject:From:Date:From;
	b=C2iWNFTO/tP04g5XqTinze4rBKPml0PoMnl3gGCxPzPFPJqHXIdi/iREQNjAR010e
	 DLO1wZtl8ym9PwZJ4Pi3QWVSNwVeJnj9CI2VHG51MVPiqakopAdiES/UE8BMdJ2DGq
	 5F+Y/JAK/0KUW4t7MEexmv9MnoBzsy56tRqPDYpSx9sa4pt+LnTpd2PcXnTYLEq0aQ
	 v4wC4tjD/r+lDp2+LVtW7RBwwGC6N/O4KuqwgO3t8xo9F8fv5ypmIBQxO9/rpLxp/l
	 ZWH9yFA1SflscS0basKg3m9WB66nuMcehlNgE2T0IOhAijwbu2IQLBwgw/7mcLJrUb
	 psbzYPcl8D6iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF1DC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962843370.9248.14890002202032021477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78925c470f91679e6a36ec1edcdd15824d9f6d70d39a832491142faf869d9da7
Date: Thu, 17 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789628433
