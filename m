Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A80046DFFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787946034; cv=none; b=MQuoOCNq6nrSzFM0V2n9g+3RgS8Rl9uxPL50PueuDZZ+nn2jhepjPDd7l2fgNay4ku5MmAKwGNYMpYqp+nWbyc1N98DyLBfTeIcOeC+dH/cD1SWfZToSOWV1CuJam0+z6qXutU49QQni4RCOEeHooTKkwoBt++TwxiVnLPxmF3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787946034; c=relaxed/simple;
	bh=rSW5wC1TcLv8jio6gh1GxHcBM+hvuapaalo56EIsc7k=;
	h=To:Subject:From:Message-Id:Date; b=BMIAPNDjiYSfoyX44269BrSygrayztiOTTenmaK3Xizdwb9rtee8tDKq+j4d55ACFdiCqQftAXiboBomO14CWvp9Ak/UMVEhdbvQW4rXBxr0ywmoRVaDSLB+TvRcTbPD/ZlU9nMyKCoFvlJ6keGBoQq9y1yevrqQe6+lICCyobc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp/EBTPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp/EBTPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21CAC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787946033;
	bh=rSW5wC1TcLv8jio6gh1GxHcBM+hvuapaalo56EIsc7k=;
	h=To:Subject:From:Date:From;
	b=Cp/EBTPEcjTLEJGBhCDBl62bQjLba8+PJcb8abaiE6CgckwukyyJrVGj54U/gZfCz
	 9YQRn4SjUfRaAfcH+kqArdRk2dV3FGRfOBc/R/HEZVxiKfPaNBlBliP0U01AgpmNtL
	 3IZ+N6k2yJ2TPr6z9m4HdNj6ouXH3C8HPM/hJ+5SsWtgFScwQu+MleUdfmHm++m0Ye
	 +AACIRRsM2NNhYURgBDC9UqbTVZ0MxRxt5HT/g6rlYk9R1eIjHXcxqhXZy5k5ObI7I
	 xi4YZIcyM3ErD2a7D56fhHaEA14fCDfLbW1F8nPvlWD31OOlDsTJ/axwXDKNdIq8kz
	 TNb6P8b39dRfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDFFC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794603369.16114.8532934027559069161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a66710940691403794ba3deb5d9a8794008232368f892233a8a62966ee683a4
Date: Fri, 28 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787946033
