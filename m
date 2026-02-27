Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD89237BE75
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222693; cv=none; b=fJiaBVW/p9UcTLKf3IAx7gxFMNW21iBh+nHdNuBEP5AQWTFnNUpueOX4uk+KL4ebdiQJef3swAivozpxeNTeY4v3kqdaq0F8uQwhSOk/hG0OjlLeWpT5fe/4p8jjhqBM3wLzFkcdvaVRXGSzGnqGEA87vi/7kZLbo7cUrIDsvj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222693; c=relaxed/simple;
	bh=XftbzauR1vTRTi3EZ0EcswrO8Vk0QVhEjwEiuJngZFI=;
	h=To:Subject:From:Message-Id:Date; b=DGeICfIjkhGUu0meD+BFmpG3BtosBvVgkFESBwKkygjQ71+jvCrlxMV94kHY7y6ZkR+XCmGqkcRvTn7mNikL2UG+3FTY9N8JNiLoM+Fi0d0DJTaxiUijPM96UlYrquDncHFvJOyBft+gI4ojjf00FR9oC+jn1Vs8qyLsh19Ke40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdHeLBD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdHeLBD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13F8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772222693;
	bh=XftbzauR1vTRTi3EZ0EcswrO8Vk0QVhEjwEiuJngZFI=;
	h=To:Subject:From:Date:From;
	b=TdHeLBD6L2qAYyI0inwmws7ayM6YDY65o5iEyHCDWAWyS9cQi3Z1mw6eJvxFJ9XhE
	 57fx6srUA8nB6fJNA4mcyihlbf82ANi7qqNMeN9J89qn/k94Y0ma1FsfzcIu7YIb6G
	 E6SLz3WNFhtYPKigDNaCYtwfhdEP0CHVhH2gjoa4n6S/+lvtWO/8PGNU9o1adFWdVn
	 berJG2LnPtIoZyhiecRtKAS0wqamNiB6bsC2R7ijD/FVdWlikMYeYHp03HijR4imQx
	 pEGp6zzZlNO3VMae2lNsQZVtnrt4vYqsU8J+SM1lUNbR6FM4SctV1pjOhhJWKjJ/Nh
	 FezyWzcJONjCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91099FD9E3A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222269358.10875.5588231209656741063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03eba84b96de2a29cb9be20344002f81b4b4e785eb12b0f2ecba7cd2bca8537c
Date: Fri, 27 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772222693
