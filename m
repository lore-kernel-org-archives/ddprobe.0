Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B1F289820
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747250394; cv=none; b=qELlzJhnIOMama79j3/Z5UrqtlOoZcPBkgqvVIEZRWg6gm5gV7eLhk2ZhIt7oI+9ndypUAzimAGi+zLMH4YSIwmFM5a7N8Ohcj2nJHGkiL4C2WP9CtQ0WFedoFKEINMKEnUmPQZqckKkaMMKKiyc2E6oH7Sy6/5pWhMZEbpnsbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747250394; c=relaxed/simple;
	bh=Vw3MZrNWUw2zZfnFRPsLAoLDt4UXNizaW0VbjYHByjI=;
	h=To:Subject:From:Message-Id:Date; b=rqaA5eyZJMn2Cosmo6rgKIdiLRamYW1Xc0//bN7d1mNwc6SF93cLKKMYuwhz8zqT1bn6SxyvSs5D/2TbtjylrTE6iCR6ct4KZL4hBflFfTTCABu4i9MN6c/wJnO0Pg8GSg4WUNDQhTjneUwzBtLRThBpI9Vm9grtgAG/5hWueJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoieXpr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoieXpr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747250393;
	bh=Vw3MZrNWUw2zZfnFRPsLAoLDt4UXNizaW0VbjYHByjI=;
	h=To:Subject:From:Date:From;
	b=uoieXpr1A/yEHu5kkXU4gpYUNVleuZxyOEvN+5Q9wmilzW0JeglW+CRG7TsG21rYL
	 NItngph+K09AYvWcQI5Zg+GLK20nLepOZtb0XdWWDnba4Yj06XTRcVAgD0eCer8zTi
	 aLpH3/Tx6/K/W/UYL5edfC+Sm70i3ssyMzUJKbBjQLOMuH8dS+tFLKj83gCU70Ymrj
	 MQEYthkjw4BDlOhU23+BgB0UhH+q5mH7XZt42WOpRpk04eHo+YY7+jIAF/UcHUGtZT
	 AdYbkAiHAc8X+1ibZB5TNyb1cmaKEwu/mC5CfLCF4VpeUwafBuOuz5aISv7V1hy5JV
	 L6bcX5FCYscmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC51C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725039357.15240.1425178709591918114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc973635e69e2cd1db2f2d059c3edf18da2580a2a13f52423ebcda35b089fa1
Date: Wed, 14 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747250393
