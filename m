Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4672382
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753750194; cv=none; b=gQR+n3MYo14Xnjb83HMlLhlwthZd4xK+lZ1Ux9Y84PchRm9/u6J7VqMxK0AKw4FtVVCGgquUgFkFLr1A2+er2CRDRQKEqLv7i8TteIR7OH+Psf3ZVdg57acofYp64VAJycYkJolp2y4CQ0sJqtgX8uYUlZJRc7XWfmXqoosLC1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753750194; c=relaxed/simple;
	bh=WpO2b8rUQqynGnU8GKl9hPArx7ms8VUf4aHqy/Z/aw8=;
	h=To:Subject:From:Message-Id:Date; b=UZFcObK4TJ+/CfxQxQJjQ1rpSVnwU3LhNL5dD26XKSKk3TCMXtkZ584UYaopMpQOvQAywfN6d33mtDolEvdnl9MM4r+wDftMEA+YeoC5ebQ/3sQKEFrbv1cMk6X5AQDXquQcOC7gKPKIQ9t2lK2r3EDh/25Z7ruIjIRrrrjkA2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXMVsm7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXMVsm7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A285BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753750193;
	bh=WpO2b8rUQqynGnU8GKl9hPArx7ms8VUf4aHqy/Z/aw8=;
	h=To:Subject:From:Date:From;
	b=TXMVsm7+6xsdbfpXUvanARME2z1+x+MRMCJ/XXM8VSfNkcnK1PqlEsh5rgWmtYYMp
	 LAGU5+YMtLuA0+Frnx7X8+x9hCIXonUJ+0+c8m4r2NlxiLlYFbfB1k6xWXf3S4sjh2
	 Rc9bmLZ6OTv7SpwlOeNvib24nTcVKClw1sbOqYPMDzzwIYksg1x7LhwtetLZjxKUvj
	 +Y8CMZhQLYShiWgyGjxchiVn5uo9uZnASGvKNwXVVNM17MF/Gju2W4wWwd2EOoaV7m
	 oygtfxO5X27wkwu1dAx5eF91egThWho8ob41dFvlHy42eZgqF+PjYHXVW+nHbUm/BJ
	 66L4ixlPMKgIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A73C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375019357.5639.8666266880957291779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358eeca1f9bf486433e37184460445a470ad7f3e6905d63b512d0245408c6095
Date: Tue, 29 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753750193
