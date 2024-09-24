Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3000D38C
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727140554; cv=none; b=XEvtSWUFOY0FEMLDQAD8XeU18ZUuz/vkdSz+S3C+p5YEem4tAT3neUbhhs9ILJZH4jjb8EjGz8/efwBQf7ZaABHy3hwy98ypDUEKr9+j1bcBnTzJlbbEA4uG1da3GL79v78To1N6h+6CNvQEx598fTlrGaTfoRKIJbsbVDATyDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727140554; c=relaxed/simple;
	bh=a2q+ZyQeO1LqMO4O353KmNCnkyCG138r4C1f02FaCuE=;
	h=To:Subject:From:Message-Id:Date; b=LAAG0hJSMTgHOOrPj9toiSNkp8Rwt0ARmJKPK3/nRQ5C9YPvM+GN5rdUwEgZVmXF4iCe6E8rvXKa51GEkJutcle9DzEQ6KODVGxuzHCeL/9766yumZirGyl2TKfGVThUcNLZhe49m92JWsDcbHtbh8/I+xHQ84av4B+3is/KjDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbuaHxxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbuaHxxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A601AC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727140553;
	bh=a2q+ZyQeO1LqMO4O353KmNCnkyCG138r4C1f02FaCuE=;
	h=To:Subject:From:Date:From;
	b=SbuaHxxLnzh8oCV81gt+1PYY8pZsy53PKXpARDs7vJgz2wicykYSormDW1nRY7lTV
	 p8F0kfXDdle4PNqUtZEytGdzj9ovIVIqzRSJbF9+CIpjU0rL7UTeivfp4EverjS1XL
	 fWSEjBlG62Ixi9dJ/zcA3ZdE6X/rSz1RbqoIKF8d5yb3HP0ph68DMudMp3IX1es/Yc
	 kt81gYq+iwCcUngH+Le59XuyRJ5rI5uc+EhosWpDoGAR7g33t5mY1kMrG0DfXXCVYm
	 CSR1YxiC0ccMWsJ5YfzH+SgkSvLnQiAr/et9YNkmhstfDAbFY0KzVZky8jEs+cZVYQ
	 VCwgMGV95SgKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98125CF9C5B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172714055360.18070.6615031415859888623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e690786fd2f5cd5be5b442bcc43acee93e8d74c959b1821623a205cf9d1999
Date: Tue, 24 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727140553
