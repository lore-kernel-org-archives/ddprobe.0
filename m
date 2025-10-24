Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F4A35B130
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761277194; cv=none; b=TsBcJTsKbrMbojtN4ep9M/z+pGehOvnmGFbYb8xZLjUxUPxZapACSe3T7hCdE47CH5hxXRIvZ99v7ZUrLZn4AaXPLlx4rQOa9SbHcuFI1ZCOuJNhSgeLTcleggJyfR/F55vElW4bgnVUh+jUg4ewMTitsv4liVtmM2W3WSUkfxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761277194; c=relaxed/simple;
	bh=WUtG/lIM50KDX1TBfs0bU7VCgm6WKlK7l50SnMXbfrY=;
	h=To:Subject:From:Message-Id:Date; b=SFhdbWJJ0pETicGkEixJSw7JuG7hGNFKqvIV7AbF71tEEKzA5qNzR1ml4WzSPaSg/lMJTxSPKtiVEEv0lXPgN7SYK+2bxNhpkP/+bKS6EneCMVbWUf7Sb/ZEMhhYMugD1vKTQLzs0+cudRKRd3MXF6JVtppnu1hFPz+XhWZZfNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaNTpoIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaNTpoIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761277193;
	bh=WUtG/lIM50KDX1TBfs0bU7VCgm6WKlK7l50SnMXbfrY=;
	h=To:Subject:From:Date:From;
	b=qaNTpoIFaTOA6KmhW6btoYYW/+9ER/Ok0QAZGGRNCEjrf3mBTctsOYDSNg5ktyXa4
	 t0ZGtBbu28fsF63FxBChPwyl0W18i9Ag+UwG+sh5nzP5TmY9S6bSH8l+jitZAIpfb+
	 cx4Z51Z+M9RI2gcUowmiO5GLVGIi/L0EhUjE3bjWzXeBhO3ioKRpJY4h1/pT6ZeRs5
	 4eJamDUAJq7vYCPpZKDp6ta7WHN83UV6+gEXuExqEINny3/gOBdRF7zCXP0XzhHSXt
	 +1T6EKaPZPa1dSVPXA8C5FXkiwq1BAFasIW29iWMYWGhPcd6rF3rtyF6RyrgtUGX21
	 /h90sgsaL0lng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7CDCCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127719357.15768.3255048251461338497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a579e6591f7a3c06a2151d3ee45a64780b8652831dee53c3039ceff116c3d26
Date: Fri, 24 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761277193
