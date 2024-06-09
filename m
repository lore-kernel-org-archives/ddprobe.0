Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AFFA3F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717900643; cv=none; b=awx02sPhYDMO3cmjoJKvTxztq9se6sig3Na2bXX06TFjnKfIl/YzstcEV/LVyhq/ObHLWx5wJUDDScPMqs9C1HGtgeOxIskDA+s80UPrlIDdN/bNC/UvcdJnH4bX8kvk94hiVOJFgtO7iWHCwK1kV5fVO8wzuYf0coUTJ9AtJtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717900643; c=relaxed/simple;
	bh=unn4mIU4Pmu7t5LuyagFkMr7VDt9vNX5ErpT/f3T6Zg=;
	h=To:Subject:From:Message-Id:Date; b=EsQk2HxNlTwAPtYl7TxfBayQxQjE19MZKnpy39ZW8nJ18sm+T2zGlkErkWwECaLnICLuxwq23rEu4ugELL16ztUP2jm5eQh8Uhw2iDaeO7wVxjFxo8c50uVtrGyeg6l2xkEzlSTDDrJuo0CMrompKZ7wfa+AOXdtmGJc3VYNSc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2d34Poo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2d34Poo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6BC2C2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717900642;
	bh=unn4mIU4Pmu7t5LuyagFkMr7VDt9vNX5ErpT/f3T6Zg=;
	h=To:Subject:From:Date:From;
	b=H2d34Poo6dfDArYBPQXgeZPySm93mqWhrWcniQpr9lUW0SXgrxod3+71wostXEHGK
	 bI8kQ/2HoJf3xJF4ZsfOhu60rtjsCPGWzWGCmcRIpJRmHQrbU5wVRCwgZFI4QfCtr3
	 cqNTzKxoWexi+/pCJAAGc08p4GZODY/V/HCGQ8S+Yn0/7gfc+9wJLkjzh1BVYFaqx4
	 PkhW0CxUiAlRt0QTxfODt9ujGRmadGoOURlqHTZBUepWGPv8gDOtXvkVeEaXxkYBtb
	 Dte3qAFzmveqyXIRt/uefZ7jEx7DFJPgbNAQjxjOBqZ5brxrPdO9N3R7UlTPQOON4+
	 xp5z4O05uIsyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1126C25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790064282.22300.11219969314146653820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86ab80b4cd89b7de713c54d574619c0519f485fc54bffce1eb4d7d7e3b94d0b
Date: Sun, 09 Jun 2024 02:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717900642
