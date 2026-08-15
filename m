Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD753254B3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786804834; cv=none; b=YYFPdk/Z4WjNxkYpYRLHwnCfHxDiP2GLkSbkclJ0FioKGqWh07/NOVRAd0ssylHCB9ZIGFDw5NOZGGTARvCRiMXVs0VDNo7zQjW2HXS21aP2H+Wl17KncNuYTI6MakX9OxaTRs3vp8fe5DE8Bpx/Q9Fd2wAT85akXtGLb2yCvjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786804834; c=relaxed/simple;
	bh=tvV3bpEm9GBAHFT8RAwwYe6v+wH4fT+oRQ7r3C9cfPA=;
	h=To:Subject:From:Message-Id:Date; b=oU4uQMYRfcB2vhAEjfu9LPKyCAphP/ZobxD0lAs039V8ftQ5uGvCTHsu+UQemGGqkD5WS/Mt1KOOvzI41L9WSrGYrIVThqiENER1Dp1DbPHwD7+rMh+s95c4yPFcDMEq/x5U+sIaiuwPmllcia1KsZ9kfvvmDOs9SX3kpTYbptM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOTReZ9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOTReZ9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D466DC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786804833;
	bh=tvV3bpEm9GBAHFT8RAwwYe6v+wH4fT+oRQ7r3C9cfPA=;
	h=To:Subject:From:Date:From;
	b=YOTReZ9Ojh4MbMEHx96VRdwtUFoqOqeBO9jqphF3McnMpK8HborT1EJ+tyGivZuqr
	 2h8RJzuV8+nxFMy6bSd0yNmHV7a8qPoxvq5dbzJz15JoX4R8X04Y7YVwiHX2AJHQWj
	 lHTaI6H+HvkFdI7UqYG39owZjtyLTKWQMisljt/NHT8X2zv0SZudKCR8dqM3y2+C92
	 6CIRmbkY62iDRjeo94Gyu7v2JCci9VPyJhzE6HxSjQ8bsuGM+GizND+FbVSrggDgVU
	 jB/57ITm8hEKsgwyEyJ9J482eMcw7QJvcr2f6DI3c052sf7fLJ8LMQjhGxEZG7wztW
	 /E0mvL0oXf3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F0C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680483368.7713.17400943485000895628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2cf3bce85888661e70c9da2ab5117d3d0588935c4af03d2d9197522dbae1f35
Date: Sat, 15 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786804833
