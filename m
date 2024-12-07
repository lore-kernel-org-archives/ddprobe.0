Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1713C2E822
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733596554; cv=none; b=BH7swGcIhiBsZesS5TZQQuTWUQydGNMkK/NY88Cc/ONyzC0LEQ2q0whRbJTJBGFiMNqLDBEO/ORIsZCzM56HWxePxqUf47eiU+IhIDgJ3V8RsuxCOqglp2aqC08WdbUodFCC9Hn6wwvQ7j7NSnS4laWyBAD8dNae60SI1IvbmAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733596554; c=relaxed/simple;
	bh=UfKyk+Aa+5HWmok+BZlShfQZlwhhgEnKmmqdnSX3LPA=;
	h=To:Subject:From:Message-Id:Date; b=YHUWJQ5cIfJiSFmvQVaGsKlFNj74/1wxWUY+SqMwsdi+dIxWUoHxWTSnFuMS67jOgrF/aUgpy9SYVriTBNc35YGGdBtns52Zgs6/OtryiEaGTmriMDpLZGHezK1g3a1fYEkuTl2yCtGg1dZoG7xAfqeeggry4mgNJwff7xYX8/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKjVVcTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKjVVcTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE26C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733596553;
	bh=UfKyk+Aa+5HWmok+BZlShfQZlwhhgEnKmmqdnSX3LPA=;
	h=To:Subject:From:Date:From;
	b=rKjVVcTcJbAOssPV8U1UyjtCZLJDSycQVkBXfWlWxdHsB1nwzzkdUoKH03a2PkNIB
	 8LDm5aTiWGg2ekqaZ2HMiybz1qqtb4eIRSG/MuQMacwGihOw9yg70fuJXu1pwNI3Z0
	 VgIf0IZ3VCe1jikarCNdry4FlBVu84vlPtl2aoND3Q+kQBFWg0x0lMJszTYWPSE5vs
	 3nWBLJc+Wowi5t7iNq5OIImC0wrtlHL31CGyH0yAqot8i9bXwGZFPY0RpstacGp5K7
	 FmBNxEJhtW4MBlRm11IYRscK0aeeaJSkJsGKZfXfbk+vgucXcZDiVUehdspWfuGP0Y
	 HEyU5TwnX6cGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993F7E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173359655360.1302.8596776422956989698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d26fe6f808d5756abde0a42eb504797f3bed4871fc53484c69bfc810e32d80b
Date: Sat, 07 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733596553
