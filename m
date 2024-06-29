Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA2A1CF8D
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719697463; cv=none; b=TTBGHYRkjDYI8HBvGZeL3vPVE4pXbI2v8BLLlOlImmOt3U2L4z9um07LhaOdweGOWRZwVKwS6zXAUcYq275VqogN0/s5hmnVX4hzmEL78xzdogP6sFshNyFnfZ4a+nf0hoJhoEr5QGCbY9zn81nYkXKkhcL2zZGkEIp+mmbrSVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719697463; c=relaxed/simple;
	bh=SghbglPkUsPXBf4P0TIrrrmEYiV8skmm1/AH3MDad2U=;
	h=To:Subject:From:Message-Id:Date; b=LWBW8GLxAS9MfN8FPMGXgW2oMxXQLtmICS7Ov8lf/57i3v6dby6gsIO48EeltXxD7t0C7i6093ian6rNtzjxNuWi4VrWcDLwAe/vAd/1/FIXZ27k4GPBpXQuhpuUe5bMUF2Uora9UWqteEGf9/n4rjOa8WdpzMgV84mokCamfQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvC1mDyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvC1mDyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB242C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719697462;
	bh=SghbglPkUsPXBf4P0TIrrrmEYiV8skmm1/AH3MDad2U=;
	h=To:Subject:From:Date:From;
	b=CvC1mDyOzV4deyN4LXF79kAKlmSeKSJsa+/cfOTkbd2cCq4yx2VPacrUhQjROfAne
	 L8YW27GZ1mXgNtETjLG6RqbrMMBCn7a/bCDOvPwbMAnHq7cXgd3gMshhHTeCk2zPMK
	 m6F5tgVnmSwVbNOLpRNn/b3BJQ4Hn0yHKgbkZGw4eBOtLo9bdsk/yzuu6MvABm2VV5
	 wDgrYsexRQ+TrXviYZjeBjxLGddHAl8Pw9I57raTjMgt6GwdGxkaflRHoCGau2ox1b
	 6HB47FfswBzZztKg/1E6OMONobOYKrnCbACnoet02PnS2bXeGZsU06qKax+pBa6QGL
	 At2YtUczsQYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BD1C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969746276.4133.15723881135075298778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dbf06f370a4e1e806d9280798be764c07357855d599a61d8adfc338ee9b761
Date: Sat, 29 Jun 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719697462
