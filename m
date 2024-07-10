Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486185F876
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720624583; cv=none; b=US7ElvGTBwy2GYOADUEd7uaZ4ELz5A+WVDSPVqLSBJ4Xf9FEam0shJFT6Rj7u8t9CuKoSOzN+/JrbCpXG/UlscFSG5cDI3GZTeyirSCHfZQEUs4TYOJuECjRWGuP+0eBYTeO/IjRkXBrbTcgQNcDiR+v3gU1g9h52NtrNAQCsHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720624583; c=relaxed/simple;
	bh=LTEnWVfcv2mCrmWyx7FBv3+L2+Ac/tRhWAwufMZR3yo=;
	h=To:Subject:From:Message-Id:Date; b=coydUt82QEKmuvdOGzt1mHkib6OqKsTNvPk9JrQIWPV+aCdRHN0BNdw/OIvhoM2kqdT4R/rc8LVrKexqg8D1NdTixHGG84z32wm0ml4OKAuQR9bpyraS996vlblQ32DbmneCA3Q5tKnp7KfqlrFdWaA1R5k6P9pOXN7l7KSaNRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjv4rURE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjv4rURE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AF1C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720624582;
	bh=LTEnWVfcv2mCrmWyx7FBv3+L2+Ac/tRhWAwufMZR3yo=;
	h=To:Subject:From:Date:From;
	b=pjv4rUREElzgikQM4ZOagEtNx5bRmqF6FKHZL7hg/WzB2TLEcK9Y5fKnKQuFBg8lo
	 8rrLJ36064+zeDWcayofED2CS2mZ152jR/Hoa6QLkt9ChJ8mVTqr4LjPS5hfi76sOb
	 qwQ5xuwSEy8QRtkdLU1j74AoX/Qut0RiWD+XG9u55f2UpJnhAEQCM/3KDbdeMLvTOR
	 mWBJz5sDJfo4nnK85BwZ+GhnBf28EepVkWoipdPFM0cQ12zfxSptvlj8QpXCBByZRS
	 VbuDYzmu1OdD9Z/ZXYhzGNBJUQF5BfbPlwy2J/0OARqUC1ifEgQVa02WigX/7bsbER
	 4XSnZbhZLYYSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B55C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 15:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062458280.16714.15631726510702881464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898387d8c47d6a91a22a48bff6eb63ec47cd241869d385db3af020a7efb0de86
Date: Wed, 10 Jul 2024 15:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720624582
