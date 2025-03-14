Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDBA166F32
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741981735; cv=none; b=P3zFVYYQcQ0m3vq7bSHmIf6VKM06hh9DzjdGhjuzsRQ3Rv2l2znO/gRPkK1AOAdu/bJRtqnykKujIX0Sry5JPH5J8I7/3SYmAoS9WXgs7QmBcVQNRhS71sUPFlSrwhVqikaOtJMqiRcn0AgBK29XIAkUz07mPh5tbJxKpLTYgOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741981735; c=relaxed/simple;
	bh=mF/B08UoCashRnfLVl+CvF9SRuCEAW0NRj1dqFlLqa4=;
	h=To:Subject:From:Message-Id:Date; b=tNYiVSOxTXSBFx9SHARrBhBn4hGKfbKESBcRZR6mF5sUiW0e9wGyO9+bF5i7akDtsRrCICMT9EfXjT3sCfdX/F1VPOLmiKDFEzXwPfLqsWznx/PGfMH3IthgXC02lRZWpDNzGo07dd3/MQkyEy7ZntQVHakIiklIO+xBr/1/ux4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUnOgKc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUnOgKc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BC1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741981733;
	bh=mF/B08UoCashRnfLVl+CvF9SRuCEAW0NRj1dqFlLqa4=;
	h=To:Subject:From:Date:From;
	b=kUnOgKc+YGgoH/hw2GUDx81z1QF2hFyPn3463xTacAqQID/l6UcSHl7mosHDIVLzW
	 uQF+Z3OqYwrooVR58efWAOi7y74ZWpGc601W7i3+qtAGsFJeFTuXP5okmfPfi1BX12
	 G34PBlmSs5hlPOxytX3w7siYhjav+cVHOc4PsoVsEXoP/3AFu/GQH+eqaQNAN68PCl
	 SX5gmu5+IjDVrIj65X10S5PtNdlvrLM6JIeKAFjQrXj6wP9yl7nR5mwJDV4MEsKZhP
	 c8nnB5IwLkQYtsbo5P+ziMDRrZry2RGy8Vf66dn+KMOB81EoH/2eQwuzId7HmbvBqA
	 nSyoo4MthRpyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DFCC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198173359.10107.10602744368785281267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54a2cdebfd64ece7f38be7e574fd15d8f735864f8b0a3dcd499f96627f4ab60
Date: Fri, 14 Mar 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741981733
