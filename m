Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9470C4ACC75
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788857438; cv=none; b=ndHazpVOfCXmoBVSj50JGVEP37qWZ+wF5vC2BHG6L3c7slqMNGkrNa7CM3Kb0685RIyP0P1EOq1vjQXBwx4hlN0dRckjTO75A3BaAnx1tds50XMJaKit+pHNmzYggTqFbjF5fqecJJWransVTEjcvk5oxrfCXLLxHNR7iXTyTZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788857438; c=relaxed/simple;
	bh=JKjc84JZDzTpY1V1DdlB9V79ZS8xhV3A0GeziEwkBdI=;
	h=To:Subject:From:Message-Id:Date; b=ix7ePc97/x3rJigtIWi8xItTw/w6/5R2hVk2a5e7TyVHPtTr8nFvdgEeq+p6gZ+DKfQMArrNCTS5Iepl4SY7sqOKiMlXdts7I930Cc/8/6LCqm1lAGNzoiVZ6jOUdzQC7n5LQe/kpe2NZsNCaR6BZ4Zp4nW1wSZT08xYyWYnPVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii+9Mm0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii+9Mm0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53CAC2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788857433;
	bh=JKjc84JZDzTpY1V1DdlB9V79ZS8xhV3A0GeziEwkBdI=;
	h=To:Subject:From:Date:From;
	b=ii+9Mm0O9MASf8mXGhMKRkO2f24cJTbRvXB1kRksVj4zqK2v54o2b4puzz4TGwxT8
	 Hi/jWgLaJb+z2KAqoqBT4t51Vp03Q/qwNbPz2RYfVqkGNmmX5Oz/jwkUgwhdjJjEgd
	 QmJ4GqdBIyl22cy7y+4e843iRiOnWTG6Zwzoy2o3ipxsAewfIFKzMGOCgAC6db13x9
	 4ggPp1dF8t5FpDKdvXfImVYxIjSq3Zi0ZosHwDSYrcfkBHEibxMLefnStk+SpKHIVq
	 ONAxZrdcMNKPA5JkUGRbXgPEo5Cw2AVtVDDsv4IaII1wFpnN2orbL+bshMPO6QSvb6
	 iaSkhDOMiSYuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08C3C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885743371.4060.556844706030653723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfdd987df996f55a514a29f8e956db97f32120703d43f3cc3543e208327b2358
Date: Tue, 08 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788857433
