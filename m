Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D632797B5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763395914; cv=none; b=Smv2xmCbvLGHip8F8mRGUH6+6BeiGo6UqoauXmp/CKzhhimzmxSOs6EGovF2hSFbSIJ8+VVkb4/BBy6V1W817juMbD/4/Q5L0JZG1Jy+cpYkD8JleavsfOTztVRI//Tko3cv+SOJdY9MnZrOd/aEDt5fXhjW16dusxmcgMolI6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763395914; c=relaxed/simple;
	bh=cHEozUsadcPI5+Iz0D/yac+3/vchO/E89FdkoZO46EU=;
	h=To:Subject:From:Message-Id:Date; b=Dbc20qgKGKwWwgNDsuNEWrrnY042R5oFo1v4CYI36i+xdEQ3J8T6wYwL4Cgc14FOobrTgoJYXpk7dqT1wBqk2OVXaU0HNWnK6gQCczpJL46pTv/5fKnjcngGDKAoufM4BzmpAHMuCOj2of/R9ARx0pd2yFuCS+LrfgLxl4K9M0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMX+7R4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMX+7R4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F0CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763395913;
	bh=cHEozUsadcPI5+Iz0D/yac+3/vchO/E89FdkoZO46EU=;
	h=To:Subject:From:Date:From;
	b=eMX+7R4jbZj37i/j3HNolo8mhKci+YUoeEmJZkL/XmJBdZNGY7zKHQDSTzmo1kZ08
	 cBcsJvww3mKQm9X4XO9Om1t13XNPHFqbYMRCWwRlf3S9mpG9l1QllNyXw8Tyt2W2sM
	 xqykGJ4WbaUwPqiJRniWd29KJi6swc0W1KqbJYx+7PapXJAuC+0jR/CB9s/nLzUOCj
	 uCUDxpo6m571zA1UenyaOuFeiljS4gsERZ+ssfDbseTxOJW3d88zo54Xh/HVDGCB9W
	 H5rBNo8iBxHQJOYL7KooBtlACva5dH3X/wnO62rKrtq7LaD5dhaQlICX/JTPRqp/ym
	 hNZRCbIXzjqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94902CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339591359.6324.5434596943369097121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba0c78f4afc5e4d884a0112e5e0d19fc62bc0fe548a6d192416a03098504ecd
Date: Mon, 17 Nov 2025 16:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763395913
