Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD678BEC
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743814794; cv=none; b=IkZ2PZefRnU45hr8k5mVmc1Mqf8IhTSd2CJs81U8Br+kXEkBcRPCywmRYseFBhrvW84O8IcSEDbKdfLcfqNQZmtgzSMIxNfTK5H291fPcA+fYKAkbYhsXi44yIcdtwHbmYRmRDwgYqXolykDv+4BdL3BdIy3IomV1uGlr6vA4dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743814794; c=relaxed/simple;
	bh=bi4i303eM8hvib4T16ygv7eBcSc7PEN1v58pxUAYx+s=;
	h=To:Subject:From:Message-Id:Date; b=ZFmokjGs1qx09t4svRnMu+TagA+ZuIDwN0+gxCLeCRYiYP+7Y6s2pHN6SLKwkNjmSUJksnaw3JN3iwgZ3lRdRCTFFoNOhW1wshh3/93dSPrhdgVFHHoMrUyaMo4tlRffTXUdd2yofKGI1CqAFs6z82oZaimilReyKHLpwrPvzCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPU71ESJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPU71ESJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29D4C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743814793;
	bh=bi4i303eM8hvib4T16ygv7eBcSc7PEN1v58pxUAYx+s=;
	h=To:Subject:From:Date:From;
	b=gPU71ESJ+9S+cL70j0FVflm6h8rUrP1eR/UfyjmlbmXCaOrd64/93oKtRkodRhh4u
	 rlkvbES/635quR//XcGD+iR8vTzWW4J5mcvXIADASaPU8K6G0gnGiic5hmbTKDmBj/
	 uO7AnLv7vk9N1rnawQaO3e+DlnXxI6+hkXznI3aRUz8y0kwlm9pf0Y/C0Av11o53eV
	 YfLvp06d5tVdPK96cfj0Lg9byi2rlkq7i4hewi+Vf6pdzBWn39sVvVXcicxZ7Fiwaz
	 FXYyjYb1I/8dComOSEU4qtyPZIGYFkdTTyaG0Evtm69vwOmnPpsRNpN05Q+45GBPh+
	 MMVCLn8TQ8+QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09BDC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381479359.20332.2468434020677481628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0106b3cf4f2f6b0b927f2e86d13374982bb040297b4629957dd0a1a104452ad4
Date: Sat, 05 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743814793
