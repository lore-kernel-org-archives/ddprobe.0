Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B78E19F419
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732904754; cv=none; b=ZAnuRFqICQ6lJUrOmXWHwX4ElunVvK+nm1Sl9mrYQTmj2AMi++eBGdYsGUKmHvBtZb4QYLVOgM+Kk8l3WouSolHGxh2Q5pmoj+3lp1iyrfo3aJEPUdu3Pre9DslU1Bhxulk1KSsdO3C013GRTY2c2+/40No03vWqZriPBNgrHBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732904754; c=relaxed/simple;
	bh=PRQmUHS7AvSZogRVCoNQNG7FUmtGJBwwAErwIsK2M7E=;
	h=To:Subject:From:Message-Id:Date; b=Wu7G+4MqxIEZ0X/fvT7XyVPwhBaf1DBE+twQ4jYA26/6DD5IfW9nitUT4SigIFoEdVpLt9mKHIZ3BuecDgGo3SsfEILyoAfkokQJAGxqM3SLd0pql3K9qp89wNzxpSnwfcIsU320ra44uQla6RZtd8xdvgLUoefDDj1bLq3uSYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnD9orMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnD9orMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35CBC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732904753;
	bh=PRQmUHS7AvSZogRVCoNQNG7FUmtGJBwwAErwIsK2M7E=;
	h=To:Subject:From:Date:From;
	b=ZnD9orMRXJJF0q3m6CjkLzYS3hSXXex23EEn9AGkQXo86c7sFoFmo9RbI2w5veT8a
	 Dzo90oMRAuCU8OBg0B4oCHA5jBaPRd/04tTh2tAfN2I6Btm4PQl8cqFzfXufXjMLyS
	 3Hefq5RsBnkbQxAUeaXTHMg3o0MpoVxwlVMKfro0IBRdFN16r9zRuuLzB0a+2gV+4q
	 9jwtNfnr5L8QyiNIBB6chyUhp8lcxAO023IA49ZVB5SRRq1dJdQEumORIJwCTeLSPb
	 vfHmr/GNDQwlGsN+9BWXx/uP0ht7zqFmvaZFCOu6dE5WM995cP9KQTzImbtA9MnEDa
	 hm8HM3uiLCd2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93970D729F3
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290475359.31052.12167269097455530965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b02c741241617773eb4839ce62ac64ac9e02789000a3d9016de00d86edcea59
Date: Fri, 29 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732904753
