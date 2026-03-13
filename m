Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA25E1F3B85
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773363894; cv=none; b=QgiUonQkSfZo+OanAyF1o0vW83od9Fbth5eIndAgBO7yhWlQSwubQ8JetxuigINZ1pY8Iqiuv+paaO92ogvE2UUZXqvzVM5zol1B0MBD5jG1LPrgVsPV4XWcXkOT+W+K1eqQCqdx386SVzhK9ZlvMCDuurZPvXSptEZoNExP0Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773363894; c=relaxed/simple;
	bh=nPKkkhImvMQTTi3NxLhP7nlnGWaW7HZRwz+YvNRL4tk=;
	h=To:Subject:From:Message-Id:Date; b=drq8r6cWFAmz7I2kzcQavB66oJi+cMf/icyGy4egj2wgHVGIew7fo5RUFHtAcXx373P1MZsZp8IiJIuEsuXR6o7LH91xuPIqENACzd3Hari5y/jNmiOACYMEbwXpwVZksFtDFmo3OtxzRhRNJJmNzBhLDOxc8T9AeLUzjk8kJLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swrDF9zP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swrDF9zP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24F7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773363893;
	bh=nPKkkhImvMQTTi3NxLhP7nlnGWaW7HZRwz+YvNRL4tk=;
	h=To:Subject:From:Date:From;
	b=swrDF9zPVlsVgj0Y8brHoFKkNULrIbIfb4PUYVkwhkTrt3wh5yE05LMye2N7ZPGx9
	 oAoswHESRM874Zjx+GOrlcUUnw4/r0Vg7J3NROsOuTn1VDObeS7J6LM4AbWaOElpbB
	 XA14kRwSNRokXYjs0ZGqaMsy3Prjwu7BwtaqMELhuFyjpKnrv1+OA9BZdyI8EtN3xv
	 SR/NJmWbF007fRHUV9N/gIntlupdqkgkXqGR4Lc6Xeb/vXOd7h6yqenp+ZHPbd4KqB
	 Kqmy3OY9ENJWZIYqqoEnTS0Wt4pYathGIeeSXt8W3DxMnyEQZBKXCw4pP71mETNwc4
	 9BuFR5/HKdKTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D79106FD62
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336389358.1784.13492829326230763221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c608e7cd3a40ad2a0bb281e8e4d8934827dedc540ee3a0a3325fc2077be5b9
Date: Fri, 13 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773363893
