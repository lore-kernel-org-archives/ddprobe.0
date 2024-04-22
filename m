Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF4114A084
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 11:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713786023; cv=none; b=t6fn8S89immhBnRAmmh/UX2pntTlJyNa4Iq3dc2k3Ohm7aR188hPmbHcBnkuSvK+aNK8Ji+DAgLgp5CfCK1zITatTUigisMTBqe5U3kTP5JxTtVujAPSy5VpyC5rDMU1Au4kl9HX7tQQxuVX7kwqsPCu9b5tME7vDiWrMCmQJ2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713786023; c=relaxed/simple;
	bh=eLzdfFW4b33DBz5H2e+89Y9eQG4PKD6maJ3mdIl1c0k=;
	h=To:Subject:From:Message-Id:Date; b=hULq92yS1ogc5UU2OdfzsRbZbfulgqoKNXtCzgh9oA8PMdEzlW7fwoJubfPbsf0kBEmnuqoZedg/SXRqW2FmSDZ56xGggyvvKkmU9sZVmTGhGhShyUJyPxIJ1rFSfXJxlpeR1Zmikhtg3EuD1r4HavzJ1zgqVlr67zqcgJQFmpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcPuwHuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcPuwHuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E521BC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713786022;
	bh=eLzdfFW4b33DBz5H2e+89Y9eQG4PKD6maJ3mdIl1c0k=;
	h=To:Subject:From:Date:From;
	b=AcPuwHuueKZjbUsoamW/y6Hpi3/TLg7LYOwHQjgNw85HUrhYDRrH3PKRDID4hpelb
	 K4YYafJAzNJCCqSDAzaBwskTsqGxXsaXXVRZpNhtJh/hnLaIIpDLAbNRle5qaoouU9
	 8Ym0Gsr3hxuzWKWeP0jOrZRsuQBciOZWoz/pemXwABUK4uksspYxHup8egYLHA1Z58
	 8cTBvaDAkyCmPpCt6uNCE+Fg/tJZR/QVV30fty0TBePjzIjJ5VCge/YO8PZixTpHEc
	 dRvYRoZgmaNwWFQ3D0ffsPyOewxrua7TqGZfK2JGPbNIl2IWJcZdbXKJWhiaAh6FCf
	 Wt/sPgtyB8e+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC853C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 11:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171378602282.13315.5995496292454813024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99893ec44eff80936612d5ce9db966fb8a72f4c448aad877b83ce37f4b9a8e09
Date: Mon, 22 Apr 2024 11:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713786022
