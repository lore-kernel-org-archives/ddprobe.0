Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DFF16F0FE
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765803174; cv=none; b=lbriFZdT3vH0bb42LpQITXb8ImLv5PxLlKcl4CaDNdlaYewwT1RGbkXJ5NTKQSioWiZh92FK/HDBXV3RR9keWCfAMGMgaIlGL/fm3dhJheLCvHrWLdJsXG4dud939wQN2ZLpWwXuAjkAmbAef9sDU9j+K9bxuvMItyXL2GoKUWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765803174; c=relaxed/simple;
	bh=T0lum9Lvb9elO13jJB1/A712A1C+hayTI3y5v6cW9wk=;
	h=To:Subject:From:Message-Id:Date; b=oO12akO8nwQThblttYs8dvdGoNYDDWENJrPHe5+o4Lh0tBJodoASsBFyEf7ig6FQfZ4Ikb4jaIsioDw90RsrHdAdzpIf7P5DEY3GRzN9b83xXDv3WH0jgL4qkKvB4SYmd+OU13ByXxUP2fPhHReO6jNnlrNuSJ8zTzXaAcr/4Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRHYWBM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRHYWBM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22A9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765803173;
	bh=T0lum9Lvb9elO13jJB1/A712A1C+hayTI3y5v6cW9wk=;
	h=To:Subject:From:Date:From;
	b=mRHYWBM2ogkX+4IWvV5S7yS+tSvR8Dcd3ho7iz1rZ1KW8k70d4VQOg939mbjIYYzJ
	 6KPyj3C7u83w2n6y0HH9U8noduyfcJ8YeQWmOaRq1cdnk5YdDaKsOlQJc9jMAog8cs
	 hwvExoUK+85ghk9LP07NbNvEBQi13yl000kW6Ih2IP8ecCwv85+SdOAdVmZsrjA+25
	 T/4Lih8Ehu7dCiwM2pY1ny+zbJIhVGaSmNkVlwS2aavsZDAcbbSVwDHdCRBUxSUunp
	 lsVjBAWPwsGEpN1GtZ8sD1yTuawtA5KqrenFYLQVPzOfmO02hM/MPKbHOKA+g6FpcW
	 ufOKd0V6KaEMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91948D5B16F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580317358.18739.8459672902947744831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cfa4a7e4589438118164d08077bdb6bdd66566ed0f5719e0dfaacf15b74f7a
Date: Mon, 15 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765803173
