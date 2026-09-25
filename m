Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18798483807
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790338234; cv=none; b=RULtazcbO3M1M0TiUPn8BXAateD8qmfKR4035nEYtL6fa/aWb+6UsTUT5DYqAvdNGkr7avAS3rRnW6AuNunDciiqiTBlrhSSDlgBRUGd6Z8eWlZSNy7kJrXQtQVZRc2/+lf6xBXRubzQFdU5lyUTIDKdG4ZMEVSaMOeGmvKPiHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790338234; c=relaxed/simple;
	bh=S9RbA6f0aGYYYDAO1D/bqPxfCHNji14vwxyVAVZfBnE=;
	h=To:Subject:From:Message-Id:Date; b=C2gonpFqDGIbQpqLFvcYTvkxA3PDEwDIiHpRh1s8iBT2lCmMmo2jAPnP7OsxF68m7KYC8vR2f7jcf0UhGJO9Cun1MMqZAsF+eQnrMd4GvnmDH+cME6NGqZVyvhLvHhzQ0qM2pL3gAhW6PKf9YJKcWowwvckqtSPINu8szdgetgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s071ZmMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s071ZmMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C91C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790338233;
	bh=S9RbA6f0aGYYYDAO1D/bqPxfCHNji14vwxyVAVZfBnE=;
	h=To:Subject:From:Date:From;
	b=s071ZmMi5lEYuLxmX4xDM84fCAprU7TjyUZOWPQ3YISEXuCvT3p0erhtK2eQkH7ig
	 tceLvHiu4hJ1BTHbBPjtVrMEKOGd1rup+QRhNB7vpLW2cJIeSXySMSANkUzxHZtleW
	 4A/GHhixbXHEsHNbSvYOnhdLarLnXIi3jvB3CEgvL1sK52LjG2dFfsxrl/uHkVJe3X
	 vO3Clne9dJdWrMFbvv8vEvb0aqIekf3/nR6LTqlGQ5T5TWwz8jsuWdxhUGbJjupzY0
	 zdEaeYcVgjQzY9V0iu5I4kDEWkfE4d2qmzImepmCgCCAAWSYDQcpYzeysRkr62X/89
	 96cRk/LEAtxUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDC6C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033823370.24893.7216056508701771969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b159c5c14d1a09cb6b5b42124263f2674b194cd8c8fb1eaf76ca10f74b4a1de
Date: Fri, 25 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790338233
