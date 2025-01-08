Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BED03BBD8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736309754; cv=none; b=DDvpLD/ooKfs7IswLMpdWuUbpKmdAhWgzY5IYiSkZEDPHbt7TGu0iw1UynmSvBnjqEU4LcYvMSZJjGGCIS6k5SHho6aLsnkCislOj0/NMPA3sOr2YDfPY+ImGHzu+dsOW+uD6XAhvf0gSG+mI72ihXK5s3UH898qsEAGeLxI3HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736309754; c=relaxed/simple;
	bh=zM9QRKk16953OvdogAIdkCOe0giYIEnhwa0KVb/rlCo=;
	h=To:Subject:From:Message-Id:Date; b=myxHTMp/wh30SU2Dcwr4tiQJhgGIsv3TPWHMBL4ElZVndDg6ZG2h4qikSY7Lbo8EnWS6qjqJv2Pa6QZmg+VHcYXOwrq3OswqTOfYD5u0h7v7LGoTcIFT8qr59DmMJCAgD1E3fATe3u2OwEPL6xL90PQqtwkA0iOKx5sUQXfScCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgWb6cRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgWb6cRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31CCC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736309753;
	bh=zM9QRKk16953OvdogAIdkCOe0giYIEnhwa0KVb/rlCo=;
	h=To:Subject:From:Date:From;
	b=IgWb6cRqa8JrczfRaWX5Jed+MBxc2fKtOUcdmEPOcrpJfEhSZPvOchd5ustnUFJDP
	 Lc1D+ZVVqo9DAKRxnnKZUZ/atSQN86sDSOJY4OwyWruYqq9vM6C9DtGY4TYUOgNJ4g
	 ETPoU32lZG7vrXR+x36LTTxQHLJWB6Be8YHSovO7npNFoBF32Zc6BU4t8629XizN3L
	 XMTu16DcPYMkYeOUJ9s+QcdZqfklWC9rHCrL5XROUKFSVr/155S4X9KPyZy0w8BJsI
	 OQFQ0PABAaGo8sRYNwOOm3fn5nfOMMCdRt583JtD2m7cuX+40/YNJxjpVhVx8aTEQ6
	 886LvCSQwNs/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B68E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630975361.5222.8858828026234049710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9f9e3e3fdacc0e46fd357fa46928d3b594d8c0170095466245107c630979d5
Date: Wed, 08 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736309753
