Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1858E311C30
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765195975; cv=none; b=KSokU+LLr78rEhpA809hxH4NrKSx46HchwrMUSTu8gD9uzpf6QVrLQZA27KexVWj0YzITNsVcq/aNzZrHqrQi6Hr02VxSmhllJFyeCd6lcezFyuKjwCTrf4LqoiHbAlfrAaVp4qESPUzzf5mtp/qgA1oFeuafY7yLD1umK6DkR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765195975; c=relaxed/simple;
	bh=eVCkS0NTCgtWE5y0fv4tqO+hCw9k3Sr94cDyESlh6XI=;
	h=To:Subject:From:Message-Id:Date; b=TySQi0cU4JeGBmzPBWI08Hjvdott8zpvv8cuKvP89+7jKrUhQOiPSZ7VBpqBGejhdh5FCY1GkXm4OxtserPXOyCZKT2H8rT9btxBqO9DTMoMnxiNGuH2XnYw2R1CMWpI48w5ukJarG4l5e7sjOX1lBLOgYpgP+SHWp/xl2uDkIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+Th6nWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+Th6nWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79C1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765195973;
	bh=eVCkS0NTCgtWE5y0fv4tqO+hCw9k3Sr94cDyESlh6XI=;
	h=To:Subject:From:Date:From;
	b=u+Th6nWfC4Fh9gQWUNbpeWkCI7iyqQPK9h8gjCNu35oe2jDoKC+rAytIVq51zYSwW
	 MHJi3rrNVNdw6Pjvsa7X5uq4L/F3QRkqcWkbEbvseIELMSZV5dPgIBl8MHLvMigBBV
	 uS4HIcO5p5618xpxZwmM2a+dMS62fq7feHyTbaQgd+40TOsbyMi8+ZHZS9eURRnsCO
	 MASRE4ehx5Y+ADOUD05hLand7rNcxSnVV7Ulv1Q9rvmvg/y3oZOJ2jqxAlt0EttdqJ
	 Z/IWp4G9b8RRsev9xmHEGMICFzgey3aG161pKh36A/EvJXALBWIJRIgWEAh9FXS3vQ
	 Fd5k/GY9O7Svg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D7D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519597359.30292.7540065680062723705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d785c22614873ed5cc621100bca3f9b299a6db20d5e8fb4ea2722027d7a7b308
Date: Mon, 08 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765195973
