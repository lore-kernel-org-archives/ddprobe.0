Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4968438E5ED
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788328834; cv=none; b=hGLwc+6v0+d7QDWYuLCY7MUI+Jo4A/QN5zuck6hrFoTwE6SjEOvrWZ70fuGJgJ8fFYbr9XSomVCQBWrDFJXRsCEULDe+Jnz5J+hNS1sb8FO5dy/0htAgshOibFzKXKzdce9bcdao7MXKavTfDMVy8RJWIP+D1EWTwIJlWehcQYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788328834; c=relaxed/simple;
	bh=iI5I7BV08RmTgj07s5mxlb67euWpaWZ0Mqe4Iwgjpao=;
	h=To:Subject:From:Message-Id:Date; b=GzgDi9aqyy1g58ZhowFtvXD/r6w5LRRcLNMijz4g2hDWFlmh14KEWxhjYQHjqWdEXLuAiYMu5y7i4VQ810BCR67YeJl6YdGPSVq9fVM+709G7Sm6PvOSUEhDHs8hAp5ZegZqU0iVYZX+X35ILzZqVmPS1cejb8RGTJxl1jxQcMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqU+U5op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqU+U5op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD46CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788328833;
	bh=iI5I7BV08RmTgj07s5mxlb67euWpaWZ0Mqe4Iwgjpao=;
	h=To:Subject:From:Date:From;
	b=MqU+U5opdOIpvPQ9BC3+Xfx75Y010HxDQ+F+qQHClGv9mmaG8r1a+LkKq13hWtug9
	 zEztoWXCbHgbXMjzW6HsYdMZDZsP45tS6863ko7v1lMmQR01inhBvp+NhIbOiN1hka
	 5yVeXK/1wSk/cOrwHtKk/eeo/JOL71G53dpX2Puc5bDqsppCxEVQZTG0JVSpLKCJfg
	 69Y5E9TkJPYe4I0IQd422VMEcZRvETE/CGZVJIhZBYlu0vVMeG7AsVvSwgfC4qbx2Z
	 Jb/C4MCBVEE4gIRMkqNC5k1Tun/h6bd6E2o7NPn8bike3KkCe7fzbeu142jxVzvH4T
	 brGWaYFj95apA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1B3C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832883369.7212.4624795024137551362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a308b51649cc94188faa8a387f2d6410b2f9927bb9354baa6eb571917ef63465
Date: Wed, 02 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788328833
