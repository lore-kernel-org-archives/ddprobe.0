Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F62D3B28D
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773675294; cv=none; b=Bb7jq7rkk/SigK+e1VpzqdbAehreAqc9fy7r3Rgc0xHyBPBubN/yvyDWe1RxpqmSIc16JNw+yD7iyUi2If4s/XYJJQBKN+oOwJPkMX58F+b9BgtvWTmFJyoX4ZmM8G7oqpd2iJmWuXMIFQxkPSg9XP56LOkqR22exjVm52phmcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773675294; c=relaxed/simple;
	bh=EgEmzE3BGzoEhpO5VipPSgwwgI72Zc/HKxJQAtE71QM=;
	h=To:Subject:From:Message-Id:Date; b=pndQJxnGdn4tJ8cWWgKm+6Lbz4fzmwul+bfnHa0aBUKu9E7C6nVITaKNPry6BikgYyhdoECjxOU0GoG97D0QlYcqXBXdDp/NeZz2YIu56ks3sm1ovep0PGoqu6zclAyautcbTmPfxvA2Lyi3eCYcCay0T5Y+NAV6/XojpqC0Q5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgG82UP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgG82UP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0704C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773675293;
	bh=EgEmzE3BGzoEhpO5VipPSgwwgI72Zc/HKxJQAtE71QM=;
	h=To:Subject:From:Date:From;
	b=QgG82UP9wwvgZGGBDuag5BIfS7TMpZRi48f5wnaRSVBIj4GugV0kAZemY15nRM10o
	 5F6SkKn8PR3NsFjnZwpOjqWX3P8kh+Lr+AioH0PwV3AGNM/c/DPppeAL8+AvdoN0IZ
	 wM0FIB2AQq298SoPbHGhpegeyyByl8sh6bDky+QOEHHBe8up6FfQgax+92zJhAUggy
	 G3UHS9hpz08hJZje2plvBi5eOoDkkyP715j54CJ5UsBd0WdIclFKiTsd8m1hr+/3R5
	 zcWS4BrroyWTcut7EJWTX8Gco08Vo/ZSq6Il0sJ0sPGSLayoU/g99+JSfIsLPAyyo+
	 LWrC6bMfPbv0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90105F53D65
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367529358.24065.16293625525356328228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 475b62617a6ad1a0aeb6bf62c79501cabdaf57a749228e27cbe41c81ce83fb53
Date: Mon, 16 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773675293
