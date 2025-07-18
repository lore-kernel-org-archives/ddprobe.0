Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7FD22A4F6
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752881396; cv=none; b=o6A9m5XbOpdVA98kDZD8vtATJqq3YZHvoAI9JAHrR/eYn8zrGbPcBiBYuX3ljs66pBvl70WiynfavZWwF7Gc5OTowMV1iR5+IG6n8ojTyTlCbLFvxqkUxwrwipcJ6ON1z8i0ni3JKYKloH7yE8sFhBBBA/jN6FxWAwo5isIGDd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752881396; c=relaxed/simple;
	bh=qx9hmgtAiRkIyNNbpTsmiS2jcUa393vc5BRldxeYvfM=;
	h=To:Subject:From:Message-Id:Date; b=BfwQ5oACPSrvShoBUTiu/jVk0g9S/cXAxKwONvZDkLKTgpcnm19D/KT0SsKUi7Ij8wULUU2eU3x+4IRMOIrQ4fczTFA/j/V5XFU+IgBSQ3+Sy4CtJ/e5zEgHI6C1o6rWVMJXyIe7KiaPgTZssXVI/rEXcHjmAwR8CLw87qSaTnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+HENeW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+HENeW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F013C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752881393;
	bh=qx9hmgtAiRkIyNNbpTsmiS2jcUa393vc5BRldxeYvfM=;
	h=To:Subject:From:Date:From;
	b=R+HENeW2F0ELWmZMubIwXG5UzISMeC4au16i7/Coq5Fr8hQZgAlZow3s8RqB+JbqR
	 K//6g3JFbjv686UDtLT6/kjcWHVa3zC19KPicF+FELpY32XM6oszpxRm5D4lV2Eiir
	 /AAAG+HcSm9+YiBpdJwSHBQz1Dtlq3BuHc4SADnfyRLAodeRizNzydxtMv7ZWczsvW
	 fjiYWjxQURJuAqeUhhHKw+OpGhK6vphZPFrgkC1bJj1YR42dxcG/1eeYj5Bk/uXK4j
	 UcReB2QBIlg9rBinGl4UssZDKDyO3Vlm6xE5Ew/oQgmf3GEBWvK92X3Ej3hYC8jHLN
	 rGjvbhk6wNUgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF0FC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288139358.10840.15155626605641179198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 520f43182af4affb4cd8b37be3984ee4628591a21b1c2ec76ebd027a65aea9a4
Date: Fri, 18 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752881393
