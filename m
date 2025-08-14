Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154F124DFE6
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755206394; cv=none; b=QK43m6xXKi1WptGKYfmLBTHfCBQI3n5XOH7TAQI3CS+cau3Yq/I5hmvqXUlF/fS6AW7BbRGX0ISDSjbmyXz8w3wFtVeN2bhxisP4fOFHbsN1MjkUvstVqhn4LQm8G+xaN2CsFW/1TFcA8OU9sE01i5QLK1SvaMD5PddNHTjJeyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755206394; c=relaxed/simple;
	bh=Lnf6NwT4GwiHIP2FHN4NRhA5wcEz9gE28/me1FE795w=;
	h=To:Subject:From:Message-Id:Date; b=Ztx27E102IdOHD00ywpeLM4hClzgZ6x2dRuazYKsQV/mAxS2afWh0SqLn32yxsS3b/bnbZh+w6/zACNvKj1VE5nSd8rKaoJgUwhuynEZs7Xm+dAHb1k1Xzr8QEczcNo+NrayGD1HxwslAOmRgi2t64ZM9bbA5M4oXSJ0w6WEg90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0r6OXqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0r6OXqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFC6C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755206393;
	bh=Lnf6NwT4GwiHIP2FHN4NRhA5wcEz9gE28/me1FE795w=;
	h=To:Subject:From:Date:From;
	b=c0r6OXqUBN7sqy30+Z4yZIISaDSU7DQH+50BpiTgLC65mmKARUB7UwGznxOOVBRoC
	 pIkLHEPXGg1v/t8Cgxr8txzJYb/gKxi/tg/Akna9OMIDYCzhXfC99pf+cgoD2ul5K7
	 uyMSr1wIcPJbjIf4wAFdUD0XL/0nBdaxszyTRJ+bhBiAEVJjI3ig4D3CzBTtL3xpMj
	 p5HfdngilOuP5lW/IgIXKrzNJvdIOtgN6ycHHfB3SknSvOoMukpSGIoILfet/yBs2r
	 XHYmL5Ga6UiSpAj/rbParKw90C20/9wb3xgW+q15L0Dqg/HeyCDKhHb9y3wJD1KNRe
	 9Q+xvzXGCwJNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E890CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520639357.10557.16411932896141251795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35efddd73c14c602adc70b40e6640c60a243392e43a6f4a4913d59e507434d9
Date: Thu, 14 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755206393
