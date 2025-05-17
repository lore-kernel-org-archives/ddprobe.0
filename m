Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC57136658
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747454994; cv=none; b=Mxq+uP2oEi7Q6PF4Mzmf8P5iaIBcYU4ol5P51gqGJrQAc4327ax1rDxaZIZuBnnuC037+Hehtu6+fgI++dz/Gd2e9nRBJvP3v/v3kiLG1guOjsiU/4EmF/Ea6MAsFYzP/cfmzAqGivUY1P30J26HHRLvP3sL7Kw3uJfpg1qedDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747454994; c=relaxed/simple;
	bh=sb4satTRTz8GwrZS9h8IFIEyG8yFgJgwBYnG6G+RvPQ=;
	h=To:Subject:From:Message-Id:Date; b=adwNEkEpG3CJAiPkHtlcViXV0TrIcMWiMf0rDjrZmq6HsoXhhi3TORhQkxvepsIEgjhCOmKkBfpocy/AYeA8Xzl0u9eKmKTEwR+vD4SYXQRCD1pdp9ZgA+1+FLWRchwSolWN2dzlQk+T3sxY/aLsbPwlUIsP6r5DTYFhbwmrMhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bq1tEQQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bq1tEQQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A896EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747454993;
	bh=sb4satTRTz8GwrZS9h8IFIEyG8yFgJgwBYnG6G+RvPQ=;
	h=To:Subject:From:Date:From;
	b=Bq1tEQQCAOL6mtJ3vqwPJkVEQ2oU4NJhRICtUNraN4EdiPJzw+k1x8L6ifhhwql0N
	 eu6W5RuJEG3BWiiKZgVRtG6uWeh/v0cmp6C4MKQDUTnqUflLnjQfHWm8rw1iZGR43p
	 vRl3aSJDpCKSPKhTd3+uxEXKGd0JVHDyJdwE3BXVVpDFxYEYxRSa9giHrWA9fl5MaC
	 I82P6fk/gyqK8664aFH2EMcINrcCmYqp62VS+/6KP41U/5dqUy0Dl77WLiFJmsAfMa
	 inj81qAbD2dlpHwGQqMhk0Peu7StyMjFYXL7V1nKQIaE1iJNfMXl4+i3tH8ZPdO/KN
	 70XjSTCmQ1QJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D25C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745499358.15490.15078409277134436871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b2f565631be06d3d23f42549417584c0c1725b27edc20eb3dfd4341cf118d2
Date: Sat, 17 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747454993
