Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF71D2571DD
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780167214; cv=none; b=idAn0gA5MhxaBuLY2M16+hU7/NCA1XyRTxaExJGR7oaKwyo7x6tMGDVDDjsMpUSv08MKsns2QVrmzQVL/UjMX50BSB2U0OxTpAm5+XYHienZOn2UbBU0t4dMYf2ouhsU1BMpER76CmxAQ1FJ8/Funw2LPhitvrCqbKu9hX0PqoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780167214; c=relaxed/simple;
	bh=w4ofDt/0S4xATcdXgNYjqVrYtER4YwbtXpsjd5jL2IU=;
	h=To:Subject:From:Message-Id:Date; b=T11b2EUQSmt2xtgvd5jOLPXIf/kJRE3ePWOBHrbga5tsZjdMOMnlQ8e/jFoOz0bp0sxoLkie1sIdLxTxoVaR/oa4ZOBGvCK7M8dxXSBCUa7BvQmX1Ii+RkU+AjHVK1hdGd3A80dDjniRYqpC4TApcr4dFSZjcJUnj5Vmk6c/CIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeASDb+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeASDb+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 586E6C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780167214;
	bh=w4ofDt/0S4xATcdXgNYjqVrYtER4YwbtXpsjd5jL2IU=;
	h=To:Subject:From:Date:From;
	b=SeASDb+7d+SUQh+sjIWrK3fxP+kAX1g4CC7IBtkbP/IKwGfRfHyQRfE9dDJTIbsHn
	 FwEI5fwv0qlKYymgXZt0z/2eA0mtpfplGjjY/W4Ct+eF9F7ooq/Wn1ml7IwET6GR6g
	 8It0EfkuHCnYRsyQZqGNfjlP1zzNeBocIFo2GjPzF7UWLxP6WG0h5uZnN2R6sKLZoF
	 PGPK0N/MrQQGRztkGwgNg6UIEh/ItNUwifBhFkynoXhviPpmdFNuUsP+5c6igNMtJ/
	 rcfM28SvyjMTBtZZW4ocpsaD9aZUZwl/6hm1p3i2l+bQgM4nbpTzaEfQOFm5b9l0VN
	 QkzI6Ht4bML5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17651CD6E53
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:53:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016721405.16878.17592051481901647259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e274d0dc27f2b80dcdfb9ff8593351387c325e6ed63efafc9daa9b822eefbc
Date: Sat, 30 May 2026 18:53:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780167214
