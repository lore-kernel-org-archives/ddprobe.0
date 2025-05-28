Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364E1278751
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748428194; cv=none; b=Nbzuu8XsyQSOgHPfFh33yoFuOPmrTw07gQ6MEQJaezRbmeRqk9KT4UCo98b9H+CJ61IukKMGtWoDp1EIvpmwG45s7Wxthi0pDW+0QNWVsH2UH8aVrZyRmS9RJFrEkkSMH3BXS7eOdO9Y7200lUslIEXVOOmQZ0AgyX3kl+WyIQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748428194; c=relaxed/simple;
	bh=B0VW4KN0wtQyDR1Zk+6Wj+aA0ZYatipy2v6Xtpk6Rtc=;
	h=To:Subject:From:Message-Id:Date; b=BJGt+xNXRx63rSpGd9oA3PTidiG9iOXBUuKsYid8YQGUmTQz/eN7F189+w0uWgOxbHNQWHO5c1dFHkvDBP+PPrbyoiF1Hjyq1qsfsPytoFid5zI5LfsyjF7bLuOa/iIkXS6MuUQV0smwXp9e8m8YwXcmsew/+3niK6wtNXUIb08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mj2JxNeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mj2JxNeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A131CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748428193;
	bh=B0VW4KN0wtQyDR1Zk+6Wj+aA0ZYatipy2v6Xtpk6Rtc=;
	h=To:Subject:From:Date:From;
	b=Mj2JxNeK6EUERrMdD52VsV4nm1HM6inlw/jjuRIpvvXYiRyl+Emk4kfJFewdg/0WQ
	 skpUibSwgmzz6dqsdK3DnfkYgpi3x7hd9d7uzjRhNIZ5BFGXYZb3/WQbZuks7cdnbu
	 b6c75G26x2WlPVUHmyBiAeCg66Pjf9uZ37Rq+UN5fCs932Jo8o1g0OyZc3VGA2+f7l
	 vPNwRRYWU/WzrV4JiB33IVx7gRTbILldy0B87/xgMhex71x5WpfL29uyzubrErN6pf
	 1GHVphxI+mtJYSZCuevQpPuOFcr3Y/yPByBYnFunxN96nl0H2xMG0Ts1o5/hrhZ4WC
	 Ckcd82ljd5JPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB9C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842819358.10621.14618498192199726419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cafc91b550b09afbff36bfc11c931094eb58ca9b9810ff0faa104c0b6e235d4
Date: Wed, 28 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748428193
