Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FACA8F6E
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754797794; cv=none; b=EEmxaSWnashpn4PZYhUtvtX8P/noVL078SfkcsPhdbMEJynamB1a6U5pB4f40Dbq9VZ1TQC3GQJdAmIOKM4LPsSpgDNH3Ksu38eM4U7evJ56FbNOE9lX7Yk5+WzUlCH/ZQ2qt9lSPJOUnaFWSKjZQtoagyxn7Y78KeNuLpuxJB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754797794; c=relaxed/simple;
	bh=pjPdTADwKI1QdHGsmJ0gcu05mwm4l2Te4D97GhVQSNU=;
	h=To:Subject:From:Message-Id:Date; b=lmCIMmMwyHvX613D3rcMjIguesSMaYLI6HUrTSVzp9IKWa+0BNODbuPCjsC6idMIG+W+rHcJbS2QjzLaWPnqXC4PbIov1VBopUtS7t1Tq3Oxnq7oOPgOY3GKOvl/ydfz671wINO7pD9hVKdt2qz3aN2rQwlGmO3A64a5bR1ccbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUBmexAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUBmexAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AA4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754797793;
	bh=pjPdTADwKI1QdHGsmJ0gcu05mwm4l2Te4D97GhVQSNU=;
	h=To:Subject:From:Date:From;
	b=rUBmexAi9iVZGcqEgWnpTdC4d5/V6NcH+30H6XEfvFk2cqWhAoPagpbSu+FJLfOyR
	 kmi7fUX8OUGt5ZsaHdm0Zqxjoag3JdotoORACffUJMtBD3vOkInlPitvJkVTiRs1dI
	 cXRivkZzlmCSt13pcdvka2qXWX+arOhXgYBCScdWj/CNVBZ0LpL87AUonBujeK14gg
	 VuNHaYg+5v/xjgCyUk5F/29+alGHF0bVdtk8apEgb2soTl/Yw5M2MpNsFYX3uW8MNZ
	 3TIFaD5ocPSLIojpRHc7VQOJGghF5nSM7FODIHsS8DkkozVe6InFQoNB6TyU0BQJan
	 GEZZsPcPA9+0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF1C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479779357.4209.2387224631535044402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09faa5d1aacd8b91433b1676e0ae0dc2b2642f6a20218b47994c26eb4c030d0
Date: Sun, 10 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754797793
