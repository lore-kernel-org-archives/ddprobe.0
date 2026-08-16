Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1EE18C933
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786858834; cv=none; b=RPRHX0T7FZqgiWmS28J/Z4qXJ7biUQIQwdtAD4SAOMczaaq3Z6qCm3h+2E+8nywSqXBwa1GrwWOGLGYWsIqtdgqXUYrtf/q0IqHSnjpq3m26lk7EP9307R/Ai+WILVarZg2W60BC/SZZXp3A/enxmiIPXVSh4lQWKmDJt9bwLCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786858834; c=relaxed/simple;
	bh=aRdGpFnO7pHs9CJFgUpYsDrv1HcNl9+MCsd8IddYAs8=;
	h=To:Subject:From:Message-Id:Date; b=kAUzJdj3zhWEuha0rNiy3J4iS602FsLu9JEOzOoawUgiBklBjul5eNM3bbXnzgwOKHYLRWDiUifix41VKf2PjBNreraoI16x3zdfeQCWnZrd+6LplCs+1BHYH801521kdOS6onuc6RIummeAuE8tn1egM/O6WA2WKT65rWC8JSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BifZl+YA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BifZl+YA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3357C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786858833;
	bh=aRdGpFnO7pHs9CJFgUpYsDrv1HcNl9+MCsd8IddYAs8=;
	h=To:Subject:From:Date:From;
	b=BifZl+YAwLITnW0TEyBYMt+5+vEk+hvTgt4RbG1cbzYEp5hdG8oYJm7ayVWanDBx2
	 N5IOGWyBIEWcMhHdHTNEApVKvYu0kgvOyusM76HM4C6ZAMKWEave1cQfNQvJIOZWXJ
	 cbMNG2Imlv6d9b5EANNKLF2HDWDh++CtsytDZdoCOaxQaBtZZkq0pQjfg659lnwbKf
	 TYywtVCV3j5p/jNhox1fs3ST4BnyA7PrO0sdCSMly5EY4SmpY4HRVAGQvsyRPClzsU
	 eZboYRgqn1TZZ1B7rUezpHdrKGCghDZCM9miozEwWNWEn8KWFTNPYPw8VBOIKv6CgH
	 m7w3ersv3bTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A48C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685883368.2179.11331631053857353227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878cd34b37bf473a1da99569c1d7d4b0d7ffeb238e01495c61fa6b006c24d4ec
Date: Sun, 16 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786858833
