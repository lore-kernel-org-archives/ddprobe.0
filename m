Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC432BFC75
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747165194; cv=none; b=PHlBcEJXyh9ZUPTPGsPvRLa9egY57sZd8Wdg4mr85XXwuypoL+Pv6cpZE1WN2BxWS+3A3riqsdJydhwqajkzc+1errmyPJGf5bIqIH3agJh6eCfRVbiAc414FmM2pnbw6sun2MZ9vWyLLUCUIZFFdZHZs0t7gefrbIae5H9hQ6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747165194; c=relaxed/simple;
	bh=RemzUj46SHWpfL6GKf4OXGQR6Zd9A1OQ4KaUTuj4yuc=;
	h=To:Subject:From:Message-Id:Date; b=pL7EPlBNojQI9Fgc2EMKBgTogczGbqeYEJFYdZNW9573fIvwgKFbD5FwTI4YNU0ibkBO12J2wftXBvT8s3uleNEoyxS0fMgaO+376nDy14BaLk9qin7Ralo2rdTJu2gmeP7IMD0pZ/h5CvZB6IVMvB4zdHdteBE5MDdeNe5/OPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDnzIc0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDnzIc0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07C0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747165193;
	bh=RemzUj46SHWpfL6GKf4OXGQR6Zd9A1OQ4KaUTuj4yuc=;
	h=To:Subject:From:Date:From;
	b=MDnzIc0Wy6lBVKkrtH6FGau6AtkXW2xXx4pb3wNK/XpW7jWn5qRjboWKprm65wJkC
	 cNMm82n1Ibc5mFzT1yprB3KKzC8FJWtEZl/yhgDIrDWVUEbBHuIiOhnjQ3WTI7wOii
	 46A8kohp6pij/UwSCBVGfaCai3ekDVRSVEsmM1Cz5pBR3CUI9QCnD9zrqCY3FQg0H6
	 SrUseXFH06FA5+44XhqA5TBqSDX7opLHbmfdztZZhd/ZMQhDHB1+rt44tErNhYhRlR
	 ZNqRpUAqtviKzAmvYHm6KgZwCq4C0+YSDjjBKKrvEJI1KO+SQ4rFCEMChlS/CIoNMh
	 rgAj/91A7QuPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C8C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716519357.17560.11312322679177659416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d947cdd6107138084f09024f4d82bb421503f7dc628b302a92e4337075c489
Date: Tue, 13 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747165193
