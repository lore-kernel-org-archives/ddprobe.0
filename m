Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5F078F4F
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754155194; cv=none; b=pbSalMEQtjVqw8Ba+wh36v9yTenc1K4768Qbeex4X5PV/yfJ/39kq+Z0p/DvYMzN2v9ij/gaJ5VaUxXHCJdxroZENyRUdWWS7luLbehiUiaso9S1g7dYYqaXZd8hnynQT3afVqKnbJ2ZWLC3fkRrcLJs4NVn3XW8ByQbfpif/TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754155194; c=relaxed/simple;
	bh=td9ak/uSGeMgMQ9bLGomv7oDXU6na0zJzOOjj9xqnQE=;
	h=To:Subject:From:Message-Id:Date; b=g3hjZkf4/4WEP3xxT6rxXykDNKmh6SvXMxMGaVRfafG3Z/F4sDNlWWaAOheHJjD7YJ+VO+hi5HMski6SKT7NIBv6fK+Cy2gf5+KuyHcBWmw3Iem6ENmiYlS0IBcjdt5qTl4c1AO5lMA4pu/cV9rFoW1mdgKpeyrfmyQfMhWpQuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOe7jVie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOe7jVie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7549C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754155193;
	bh=td9ak/uSGeMgMQ9bLGomv7oDXU6na0zJzOOjj9xqnQE=;
	h=To:Subject:From:Date:From;
	b=IOe7jVieiD/uBFEISdQf93UnkseW7pfrMweV2zAl7tl0/3IqxeWoCwZMGk5pdPqcW
	 hoH+zzBHLkKuYZikw8XFvfOq7unSHu80AdRVk5no5cUQVJ9qP1EVXa5Q3ISpKn4tHC
	 o+kRPsoRybMFMZuCZpmOtIALudI/PZfoqRQ3HRtoQAWkE9l8wCa3P/DZ8d+zmqLY16
	 Kp17TjblL+dm5yNJCqVF9Z39zTOxiF1wkIG78X3P5DTpVNYsQyAf6SPxZNst+JG091
	 6XvyNpojkUutke1TX8XdPs3h0BDvNLmTjw+yNNlProxIIn8Lc1k0r6BkAREXEsR6yV
	 ObcEbbWqQXQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E38C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415519357.13746.13881525590177631968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af864d59bb7fa3966c1861e8de3514a05b8bf6563ceb82d0de79b288997ba704
Date: Sat, 02 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754155193
