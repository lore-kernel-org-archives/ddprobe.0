Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E0ABA45
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749506394; cv=none; b=ijxQGOQGbf27quEooDRND6NaCMag8yWzaE6P4oqP5ejP2lm5lQHUvcBYwGtzahrno/wLBxUysPE+2wSWbIisvU2LZIWlfMlxX8pD4IzQg7AMjJdhBf6LRPE2E0lQ0aR9cdHvWt9iEDEheEeKEvj+sDb977iEVvICSg1OhcaY1mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749506394; c=relaxed/simple;
	bh=ElXDrr9zo1EAFzE6xtS7AtOCivoZjX8iPOHoWX/ew98=;
	h=To:Subject:From:Message-Id:Date; b=G6fvaHNZIksA5zySm1B5E7GgFrlHddkqyIaOSPXDjNBMUuwesABj/iJ4fADpg6POTgw50HFbVbnYxJZ2MToaNM0499tyHjJ33ruKi1X5Y3bNVNqXYgDeGupc6oZoAvdA6pHGg9Fc3UMaccnAOGrYc1tHnpZkfnWJO71VJmRMQfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVWkbDLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVWkbDLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0370C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749506393;
	bh=ElXDrr9zo1EAFzE6xtS7AtOCivoZjX8iPOHoWX/ew98=;
	h=To:Subject:From:Date:From;
	b=FVWkbDLXy/Ts95NTpoQZ8NFL6UCc9oR+ygz5drpNHeuIdjnoDEJ/Enp6EEBkfQPEU
	 IDCedYoVPm6N4ZYXc1AE0ZmsB+i4CV51sPFpkgeARtsazL4MwN60ZEyOECT5E29fXg
	 iB47sm6A+6DnhTyBULqhWjKCcYhQMI5neZRv2GC4fPYdXcktjrLsszFFXt7ppbVgYY
	 zyePgCI427YHJAN2y4uAp8RGne0kC0NQ4EkdvBWURBQOuvyI1zR0LXT3GJO7UHxefA
	 LQmY6q+4pkgdUFSB5Sn3m574UZK6WA3d4YH0FCbTFozvDpeiR/ucfKCUM8t4In45YB
	 AbyyMVPlz2Gqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B9C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950639357.32459.6308970507206274286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9161e2fec7e67ef9b3fa6570897b3e22c52d60a730560d4e992697891c4e85b8
Date: Mon, 09 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749506393
