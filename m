Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5878918C31
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738152954; cv=none; b=ctcuqmEbyHqlOejno1ze5ES01xDISeR12puYJLb3y8/sFksy0bImdRFNuk0EEK7MM6eQ/96PuKN20hcfTL8xxntpbQCArNbkeEj8BeMfn7jiUb5wsNQNgXpTtKrS52xSqaco/iUuSioDdAte/gACjwSKbzjTA755/b/UpjmOuUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738152954; c=relaxed/simple;
	bh=uxtWlR/7pFfp1p1zpE/rUXfJpKSyCZQc+zr/as22bYM=;
	h=To:Subject:From:Message-Id:Date; b=Dv96ENQyIadEaiUtxZsGfTgyllY8yn1bUlurZOruESKd1875BUcqWY3pFc8m5TBV4OMSTbv6NZcqkKDIIFGeGVFgzYi6/LyoyMvDYcR13YvATvbHHJRQYUtvT38m+V704w8Ic//J8lf+9tL6wnfWVDtLxXexbi6r4h+oGPPuCv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G64vnk9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G64vnk9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06F8C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738152953;
	bh=uxtWlR/7pFfp1p1zpE/rUXfJpKSyCZQc+zr/as22bYM=;
	h=To:Subject:From:Date:From;
	b=G64vnk9mT67l/gYCPtzvDvPkGOBjbW3/aeSfFwrm3FIepLgT3TEyFYTiiowjXOWyT
	 ty+Y0NglJ6zxZuaDLvUByc4fKe2Kj9+aDqTPdnsj8I5IxWgq+/s0Tmxro59v2VyvBP
	 QsBxQdL0Fa+7eOJlEwDs5jDk1j+RYipfU+yFirRnddVPnEM4rhpT1lRh8pwnlqyUEZ
	 SnCOSZSn8FFg/w14+iBjucfCpJY8SheAOGnFTdhZ1XYb7pIc9MNb8IvEZeN9nCrnUq
	 u0tWXVUDgZPjTB7stb/hbiVAHwybEotYZXK6fvVX3ag2UVX+0rq0Niu0zF3B6OB0+g
	 oAOGBK5kG5p5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C224C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173815295359.26820.12884311269568352485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be44e42241acb4c7b36e4e842a816b55876fe0a953fe13a3dc725f60c9907ad
Date: Wed, 29 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738152953
