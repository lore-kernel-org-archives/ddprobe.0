Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF3B480344
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785331234; cv=none; b=M20/ipus6bc8PcmIMdZk4V5AMVxCXOCnppDI1mCXn6ZhdiF2CKlG4nwMrQEFbid2jB4y3z4pNwrrSr40HlUuyOXWp7dYqQn+MKplCeb/3ATnPLhG8mC3q1m3/LaCC+czKJ32pjO8bUy3KiqpFHndBwMhb19gDw8BYrTZF3L+ql8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785331234; c=relaxed/simple;
	bh=mysbql+zBY+YQ9zGh5S+006ThGHjHCQQ6+vNsYZ0t1Y=;
	h=To:Subject:From:Message-Id:Date; b=CF1aWTjW3liQgVR+mQ7hkk1GkRx72R0i6GOTskBv45b3nFWGMjiVr+hZK+mkeRHv0H4VofWVt8Rb9nYzzmOZUjQHK4vXGpvwbOP6vKBkwTYuCnYgdGQPgIBE/UIL6/a26kXCW3PGvnrRI8JgzMyVmSaq0AFyy0LtZ4tQf/SNw4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4NZLznn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4NZLznn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A19C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785331233;
	bh=mysbql+zBY+YQ9zGh5S+006ThGHjHCQQ6+vNsYZ0t1Y=;
	h=To:Subject:From:Date:From;
	b=G4NZLznnHCUiKDHQfL768QFfpQoK0yBv6JF5yr1XoPcB38VUMo1w9REyhd6UbSgFO
	 R+CmXhSri2+rqCaTEW/JM33Zhmf/sTpWxGRNp6XzVU9GTB+cTFjj59WR/lAA/WorxW
	 9FaTeTsu/xRJm0uIui0BzZqSZwIqN4k4tniqNnBLWebZHIUo79uH04/JDdoL4UWsXV
	 Pcz9RUgV2j5P2LKLJLUfmTbByTLy6yrOpuP5HbaCOjXplvYbNLdYp0+79HU7paLkXx
	 OPZeP81RiMpiCN3CEv8/BqMoDlOTXOw1p6wuAd5jktbeX+ll/XgfZmt10uChN7vypU
	 OA0srtfjYhMWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91BDC54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533123368.28507.3835261045046148541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab779b3ef6cba8e31b7c7edadf3bd41c044983d84f01a5ec7b461dc741f4f27
Date: Wed, 29 Jul 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785331233
