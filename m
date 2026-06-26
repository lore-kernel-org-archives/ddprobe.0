Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AFD3612CF
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782446254; cv=none; b=bXSmFo4MohNwkquZrXnfWOFkOCDt751hAz2UUxFv/nUxgYrtOOPUCBTAhLogdHovY0A3LP1f37vVJWFfeSPIN8wQn6n8AUo6xHgDfgMZ4W6ZS7d0K7CIviZoBvXr3Yf8Vv73NeT0Cx2I9pfwWECFNABuBVO19m14cv7TCex+81g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782446254; c=relaxed/simple;
	bh=4sZB2eZKWK6lWMhlhvareLBoXov68uCU4rlD1D+G5EU=;
	h=To:Subject:From:Message-Id:Date; b=Rp+p4vFNz2LGCZ1ierndCZ6/YET1WZUphV1jhwhvbco1UWKEBRrqqoHuU8Bbzl2WUsjQpSui4WaxmOnFoMYFk/yCQivjDlrZhltQCzqndo/l0CuslymdSgn0OyMzV6v723dp5ue6mfmN8jR1j0PYSefwNcKNIeNSygpcHUjUnD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLXMN/ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLXMN/ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FC4C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782446253;
	bh=4sZB2eZKWK6lWMhlhvareLBoXov68uCU4rlD1D+G5EU=;
	h=To:Subject:From:Date:From;
	b=WLXMN/ts8X1vv/fxTMIC6RyQ2gGIBqFt2NN3Vc9xKFVB6WdQxFvlvDkNr9sBFVp7q
	 BoJmP9cQIYAh6+MtXUkt/dsLkl1gz1qf//voP3Vwwdk2phWtTdUo0ca2E3+BAq3PFj
	 NsUmGbkAUiFDOiBpXCf775aI6iL8nIWbaabg9a/s7Qdp/8Kq8q8L53yn8WRaJrxfhW
	 RVLMf2n5x85qWJxeYXXRh0M04gb/NZAG9WoALy6lZc0a+3cK0t6InNhWxtb94H6ySx
	 L/YhSprFAAVq5ViaGGwB8HOB2tmAlfjx0dCsBHCLEC5HctIJOX/DoINE2AZKklcZKs
	 F3qCzZucsewew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA6DCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244625369.19984.7126250833321265996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d311fb18b4fc49c9e11119a696c33cca24eee6665ee3aab29dc51fcfb1f00aca
Date: Fri, 26 Jun 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782446253
