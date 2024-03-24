Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D5819E
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711248497; cv=none; b=SWzfRCHJTUSRvAzUZyKsO0o5/oTf8F/aHYdDyxzX8Ha61mTjMe9Z9kc6F6wm8O9adMPjs5fUxaRYJmcMVBVBtK59nAI1nd5uXNjEBt/NioVaIkqaZETEN2BXhSuzbzZ6q+7EhqI7qi34kgy5tCv4wWnK57hdFBGzr1AXmKuhntc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711248497; c=relaxed/simple;
	bh=vYjQ1vVKgtxIxbZs8Cacgu506QLLgoCtGOnDFDpNx1s=;
	h=To:Subject:From:Message-Id:Date; b=KAE0mhObUuJCK6z9TBJfrBaTkoe0bwOJWDqanrsgbacva/KwKZnfm71zrGqCoJcjE5wLcapEbi/+jDpu8hLI97P7RH+FHktDPKHyv1+dzYF30dZ/zOwO2LlLQzcFX7+oBT4Q3EyeQkleodHr6+FHLa+se/O81Hc2Ye8QOO7n1U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyB4XewM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyB4XewM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E92C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711248496;
	bh=vYjQ1vVKgtxIxbZs8Cacgu506QLLgoCtGOnDFDpNx1s=;
	h=To:Subject:From:Date:From;
	b=HyB4XewMliazWRGEm8kfIOEvp84o9DVQAwUCWm4VZ2vx//nwh3sOR+eIx4ppxpfSj
	 G66gHCuRkaMiZwaUI+DXPrV+Mf6OJJwG01El59U352cQlTwxsogNw1MDpPOcTqEnEB
	 RC4+03fmmOso3kEPvUXI089Ci+HGDvsVvLPQKjTs7URjxh9c9GXKzeR7R4at8L72uz
	 cKoSdGYtEelX9RlUgpO9g2GbCcaizi/Em6BXMEVf/n/5K2gsmq7DjohKPlrjY3b/Lv
	 suXa1UGuIZmrmnAl2+jpDs5hWnRk9eUsdNmBGcAF3171SP/2570hCzA129dc6xmTbB
	 1duVUN429zRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74AAAC54E67
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171124849642.18936.8282241012757786251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cb0cd8076d4c7462d568850f9d00262bd0fbdaf6edc0bd6f2be116984b232a
Date: Sun, 24 Mar 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711248496
