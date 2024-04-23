Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483C1E576
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713874823; cv=none; b=YfcWyXUpG0hnyiT6yWQk0zx5qE4x9G2e1OGrJ5OBHwLBZOQPgPbAI98hEVfykxeTvbJQdVn3tM62ifdrhKHUmLmIUQIx+tWkDKFqdguh1bc1uFtgDt+ls0u96tIuHfnz+IdFSp8TFQYAc8ea6LOfJ1AmtxrYfQqU8+Fs/zFeZnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713874823; c=relaxed/simple;
	bh=0bjuy64eHNPbr4kp8zsqgewUrYzf2oqhdQesXH49GF0=;
	h=To:Subject:From:Message-Id:Date; b=lm5GD/vcpHOm6jP0KKJTRHcEutHLY2wsCt/uHr2ivMBOHOex1PRwAJxaDYdWMmchleFOtcLOZT5OKYBo8F/jw8LBj1UI8EW7QIAE51PC3nX8my3goZA4GDIeJus8eAqJW/Oe/Vftdwf2TFJgw1X7iYSC67blV5conrX9M9AnSZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7UAMZjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7UAMZjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB35C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713874822;
	bh=0bjuy64eHNPbr4kp8zsqgewUrYzf2oqhdQesXH49GF0=;
	h=To:Subject:From:Date:From;
	b=L7UAMZjBn6yaB8rgUg5GtcqFWWFcGkB6TzYeCdZXJ55bKV+oMcAhFniJCuYIbqc2k
	 7Aa1FUF0x2E5g2qxERFxk5d6IOZ64R0EYb0AzKXIVINhUJ4rJCweqdjkwT37arWMSx
	 /7W+R2ajNS3SyXwNu7OyS1cdmcUX7+F/wl4bU/Utl4dn1U/fyRgbMg5XTeEREgnYDm
	 XZPMPoNRiLbjBP5LQNnBC/wAnW1SVGSngUYSglGD4Lm6u43LV7nxQUn38DKpGC9qXm
	 7wlJ/P2zO426MM5jjyJyuyHzeMbiagWYjBQahaG9vTg9OVn0o18DV7Ip9cEUQlPL2b
	 Tc3zjhp6HbYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75F6C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 12:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387482280.21609.15195248519544014343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d755558d58407ea0725322b6415e59744f85cc53fc70f89fcd8d237a35fe9b5
Date: Tue, 23 Apr 2024 12:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713874822
