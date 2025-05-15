Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB137298251
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747309793; cv=none; b=AXqDma3l3RVwTFo1zU0Sw4apR8nuOQebnjgnVJBAO1ZFCzBCe7NZob2hBO4sb0NoWSKfuEJhk/k7yOaEd6oUKSkFOZYq0CA67Jj67lDnnXlnj97MVi//RKeyojcnbiXE89rK9W9UhdGuZJHTM/RzYLqA+lcBIaEucZCo8CRNV/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747309793; c=relaxed/simple;
	bh=lmYDv775Y3a3HermK+V5AzXDmtw3jFn1Rtlx3mDAkwk=;
	h=To:Subject:From:Message-Id:Date; b=YVMi52jOfXhTR4VRbP4fHEmtZPbl+hyMh45JDiJ3JVr5RtBXmpjJ4TPnqw1NQLJWgSLuyjsWE93zEQ+Nw4i4FbsDGa+uPEp1TODS+3/tdEDfbeqf8MHGLNrZwAqtSsFukxzmxG1ZOLpczk551A/w84eNfqtYd8dvv+6o4+Pg9NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hz0sxwEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hz0sxwEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747309793;
	bh=lmYDv775Y3a3HermK+V5AzXDmtw3jFn1Rtlx3mDAkwk=;
	h=To:Subject:From:Date:From;
	b=hz0sxwEwLQjwWt/S15EIXhOVpT06qLL+RB/ly3IP2OwpFRjA/2sVPL2Fi4zkk0mHP
	 qt9QYOtlSaUMxf1LCZY4Uyq21aHZ+fhtWkikNh+0Sb+u7JKIFFU2E9owwsE1W9LHqO
	 frLF0a5k1SmrTzXjjC62H8p9T1+F1yZPhogkyS2jRGl4HOuXWH8CiQCWM7xJEGoamU
	 A45KQ3SRardDO/3dTQ15qQH+9wR82uDWAit202bFo+aeCnQkqyOcH+pYcZaK1zROeB
	 5v5ONcRxaIdN4DxKw0HLFtgsm4EG2Yx0dxkhIBFQpSIUkf1hBWvZy8+yBlml4n2EVw
	 ea2lT8Ht5g9ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C6C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730979357.6933.12490549356930618022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44affacbf63224699d0241d4941817d0548e8de51a613cd1b3aedd6523012e60
Date: Thu, 15 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747309793
