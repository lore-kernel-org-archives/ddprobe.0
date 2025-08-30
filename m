Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2210F283145
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756574394; cv=none; b=ryYrVRFmPbGucrgaeg0Ux8d81lU/em/a8aBbzOPn9n/MEufitxVmUhYv/oQ6KfSdsRxqlvp6n0XtRjfydxoQ5mVVbm9buTNigDCCpKl4ayzGB7pwdd1QCS/LVBvxeTM5FH2LCrymKBSsrlo138iSVjVeJtHbEgbZloXxzkRha4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756574394; c=relaxed/simple;
	bh=tPS33VybtKc9bT0vvUCT8BfZu1MVYIk2USnWMej2Pfo=;
	h=To:Subject:From:Message-Id:Date; b=uzr/roKZsGYL+W3n6JtMgVjl+xIIPepRUVTwntEGYlkv+Oaz6GqBjuCfgLIBH1aKt1UrBq0PDQg8TAkCndfEsEACp//ptldFyD+gJkycn2ze917QEbqI56kMTLBiA6fbjgxTYAEQ1UAjBQoQJaPFYvpAwcY7wB+q347zBMeDMWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ej8J+epa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ej8J+epa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DBEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756574393;
	bh=tPS33VybtKc9bT0vvUCT8BfZu1MVYIk2USnWMej2Pfo=;
	h=To:Subject:From:Date:From;
	b=ej8J+epaHynIAcecTR2bafpEUBpiIXA2WZNFoAss9wbczUhGPUieLyQ8Go/o1bgYq
	 L7C6ji2Kx+dfHun2CtzX3bd0PT5eAoHSK7zrfsnX9xASFk2z0uDrMN1PlInA2qcp8L
	 +jI/wS0jq4UzyyBcqO/M3ZqDIcHbRyURyNSAwS2XMcNUKyi7rO4dWh5gXkg8hmv1pv
	 EuY1y3blQTvfiQmBs2AABcVeteFrqP530MghsKPknNO2Pn7BLUgSSfzhBjciY/e2i+
	 pUibukZnNWXKXmOQec+qPcR9u+cLObc6ru1LaxYrvFRS7HddG7R77JoMiojPNJ68pD
	 GtPRpZGo/3Nwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D8CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657439358.18540.11645707835065911414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81d7e4c38013fa5e3d1f70da2b40a0e2937210b953a02971ba8fdf12a18079a
Date: Sat, 30 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756574393
