Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431573CB8FB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781695594; cv=none; b=ohi7kKkRPOZQ3szvS+YsCFTCndN4TzcO46axB7yIbz1saVsk5/Uf9rgHNflSHCPLKlOyj2LegJ/UCYGwveYvu7jo0oPMkvyX4MFj7UPNnTIrR2PznDAqi7Awn2LIODpxvPTQnG8ceghLWJTgoCywrdD9ELX51UXYxh/eAmftej8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781695594; c=relaxed/simple;
	bh=1Kg/ZvUIeI5gN23e7T6iwUQhtSV8wl5YzyiuEQh/azY=;
	h=To:Subject:From:Message-Id:Date; b=N1VAJZEt6nCH8EPYBmGT8/QyQiYbi4P3+DXK4nnHCA5b/MM/zz/DaGQD/bq9OImi0ktplC4hSxN7c5ZgaJCJmbThaqBI3RnPb0KrFDEA6otH/1nf8E3H7aqmLe1WsQ9yiFeKa+UOMIAkHsStOEacbI9U1IC8t/E422zhCtZi2Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMzQWA3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMzQWA3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE82C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781695593;
	bh=1Kg/ZvUIeI5gN23e7T6iwUQhtSV8wl5YzyiuEQh/azY=;
	h=To:Subject:From:Date:From;
	b=UMzQWA3SCfyjxRgkueD7foN2+g3WA74RFj5fWvblKbtdlxMvug93tcytV3sFaUxwY
	 GjdO9WeFHerk0OpCqAc25NY62rYliZYJQULYwFW7qdtwH6P2W+6fCfApCQHVKbZK+w
	 9ugLgA4FP1LJDUs17XMrRzhWKKVLjmQwjss283JDwdmKAZG9Z/wbZ/yUGaZX9uOS7Z
	 SvNDCLx3hrJ5wvp/hiCadwq14jbakHW04Vx20aRnz/aU86mQu99AFsKMGWkLqD/aqh
	 6WXKTZRONqIbT8Az/uhQ92m/t7QJZjY4w4nhP1sZS7rpE9ilNrNzQqoYFA/kKSinvg
	 f6mYPMy+HoqvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10CACD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169559370.25404.13163747977426966832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be1357cd7e0cb3372d67dbd34fffb168898cc750a20640d36ffbf89fe6471ee
Date: Wed, 17 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781695593
