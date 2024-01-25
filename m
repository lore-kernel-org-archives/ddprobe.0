Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC0F1F5F6
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706195297; cv=none; b=XNs0i2oHve4X3jxtAk4KxwiChHB30vNNJj8YV8+Psk9tYRwy8rebnJyTaqbdqH2Ts/oBdAfb3/viP9AF8MFlCyXEefgXfj2phNc8ObISdztAwx9g5rmLnMSC6fqTnRW9ewE/39AayOcpOOM7HplKH2Qq1EDauDzPLYulZ4MM+pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706195297; c=relaxed/simple;
	bh=a3GNMvT+yg65l+Gmxp/+TTRAS7ZSLlnhPIV8pgmi2cE=;
	h=To:Subject:From:Message-Id:Date; b=URxOzY1ZhR0gVaCsvYOI/W3MlYzEAvI7rzPoDDVnvo6/LabwhCwNvnhibm6yI/O1/hhRqdv8aPK1xiSk0/WqiFgHca6xuNNeMKo+LWiYkL3lFCraurufzu7sKrhxi0A22UOcsAuEt4ROgt1vfJwJFQKun6XWpo3c+KnjlyziU0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUILgdr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUILgdr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D8AC433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706195296;
	bh=a3GNMvT+yg65l+Gmxp/+TTRAS7ZSLlnhPIV8pgmi2cE=;
	h=To:Subject:From:Date:From;
	b=gUILgdr01hPZkW8gryh1jqeJWVgRL1Ol4SDkk1Qv+cg6RsGoZLqRgqNOTp+u8kegY
	 GHpjxktzW8z8EwCK7z6y1La5qpuEr8pDLuTb/CuEGi6WPKd0pnrmBEG0jekd4GHopT
	 Jg/n1uBTO9FfJI+AFoJc7nE716bzy8IL/jXmNM/+ziLpgOQ2Bz8EEE8AtOIX13C/Aw
	 QMEcGBv95TIeaJx04RuZt92dRLQfKEX06qIpGi+fM6/Kpd0h5X0hMrHzpZx8KbB0B6
	 UKBA4Vu51gBMCKTSfSdaLkpMzDQ23zF3+oJe4o2Gewi0ws/qIvYcNZED2ablCQLm4A
	 Jx47ou5BRC+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675EFC47DDF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170619529641.1769.8335328448083202935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9845c54017326c5b6a3298e77d4d75cf01c8403d4415a31a35af885994160c0
Date: Thu, 25 Jan 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706195296
