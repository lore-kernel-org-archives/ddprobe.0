Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0553264E0
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787472634; cv=none; b=oJ6Gr7dVCStEkvAeO/294MioGn5uMPNyZmrYIxCJbfr5PxQ5mCZQfQGXskPc4gz3QpwKrLwvWHoCQp2psBN1dORN5SUh3RKIy8XmXJ9LTQ93EyR2aAdkg42HMBRxf68A9zeOHnYyyTi1bWzPYZHbyux7n3TuojQucB5TAzb2oMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787472634; c=relaxed/simple;
	bh=eJ5Lr95ejRHjUq8ZoAjsiyFx9xJhqSOQhklVlPGcQ88=;
	h=To:Subject:From:Message-Id:Date; b=jtefJvsa+NDHrNJ7UVhaDc1X73Y+Ne75d2p6leTjkFEmEvtUvJIZjVVuLr2l7Iq4OeHBDr1P8suEoqtGlu7o/zUfd1+MHpLfzL6qD1EDIxe4t8jNGMBEvs8PrCaMSvFWRs4gBqh3Adzco31ixLw+zTNoCd0zGFk40g8C5wqu4/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngboad8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngboad8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA638C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787472633;
	bh=eJ5Lr95ejRHjUq8ZoAjsiyFx9xJhqSOQhklVlPGcQ88=;
	h=To:Subject:From:Date:From;
	b=ngboad8Cut8kdFcgOyQ5YFHnHuEWtZRfcHygC8TZgzxqdxwRtSNEIOKL8Q0iqlHh9
	 CD5MGXufhKN73zLOsRUnsCJ6zDYzuy8YZ0qXZoRHmzma8f54rLTPpG0mM2zInaxMsp
	 VzRUuON2F/8UdiGDAIgg/Ujee/YhgUR1zWIynUBHB4gadQHMtvSF0rJptwjgGBb24O
	 7Xs5gRHcfDQy1olnZ6SwJPxpqxVL79irL9uh5U+sssRuhEgZZp8gRH63xVXxkcocS6
	 uw3UKMVVI97U9yxtLEXuYscWOa91O766oSC48qV1oHzQMgrNxCzjHQgp4ltvTfagzK
	 0bGrkz74Z6pFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0573C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747263369.18583.5947701211725638796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252ce0d3785f7d19201dd9eba4ba92dfffad5fb85fe74fdbe666bcd23713fe45
Date: Sun, 23 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787472633
