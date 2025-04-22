Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7CB221289
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745320194; cv=none; b=WpJcfdfaUoCQNI6VrqUL/5uWCgAur25S0xtv4xMJQniKdFwIekGcj2YRBt+GK7Oh9txFy5DiamzjBw+x5A96ptJ+jTU8iOaJd5eprh5U5xeCyWIpPUNa3DGpzwwtSqQZleh/4PxtpAIHHI49cXnTFxbMmUl3X8e53mlqKPbHmeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745320194; c=relaxed/simple;
	bh=EltbX25ddMCWorIqvO8XFMuOe8hAGmuRJpZO9r2AIqI=;
	h=To:Subject:From:Message-Id:Date; b=DrN2ljwDZTui9IsBwSbXnJ+GG8Wo3NqMpZTBzqKvNvQdHRrLz442VWlV1MMThof0+TCQthGpTVPOf0m5so8y7wsesV56si0mCNwTQ4rJRvsqNzeJFM+oea/djzyffN883nfNr02R2o8TkHJBVeLVoE45KU4Pz/aJwcqjn5dW0N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jL5AiJc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jL5AiJc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8588C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745320193;
	bh=EltbX25ddMCWorIqvO8XFMuOe8hAGmuRJpZO9r2AIqI=;
	h=To:Subject:From:Date:From;
	b=jL5AiJc/WzUFbUqnl7e4+Cm21V5khHEsTjBvOqT1J4FzkOUu2TFvV8RJxVybwSJsH
	 5RbWyKkorijtfKoXZoid2ti3vx8Ftjafd0obC9aiH25BIefzuA6kzCg0Jg2dXkhLtr
	 AZSKyaddyyZMbb8PiCWmjItzuP89M5X46WQGi1I7zEXt5OUnJv/m376jbNOvVxbkKp
	 Bn8aqCBLBvkTAREeL/9z7djOCCiDPnj8+DX13i62g40t59wj41sIY7nKQ6wynKbXmz
	 /w5WmmkuupButZKDmIJMu+gHkzwGoPxWbvYixSVbUU5D3U/p198SEocB7lm9Wndt/r
	 Oz7dAeEOm23gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951AAC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532019360.20122.10233082788702251006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49c5019255642c788b8dcaff5b89529c013382c094355406eda8647399a924f
Date: Tue, 22 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745320193
