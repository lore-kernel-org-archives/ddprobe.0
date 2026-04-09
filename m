Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1928823AB88
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775773054; cv=none; b=PFvJFygGHn5MMFpiDKmJASPZ8nHqtfozuz+ijNpn1vDvPHcq7RJ4xsgLpdH2FORELloyhe1wVOsCJdYohpkRvDNjJgYVh/8oBlOl1Q1ACmjCoQ2jhO3AMpoiJpucYTMqLkcoXEzzwBCFlWdE86Qxpsy05Ke74VMp+F/s0kAbK58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775773054; c=relaxed/simple;
	bh=uuWm07vjaC25vzjkHq9XWZXeHQruQJXlL/1LHyDb19g=;
	h=To:Subject:From:Message-Id:Date; b=ApJ/kHBe4cNfqFEka5VEw3Q57bxI8wwWNmhvqGgPD/PJEsamvc+GNcqdMZG/rYXEln0Gudsq6FFCM/aHoP7WF8EU36GX8vkSHBrx/t2lhlplsNtMm1R8yBWYOAcDrZWiy7qKELkXKK/LQwM9yOFWO99uz9KHMTTC2TxBw/W/LU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Itl41dFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Itl41dFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF737C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775773053;
	bh=uuWm07vjaC25vzjkHq9XWZXeHQruQJXlL/1LHyDb19g=;
	h=To:Subject:From:Date:From;
	b=Itl41dFquBeSoRFTbMwHSU58VOz5R1a6WLFTMgQ4J3Q7LiJ3U5Dr43TaY3gZ0Leys
	 xkGCxzWny+Y8aEhpbaxYN4pRbsEncnoVX122wxkauZ78uWwwsLwPOBRLCaEY5FLwys
	 jZW95UfLxQS+jbVgkNuFb91Ks70jsicckZO2eVESdWANW8YDuM3TWQSa7mcOw04rYh
	 8H2S+9onDVlHJOkwhDQh79UOemaEOPKYFyZHzQXlGMIxakxegiHm77jPvoqPNuiGK5
	 wbA5sdkIs9FghcDmeKv9gMm3R5p1Y60vt6FXMLUaCPO/QeF3pXvorwvRu/nJQMV36n
	 26rZpHFI2+hqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC465F364C3
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577305368.26699.2672522252208099845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4cb234122ddac1c1b7a11ddaf11546d675a532ce7826aa7ce6416c554cb11a
Date: Thu, 09 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775773053
