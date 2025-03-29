Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5599A154457
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743289794; cv=none; b=aJJBEH0B0ZBR8I2VgCnm7J1OP+PqpNc/O1vvTdoOAnMbTU305Fjx3sd06ENvCGjHLTx47QtvWywdTlAuo0abRHp1IiOlIbb39sPtRSG/1rLwOnnFM1FyShsBx3cALIlQUGd3wvV8JNu5cmB3O0rW3Rhy7Ic5zjGiiO/iAM1FDQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743289794; c=relaxed/simple;
	bh=nw3/tVPGSUxGNLPvSuyzouq5zQPaqhOXB3wOB/qCLdE=;
	h=To:Subject:From:Message-Id:Date; b=kQEeU7dBsKR632hICPFPp0+Wfx2Orev+nLw4zW7pZGhOehrw7Mteqpy4mHTrIBUV2srMK1Zuwbd8kjpAxDrT5AsgTC+ikdDSUaCg2/zeAIdkuvzsVEdKuZF6mdI1otyTYQXKuNtufWVZdN5V8uF+/0ICCa4SbW43WluQH6XzTjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GC4gQ9i3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GC4gQ9i3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF43EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743289793;
	bh=nw3/tVPGSUxGNLPvSuyzouq5zQPaqhOXB3wOB/qCLdE=;
	h=To:Subject:From:Date:From;
	b=GC4gQ9i3TOsmgiUyULyJzTIO1+5hNGtrCM/jNJWCUPPQeD9oEHUcFZ3lhmVbXPBcR
	 K4INbSQtUpQ/CvPfjllGwpWmdCzKdjik6apzq/aT5GZxArEev+JOaNnixTz6WdtgTu
	 KtGKI76zy4hl/Mel45ea2U7D9AD4cXaQlswzIvZGWG9wKOVc/ifOXoj7OT0MQf1V79
	 zJk9i3SqSNwwe8F4EjpCzUIbV4htVwsLAgxKLjEk4VpjZpQL65RMgGSibyhIv6y5Qi
	 DnpyG5d2vA3nJuR+LZk+JVKoeUFDWNGE8JnQBNv6zOTOmJcslPUIB/4cEvWcoSeHb/
	 Zg0kyvHaasSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E65C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328979360.24604.12999595653739940930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a24ee9084b06b63347889f1aaec8647648d855be451aca3af83ffc64b8f12a
Date: Sat, 29 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743289793
