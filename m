Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0CA43159
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753504794; cv=none; b=lVPy/Mpm/eQ1QdRGtAz7e1NwfSSDtV1xv7ayvhMIU8yqtp6S/NqI/QiDi4kFITAtyA/42PMq8nNgA2riKijbXZEaCmbJMCdDiqUefhQiH5X7296ZrQckrS46w0vMZ5HP7Zvov63GuK7x5pNLd6FgqpTL6L8YZIm0pDjhLiNC2N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753504794; c=relaxed/simple;
	bh=X2fuYXHEx3FZORKGeUN+W/n2+dtrb4l+LrW/hIs90Qo=;
	h=To:Subject:From:Message-Id:Date; b=N6NzYu6jrn8V8yUAgSsNd9iauU8on7maneJFhLJ5TMqOHFqD2GGloo8Vvrdq3wMvE/y0pS0l/TQu11QttDKy0oQgk+812IV6y03zAnoMVKHEKALFYqCN01KTWY0wXQyoKFCcA/CnlemtLS1vF2B6TYp7eFKZOmfW/ld954bl2Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icFDtEag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icFDtEag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E68C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753504793;
	bh=X2fuYXHEx3FZORKGeUN+W/n2+dtrb4l+LrW/hIs90Qo=;
	h=To:Subject:From:Date:From;
	b=icFDtEagWGcNhf9qvroc6hKwEcR59lmcmh2HBQsK9f2vvrjqXIOt0vs8dwDtE4/AR
	 eut3V1MEPWa58uhEATpvMPEvHpHrkR8mB0w4QKlx7QZudE+vTvlgOFbdGPmpb3BfVh
	 T2gNefPIzBhqhtMk1GNEGSuvbfKBffWuuU5M11GcigulG6dasykovKNXFH0DvSJ69F
	 UeJczy3T3Aq33rQwmhrBCEUqIjG9Ti1NKFrC1RfG/P6nFYL5mU6OPtfQPTwTkhdtxi
	 uMx5tTOYIpGRquuwJ2Qh1JMGV8axLOEcLiPWSjFnOkazPWjvgOB2T2u2ewMtaZuGM6
	 7KvKWRpydl0NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90488C87FCF
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350479358.29636.2213291757875781771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95d680b1ac68d67dbf97ac30920c81ed472b8aef339a6b398dcc32eeaa990d4
Date: Sat, 26 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753504793
