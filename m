Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82AA2E2DDA
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757543993; cv=none; b=r9njGExSdgzB01P5riDFbCwQVaB+SMrxk4E3segMXNs1F8xNcljgwreNEaFQnfumEG1iJeYl9jXBxuEB9Cu5pd3QjBhtPysTvNLqzqggLRwb+gG6oam79e+K3gHCFv8quDtaHz95nAWzEwRB9vzb3OSjOyLUuHd/b0VDn/MEgRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757543993; c=relaxed/simple;
	bh=vUx1VbyMMi3kNf0X3IMm18Nh2bOGjFdiG5oeV7HRf0c=;
	h=To:Subject:From:Message-Id:Date; b=skEkktJDKxX+UKLJEN5iXNSyM39kBrMF3USMtDj0zVxgSn0+Eo6UN7sZlF03V7cWJNHqBoIZOu7iZ8IcTvP4wd4SLA62Nim9dkEiTFINTpAXSf89NCW4VkcWyHx7CHLE9V4bnPS+xCpOJ6t01jE66QgWDTgVVtENrAnicOvNArc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBrrDsDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBrrDsDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0311C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757543993;
	bh=vUx1VbyMMi3kNf0X3IMm18Nh2bOGjFdiG5oeV7HRf0c=;
	h=To:Subject:From:Date:From;
	b=GBrrDsDj/l0aWtmByDdyPTrxT6naFijkq/mJrjU144SPXyIuuzA3rjYj7qiYAm90a
	 BVjbSeixIeuEXk4tf1z6hbWB2BoPdpmTv/6yVFOyMciHMWncjVlYtT4qLjF2p22yel
	 5XWE6l6ppnh/raKXQGnU6g8AF6B2GGtRWhSSorbX+k0QDwvziYoHoR9xrp9U29Qg77
	 Xw26DacKsWpeuuzpaM/XoaHOUAzE2/lWvpXBto+Jz3jlX7YCYORxX3wMcyT9B9Shbl
	 EYDPzzRX7LAVycGmiHJhzrEu+8BsPrMc1u8XbCLlzepATNr3rHiDigdvWznW5b3P7P
	 yhUyUnesRq7Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFECA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754399358.6052.2112904489164928399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1689694ee3e264ebeff7ae853bdd63050d04666ce85d8dedebef00c25d5ab711
Date: Wed, 10 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757543993
