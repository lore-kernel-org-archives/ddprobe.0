Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CD1A31
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749298194; cv=none; b=Pbh1hxFbl2HJP5mlgV1JDe9H4u9Nhw52TDn/24kGJyLo9iHCkpl4Rhbzivbivi6kawu5i/bUt1uCmB4TJdae35yTmTQ2w/akuPU4V07kdkqZYXPDjD+42kHc2a6aCC6HPLNyd7YLT6jR3UJTFEq24JA/YXsHH/7Gry7bB1l9cpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749298194; c=relaxed/simple;
	bh=n4nZNLVNU9nhD07otwOzAC6lVpf0DzKGULa1ktAGVc0=;
	h=To:Subject:From:Message-Id:Date; b=PtU+LA0fYCcZ9lO+LV6Ny6+uo8WVr/SwL6/EVnw0lSLvfTPIAKfe8rTWf0DAGYS4ThgiuATfURQ0su2zA/8Z3xV3oi6Y/TQureNPCbgbORaXh0i15e03bUgZtyb/IVk5WHX8Y7rLND+6Dt0JbRKfa9JgqEooxfITz4/ndbsfiM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QccqWRJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QccqWRJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5992C4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749298193;
	bh=n4nZNLVNU9nhD07otwOzAC6lVpf0DzKGULa1ktAGVc0=;
	h=To:Subject:From:Date:From;
	b=QccqWRJgoaJix1HKpsgvabFcrxfSREEOazBZpVv7BQUDnXw5+xgEEyLUXGwUoOoMh
	 L3IE8DkLmgIunZ5ofRy+d8X3l9Tvxm5jnLu8yVQQTtdwZ6UrqDklNR2QhFAH0J+WpR
	 xYv+QSMuSy4UZF6/MoySkgY8JiNdL84wID0oNmTmEQZxUSdI0cFrByK6upEcVWnnT+
	 sHzXZSIKRbao4K40beHm1t0ubWaZiEFpyzx73ZSIIRNmeMQQmg93ak392gLIHeWj+D
	 SNdAAsFdSaEuV4GWx6Mn62Y5XobirNt2gyxBqoBFRhhCWtNWAEMLjBZ2AwZHKQqTZq
	 3Pm+dq9k6deVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94580C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929819357.22295.11226432887465937512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c713fbef0cbd7d19eac7c7b5c49722da498357417309e84baace9358af26e8d4
Date: Sat, 07 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749298193
