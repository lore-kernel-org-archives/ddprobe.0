Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195653DCD93
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774973094; cv=none; b=WkaaWBmfWcPJ1x7SnS946UmPTLFxfq8Ka75H8I4xMxjNrJRlnMX3d1k26cbzWb4nM29JT+a6cJHzX9e8Dwh4yLSLvUL1uHc8qr/j0IFd3E+GCcTp6uqQzXB6Bcjv4i98KODc3mehgfEG3lRIinnQ/S1ldt4ejhF4Rv0VVeNJHf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774973094; c=relaxed/simple;
	bh=PzoaCmI9kiEZOOiGq01I74o6otdTmb4jMqmQ10xLtcg=;
	h=To:Subject:From:Message-Id:Date; b=PiZzTxXjL2fDqH2SLwPQf6sT/nMOJVPdfPyYklkCsi7Mu/Xz/7k4LE8ORHZ5ujrTBcKzthHkdLbVAyFJ+9RMuCdH4g6MYblkv3yttJ+dEgw925lhltZ48fbQInUGbZY3iTHANGuy+FhTSQDSiMqHHjvPu5zi1jxMnecBT6WJQkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxSzgBOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxSzgBOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04C0C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774973093;
	bh=PzoaCmI9kiEZOOiGq01I74o6otdTmb4jMqmQ10xLtcg=;
	h=To:Subject:From:Date:From;
	b=kxSzgBOwl+4/m2cdmza8s5byIvHBmjpWufwH8+A1R3tVwpETOb6NccLnko61l+7vz
	 TGDUglvf4zs+VBlP01m8oUcWnDtYjm3njR6MAYsdKxVc0fYFlwFJYjVzWWa3Y1crur
	 SU6FXTMCeMh4F0YejejcFwPbxOBLPuTPCBl8bpTVcSVn6Dx3jXP7VPVKivDbY/31gw
	 J71jrU2/jQR++TKw1IS/8b3JhR+Bu1tvNkgBQKf0ofEs3+sHEyoz22KJWXYIAwMgSA
	 jI+TYgRhphAWVbumvjR93jpmtmYxLiun5HBUlCHY0QyLGUCpdToUrnMNEi77YEtvmy
	 +sUl0NdI7gFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99803109B493
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497309361.7590.1999014267792379931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e1487933910dc13e159277ddfeb120ea2d480c5a9e7db78300f2b087e14065
Date: Tue, 31 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774973093
