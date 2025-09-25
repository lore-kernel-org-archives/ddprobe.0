Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA442E7BAE
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758785394; cv=none; b=nftkfkHbLLsIJPb9e7/7McaHHbvaJY1S9HoXOKpYjlxPqCRwz2T7y9xLg6wP7ueLyFQL4wqOHCN0AL1kH423kUdfHmVCm2FEBJPrflA4pJpp5rTiGSsJz2ZjkhwKiUk5aeQMGVqN1US6ZSMLd49ZcHVoMdhV0mgs3yI08M8EIYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758785394; c=relaxed/simple;
	bh=PZbMlYY7FiPKRjXS877S6GV0Wg0pvBJtRRQ9pnYDaj0=;
	h=To:Subject:From:Message-Id:Date; b=RUBdPp/HbJtSu53WOYg1WAxNhbjoi7MM7R/3niqkSmbtYjS0BHKz/029jV+JApEwAYd2thJQsvOSF1M4L2bzRqXTwNtor0fdEvi+qcQ4P4L1+LHp6BxmEnf4Cq9asy1l6MzgzGLOt6FCWlZpGIfowlc+i90tNW4sF8Wl3Aeoq+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd2cu3WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd2cu3WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F56C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758785393;
	bh=PZbMlYY7FiPKRjXS877S6GV0Wg0pvBJtRRQ9pnYDaj0=;
	h=To:Subject:From:Date:From;
	b=Bd2cu3WZapZLRULRwXKjBeuM71onNo4F9gX4bn6m5Sy4pfdWY5kBG61BPLpzaudkS
	 LIBT3T/4rCbHKaz4oXwIe6CRsxOoY/ojKN6ijrygJO62UXPcGCIdHNkkb5fuNBRNuB
	 dfvBV5sPJZ9vFTpVhmLLkutTArlTQbsZwo6caCDQGDyeOOx6cnrW2EPzSsTV4OlDhB
	 U1FC+DE12JM24iwfks4omllJ7LbnPq5uk4qnebTEJUMx/KfIyx64jj0gpeqvDBahGR
	 42u2Gu5YI5aYucrfIG3dH1kQxQAfX5pfQUri/twSFK2TzXLucxYG2bLBcjhChSl5o3
	 FllqxPrJ6ChOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A81CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878539359.1591.7901857232644756344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6664dad5e6e5950f8af023850c32802f1aff254c53cc050d5a1127fd3a966af0
Date: Thu, 25 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758785393
