Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61111620
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 01:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721265323; cv=none; b=pGQsGdY591cVQ5U+ESbU9Lcn0J0M+htMDJCytHmhViR3mEmnd5sSg4lm7yQGqTFT8gNwkdPpDgszDMs7wYwIl3sAf80uORipuO6Jn7foH5aem9JbOiSMqpCbc5Ve7cEwtOXaWF9njkPfxc0GO0c+oe9Wc9pApkE5a/2Dvy0apbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721265323; c=relaxed/simple;
	bh=vanTuzc9pjTmUzYNAd2sNtf1/onPnMXN7ese5uNoV2Q=;
	h=To:Subject:From:Message-Id:Date; b=aTEaiDuElaql7zCTi+5q0hsFd8wBu5TS19kHOZj+9rXXoId2GrwgRN4pR3dS4q0yVHe/qRP/WFd1Tdbv4kNYni9/00k65PEIIjZ9fE/jCiRJCbh1VvJeoDxDR1WPeOdoMVs1F+gmAN6RCT3YaKaGMQ988aDL10tg+pZZDti7eV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dd8C0rQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dd8C0rQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F07C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721265322;
	bh=vanTuzc9pjTmUzYNAd2sNtf1/onPnMXN7ese5uNoV2Q=;
	h=To:Subject:From:Date:From;
	b=Dd8C0rQqH+kp2gd8+veiBpBwNrFVXUVDys8PPKVgt4oJd45qNzOkARqU9Kypgtn7H
	 ao9eiQSn8bSmI4NBvf7cYa5g3qsUKfaMLUygtvI2+VLRDB3LOLd+U/89FjTF8U9tUp
	 6/YqZjwSWqLZAr5riLAePsaMPTFZowOHAzpQ21d1xRQDnf/yyglrmjhqVleE5KHEHR
	 OvaKGTbG+pMYly2cE1Jc4TaV7daqy/s5sy78LF7t6vy/v8c9TvSByU1wagaINPjalb
	 SItjUz4xKDuaG+ewjwDaCsI9MyqTZ1PpkPt8LRGmItv60vLKiu5OzG3KEFeRORoQbN
	 AYyYJ73FuuQ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD88BC3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172126532282.12654.659487846277930307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6ff11a38cc1cdab99c106c2bb1ebd3004a764878800e98b101f3db9baedb82
Date: Thu, 18 Jul 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721265322
