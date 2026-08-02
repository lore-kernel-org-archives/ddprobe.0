Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0661DFFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785690634; cv=none; b=fQwZkRsYGFS81AM/hZNISOOmCj4JkA27BaZSWtyRFQSmLZh5bB+7pEasVMzuT0nlnRqxAUoZHNwrdvJ58CaaIVtNDE7lVIXY5DzFWRNagKu3Va3ZL37caUPGK5zwTSJHa87k33w3gqq2z9csJQnVcsM126/J8peur7r/zf0/WtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785690634; c=relaxed/simple;
	bh=IpBe5Z1WJTnbuRPQoAlOYAt2dN+FyvdkeiXfVTMZgkU=;
	h=To:Subject:From:Message-Id:Date; b=a5MbrxCJB5NNRwyn2WI5163OYqiCQnJG1yagyRGNLSX1FYg13DxqPePxTwMDC8YctMrYvThRhjvdGo+ItGv443E+442OgDe7kh4N+yxSQDtEOXO6LNB+qZhwcInekfbpgo0A7h6vb5kiYKxtMwRVeX4nJFurjA7NeHZ/111c7vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tApel/KP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tApel/KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D562EC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785690633;
	bh=IpBe5Z1WJTnbuRPQoAlOYAt2dN+FyvdkeiXfVTMZgkU=;
	h=To:Subject:From:Date:From;
	b=tApel/KPUrBtFbE5ENA68DUe+au8AazesSKzmshuHP+me9VgR0sfq0AAOsZxdyfJn
	 aDeMCJlfrk2K3pAH8eHYV4xvOvqT83x/SVEYw2DGd/VWfw/8dFhxGbOOcnfmqvrM7w
	 ESDcS0Px4RbdoeBC5qNwDmGguy9/VAOLcA878s2s3cnAlmhzpzu8OQdL3QFa0uf2gL
	 oMbJQY3ifMdyf+UMqwiwwOARIGr5H7yKFpBUC0qW0X3le42ENtNzyhYFfUHvohV5FS
	 sdA8wWtC4ok5L1jVLo0mayq/KB93tBOqbxAnTW0BKpKWwz1i3wEWMa3OHp8lLNtGGC
	 kAuWE4+Fimxqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6AFC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569063368.1997.18163780021219647470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850665de30dda698bdf99acb33795695f7d7e37c862eb8b488ba1dff89c3ef4d
Date: Sun, 02 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785690633
