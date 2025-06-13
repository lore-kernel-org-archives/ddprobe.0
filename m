Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4406B20408A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749789595; cv=none; b=A7mLCtXKzg+Cm/1RbszY5PMmLGuItSMYU7nzixa7llujNLJyRn0VGkA3z9hz2HlGToYRdSuTByuEASmP4U5lP4XhrkJmOXrANqW+cmFoyJ4cSjdRIbTWqi44TOYSsFCT1Dr/hlkgM4zbz40gsHTG4u+rwUgIeOzs+Pz/CWMhmjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749789595; c=relaxed/simple;
	bh=xr1f+aWqifs5fIh7xfEVQ2us8cos0jRVAmSXc4rOXz0=;
	h=To:Subject:From:Message-Id:Date; b=nFm28im5h3roG0W/tUXheFmeFh9FpOwmGF3FEe+nGLhJL3Wk37x4MM8pnXnvzNcw41muNM+FNdguIhgFDsCMQ7HKwvDoKrRmND9igxL1Ep4bMSRavBiGXlJC/VPLkfrmJ0ALM7yENj6Zo5nfH4zoWLlz6WSovhENIj1CcAlRHpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3y0zCt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3y0zCt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B925FC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749789593;
	bh=xr1f+aWqifs5fIh7xfEVQ2us8cos0jRVAmSXc4rOXz0=;
	h=To:Subject:From:Date:From;
	b=r3y0zCt2vhuClYYN2vZgUhgVJ1od+7SGyRRqulbYoMpev2MBSHJ6xFOLXCjNmgI+w
	 ki2onW9TgPP1ImP/rvDCC/X8fBwssZJsEEnJcrSiwSrQVxhRpCY7b6AEyw/Fr9F6Wx
	 Fgu9fJ2g5c8W0NiTYXzgzynzWRmODrEPp+JgYNQ4hq53L+IY8s7uhZarnS6EYu7xXS
	 IBdlUFp0IPdVrEyjGvN+IdbAveKB5w39oykDOvejJGA1uUfdECyb8btpMbDmit7YEP
	 TVi5B2DL9Wgv+K/nIP6xvrleBNVBXoDz8lccjn2PogHlbC0+Uls/U1kVWKUaeT61pH
	 OeHnpxK++2ImQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1672C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978959365.7037.7924530554217002092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007b8bc04aa0cf9ce79ab7c64daacfc6ea3c115d3fbb420d15d5ba37a7084eaa
Date: Fri, 13 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749789593
