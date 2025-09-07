Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AACA2AE8D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757266795; cv=none; b=oZY3a0XpBRmHl7W8XluWcQDgg77MO8AO2U9EttAbGQUwM0PcUuXv99yJ5q6nBWrPA3emqe5mwlR7EHHacj15H2TmFojqnQeE+bJZ5xCYsuBMG/nLTQqkvRoiE71TkHTL08zh9VwHwCFrljonyPSpR/6fTytUYj/yJjC5Le+/KF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757266795; c=relaxed/simple;
	bh=aZrRrTLTgHovA1UbRkAOoZK+uhvAi1FFtoARDMH6vVY=;
	h=To:Subject:From:Message-Id:Date; b=gp9Wkbl7DZJbEst4kptLO/dQArWl0h7bZOJrue3sI9/uDg91CdI3BYnn70xTNFvriiLK3iqzqWbT1fgLAco/ldHdkZO1GHZ+eqVxOFZgCEgGK/OOBZLje+Ew+Pa31QMk2HZIoCETcJfr7oaDO/nfExVP3t1dIwjCSCfbzUurMCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqzFCHAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqzFCHAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B12C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757266793;
	bh=aZrRrTLTgHovA1UbRkAOoZK+uhvAi1FFtoARDMH6vVY=;
	h=To:Subject:From:Date:From;
	b=pqzFCHAr1wbF2YFCfPNLIpIlSeol6DJ4DdDkMlTyTH5Lb8+pWIXZj+pRhxdzlhTtO
	 oTf5zm3HlUGPTpcCyEXjEB7Q6life8OxA1PaGoeDqN7BQ9FErV26L+kAAnVB//5BYS
	 NvNVzuiskGhuWplYN2TNqQdNtTp2ogb1QDQViEvOQyCWP88BV1xgW5+n5hA01ZiUYr
	 KnOaaosmxK8qTssT1CVRpjQuBiJl9CgKCiUwBlks2jqgDGvJiUk0NiMr8cWK95IvL6
	 t1zp92b4vU3k+SSS7R0fLFI09Or/bYcqtTKFyW7iKn+YLA7thJ+pY1yR53F4Wo5MDv
	 6/iBM08dpZQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95855CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726679358.11837.59254557242483212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a5f93bf94c3de54a6f3299f5780de4a5caa43ed382e323cc02abb1b6aeb748
Date: Sun, 07 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757266793
