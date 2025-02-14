Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37695194C96
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739559534; cv=none; b=bmSLaxMDVJ+UnfJMM/Ve7yyByaSK/HBc8baKhl0+Bsr4gd6ZInheTYVtLGS4nSOEQMg3P+Ml8B4mi29qGTwLYwqVwcXaggBLK5lGk0Pxad0W/wc9Ptt7gymh4Rhxu5LgzeaTm0WIzn1CXSiOYTlH/sMiYGB6W6x6BOXnbJmBmQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739559534; c=relaxed/simple;
	bh=f3384YAFzJLBgdBdatGgTMK0G6UWWiNNOFAGTfI0vT4=;
	h=To:Subject:From:Message-Id:Date; b=YqOC5QuxY8BxxrZZAW2N4dMDIcwrOzmxgHGk/QJsz4kSqnO289a3w5VHhEuS5R+wV/Ieva6elF7JPeSmDvgOkakkUY4y8VbiMTK75z89nB8PIGo30Bgr2SCZ1LQxuYkcLfy1FffhOS7gtOzcb1O4V/Sc9CvFIXdUf3Ti5LQpmWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y60XbnvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y60XbnvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5066C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739559533;
	bh=f3384YAFzJLBgdBdatGgTMK0G6UWWiNNOFAGTfI0vT4=;
	h=To:Subject:From:Date:From;
	b=Y60XbnvIz9CQagYNoAa9/XMo587tXEgsGXpGal62wrqO5/81hWOIw8p7av6kaY6kc
	 sWswStE3Szs3xGFuWEZvblq/Mmd0nh95PTO+iN4dBCo1O5dRlAEw35R2uPgZ3plbP2
	 oHSx/i8q9irsbb0v1py5pgmtMzRn2YJwBlO3eTLXdoB3MhtFt0Db2guRjIOJGG03Hb
	 ZApbyT9HFEKBkWFm7eyI/95lA32c0ro7M3teLLj3Bn18rLws2JLrLvBBHddluw4S6M
	 +duvIVQdlYeGFkTuNAU7aI9LgXqDVbBOjSsdXzfMUa3553zIqzqeoX639DpJgYr/Oc
	 m8Y2pvwUm6GAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9646FC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173955953360.8053.6341167356832706964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7c3cb35a2960cc286ad9d988b7ab45de3a3b9e38f87244a6f8c394dccc6efc
Date: Fri, 14 Feb 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739559533
