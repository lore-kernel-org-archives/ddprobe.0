Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666E0EACD
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787363434; cv=none; b=q8GCB5JTl1AvRB7r7bXheYdf4E0VdgDM7uM9iG/jVZhqIgh2Krr6bPtD9zY8HWABWWkOTrFqB6UyhUJU8aQWToL8lnneawmyhtTpAtxtIVNNPMOzySfaKFSznRP/N2uSr4Df8KSXHj83vkHx1+bIXjoaqsq6V8mqmRxEw6troRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787363434; c=relaxed/simple;
	bh=jstRkA5W8rRnJdUFk9b8I6lHVLsBFfhivY3dDL8cz1o=;
	h=To:Subject:From:Message-Id:Date; b=jSxdDOZnIYnYar7XHsgqcw2v05I4ewdNRzBPP+oEwhWY64LyCEpq+QD4Ux7CRJqGBClvHdn6bGd9RMxOBwJapVxUvFfTPZMJ9x9cKQqbLVUztQFKSH4OksJTK1Mor1vljMDtXuYFroV490ORNp19x3zSuNUSDZ0CENTXm2QJP80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oM0ONJ3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oM0ONJ3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBEDC19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787363433;
	bh=jstRkA5W8rRnJdUFk9b8I6lHVLsBFfhivY3dDL8cz1o=;
	h=To:Subject:From:Date:From;
	b=oM0ONJ3B8nwwRb9RH7VYvlrSuEyqGFH3VI1gJ9Oh91h/ANMFtI6nIAggWTzpaEN/J
	 iI5JQ28DffHgI8L/E+QjnCeyRpNMwsS9zeZgr/UcPjCb+t+bZQUkOvecF6DtfsM87/
	 Xr1+BkdYtclyfOsj6LOfexM0Z5GJdVfFxvCIQ/37DUZGC1IpXDFAiOOTO56hfcAClT
	 BTj/D9F+crFLlN+zvhK5QcUnjfZx9KVK/7ExMvswlpBismgbEth182tWBfY5kBgkOz
	 VIISPdrqEZEuup8QD0aAwND/hOCpKVLeo7a2DK/RM2JV+UkAKGrcisv6B0FBs+tWGY
	 sOd8suPAefdqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02BAC5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736343369.22128.6943196466500660211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544cdce23d9e7a1b67e0d2c6cc582f6247420d6b272ba6a500eb012ae1f4e41e
Date: Sat, 22 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787363433
