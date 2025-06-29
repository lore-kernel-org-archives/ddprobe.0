Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD23A930
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751161194; cv=none; b=Z06i2lDk/M8xige5o3QJ4zr6bDWAAPbEEmkEHeb51XEFYqAGVu32ygqE2NGjIYwbsVXCcEn2rmP7Y0/yfV3tRnXQyDCMbSb6/MjLu619YmIjDpUd4FFREsX8dY/jFo5HFehX2gU9i1CnYMN//mSBVUcUT7outdM3b8w7hPTt5CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751161194; c=relaxed/simple;
	bh=MPpt1zLUq8He9wwg4U+XzBqp7cndUIWIzFqw7ayRSsg=;
	h=To:Subject:From:Message-Id:Date; b=uqCfeLAPNA8zTkP3Iu1iqZxLAZF9G5qVnmGW06BPTcKm6MjDD/AQrcs7GwnB1n/PFWeyRC+rLfVMq93LX/R2Cl9tjNmAQJYPnujRiGaiCXOKwuItaBdBc73/360BTCbWMaiWXymP2h9DO9/Rk/+deCZbg4Xw6o7XP/OXOyATA9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrm4zPQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrm4zPQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C1DC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751161193;
	bh=MPpt1zLUq8He9wwg4U+XzBqp7cndUIWIzFqw7ayRSsg=;
	h=To:Subject:From:Date:From;
	b=lrm4zPQ738IvzBzubWz3vO0g2ZzfZUFJHHsf+qjMFfnN4Y3EMkRN+RCurXxeG/3FA
	 Jl+BvoGQkwg2Twvnb7wSAVNEWaMADqE3g2Hc4kMf1BQy+HmU4cRv0iSBB8nyiUFTPC
	 FxRWm7q1DaPjub0B0W18ugTtzX9sK0pibOSL537xqUp+X75zi4B7tU7kEzpjRuXamw
	 x2AIQEmE0a7zDjB6rZTcPMR3Gk4xyx9ulDWYkLoWXwNH/i5GlQ8bBVSc7GiyOIz7FI
	 0bnOzHtlr986UhwW5nslXUkxfGCXx43cyQ4rYJU2ERQwQZQgppteN+FU7bVYvp+AfJ
	 Ig/ffndbRFLxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C74C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116119357.13287.9993267319691188895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8291e3a81bbe606fc101c9d2f5038c795fe575986a09a59616123924608bb6ac
Date: Sun, 29 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751161193
