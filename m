Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C13140E5F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755828595; cv=none; b=SkNxrYO8zTURzwvEOMMieaAsw8CfCNebj4tZZWW7b0++2E54OATs/PISL3fsb2QRs5xas6MY47H5Rywq8eO+YuDOwETkh7MH5IOMwvP20sX77h0bpYwwhEHbnQAYf3yHV/384kHCu7BsODSOj3IS33B9MfbX/9H+kHNxFsgXteU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755828595; c=relaxed/simple;
	bh=9t+y3m/Ybyu2F7KCVRIqbSEMpHfMokhIlw7JEmdzreg=;
	h=To:Subject:From:Message-Id:Date; b=Yjf5tVkDduTbphPMcCYA32pkF5DDtSiyVyPdJEZxpegAd+VitOtcIW8VD9oc+uZjNoNUA1z0WUG0emg3UATpSNW8b4LzceJRDQMcN1zTye+BdUv8gMgH20vyibq4Rezzb2LtqxJg6mWrYJ/mrGrpp2VlX6eUiv7MGNLeQNZyh5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY+QKgnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY+QKgnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD10C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755828593;
	bh=9t+y3m/Ybyu2F7KCVRIqbSEMpHfMokhIlw7JEmdzreg=;
	h=To:Subject:From:Date:From;
	b=cY+QKgnVTsIgTkY1n2oN6G9gelK3pSKzYkRilyLy8GV7v2CMFs3qCdNZbeKOYwAfL
	 x0EDXmEtJwMNR/wPZAuN/y00/8+f8jhdXm+hdc9FBqZR3ESRSfcFFJytpnx6MxJsFK
	 7IOY0w6L/BSiqUWrYIxwYk23eSBP9gT7cgUdUr0ElwrjNW/E/VWXcRzEdzCME+rj8f
	 11apKJ/ZuiYflSzKMBSrd7fQrb/mZj7qs4yynwP9o7o2VZ0qHg0m1Fi9WF089iIbAQ
	 XiVJugeVcb6t1ZhgWtG2I14bnmoS4/KPXBaZhpw8gy2DzOxqUXf9NayBPeHp5h6GqR
	 d6zAcDHtgiHRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E672CA0EFA
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582859357.2663.2090740679071033848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0aa58cec65e37f9fc78cfee97801e9991962740a0eb8774a9ad16e8d1951641
Date: Fri, 22 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755828593
