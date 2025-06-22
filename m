Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B871DE4C2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750597194; cv=none; b=f5Y/bR5pXnC2mCWeKp2if25YrWYN8U8rXliS/vzOoWjLLuO57IvlJuFXU28geXfdji4gEqmR+RJXdObfLbA1mtPmf3FdgEv44Ho0FXfUeaNOCzk0CaruRbGaTsHkkjLArP0fbZgLtJa1qh4j8krLpClMQGv6Cypcf7Y1KAIq9Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750597194; c=relaxed/simple;
	bh=K4Pq3xMgtuAzMVGVDyDVp8PlZMv1kesao+vY5pAozcM=;
	h=To:Subject:From:Message-Id:Date; b=fJ7Kq0Xqo6w9IhUc4iFfqxmCT59p83yQml9ffpripYkSr7j7qtPOws4W1/DGKTjbjbT8y31zneh86/ix2DRcx8zXMTSNoYPkNsEML+n2GTPYvtRu/ZI7Q2rS8ISQGEmNHGxNZ9VZBGDrzi0tZQYnB8Yv0GRI3J8xWHZ5b4PeMDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUolsPZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUolsPZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E24C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750597193;
	bh=K4Pq3xMgtuAzMVGVDyDVp8PlZMv1kesao+vY5pAozcM=;
	h=To:Subject:From:Date:From;
	b=DUolsPZmr8CxRuzABqix1J9p4WrotfIg1S/NbJ+y/IPeeA5PW/VkOXshsK7mbwjTH
	 tJ7fPvYL1ZNXtM/NTGhQ14IvAcGtO5jpNJEPkOYX+6XTcFYF0mPo1LHiJkk43/Zibk
	 uHITBymJps3k0+7XOuDDOMbKXVznEa79zvD2H0L4mFQHmbvuKEXuspA3VwDjly2QVs
	 fiXHqfMpDDUtJOt75zqQZr3X14FKeA1u/JF/lQaICpAPHXSnD0lUyabggIt7MvOLYa
	 H8SFuqv7Bs5AidTGnaJo7aJK5+bWN8heFjH3MywuXPTImfMGyV79bDZmDME9PVVy21
	 Y2NoPC2Dup89A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91776C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175059719358.32753.12411720180003479809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56b02f5a5a9b65422ac4650e61b608e0f619639c9d48a663f96ad768bc704d6
Date: Sun, 22 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750597193
