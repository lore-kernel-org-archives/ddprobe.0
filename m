Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F015A851
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722272154; cv=none; b=PaVJeqSAPhAgSEiXg5CylqwE+FNXYEFHnXu9yb9nGoi3Zmsc7ZcQqPoiWSMRlI4sj3Nze2mHJq7v0H1aISvHPPrD+2BMwOoFapwu0L7KEdW7Dp/gvJSXogBoj+DtlCqb3pxxqaqueX4v5I+A9z9vpra0a6lmwngXCKgEuV5prbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722272154; c=relaxed/simple;
	bh=ExXDSGaGRzhNn14dydw8pvFlTUfeK1f7BMb6hw+gXMk=;
	h=To:Subject:From:Message-Id:Date; b=ajucCAD6N9t3BVHe9YbrcaI/FssPe60es1OasR8wcLq0bMnEPocDO5ZltoWGfmYZp6v+dff0BcSo8NqNyC67hLKBprLxsw1XddcAkTmn0noRxyr7/lursbNx2mJTAoAl+yewiRJELOzG+LMNhrdApqT1gIQ0axV2lzu5gOwIZ2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjC1vbg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjC1vbg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6406C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722272153;
	bh=ExXDSGaGRzhNn14dydw8pvFlTUfeK1f7BMb6hw+gXMk=;
	h=To:Subject:From:Date:From;
	b=fjC1vbg7Ic9qV9wkDqhji2+enPbFH0Jqx6nezQmHp39pz9dTdhz6sZ73GJFLASIkg
	 AtB3MQxIOqo4QwqSM3DhiOt40yxRR2UpsS1Hsz/VxLmLZLYfJoCHlJEaVVP1I5GnTQ
	 KD1m09KNBCjHr76aN6UJUHgk7AqD6P/6ofyhLPDlkuLF4nPCLW1AEX3WCeW/1sSjRz
	 OPCUlNTIrF54fU/xingkXIDb8oByOmBrNvoHSCdlugqyDLW/Fu/mX5ZQkI7A9ol40i
	 Ai5TlrPT5G0g60NhvG+W9WZDd6y2RU5mi4TiduQLDZgPQDoCfkgBSrVoB3fr2jwhnh
	 u/Y4lbZ2qdZKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB1C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172227215360.13253.14200527763168409666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83be6b3c4382fd6bf13c0266c38c8dd488fbb0e7d760709fcde65b863dd64dc3
Date: Mon, 29 Jul 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722272153
