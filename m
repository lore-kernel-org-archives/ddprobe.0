Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A909F34CDD
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790535634; cv=none; b=R4DxLydPBz0shUtcRxUydxJ5ZrdyCk1dheY69POJ8VWOSEMMtzoEzcq/IZBWe0C3OEp00hF9If2mDEytec3XAqEkpizUzPqHTSari8u7M2FpfvLIu8IPyhI1GON6fEgaG+9wxdiZoeTzeZmONLVhndfmMQ7z7DwFks3LhHW/jaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790535634; c=relaxed/simple;
	bh=VGIdAEOmTnfBvn0ugF+YGIgtd0GzLpi1ddF8NI14EUg=;
	h=To:Subject:From:Message-Id:Date; b=RtqthvnqG2Y9pbA2UpXo7X5TFeS9X+CYpNeZlYYC6RuSqqVawX1cZPO/OGWXY1sbisMu5H1UtR+OlQUAEf+aYsNOc5bNLcxvPB9Ntx0fOE+L/+3VOfb1Ux7mHOwyjkh7RrtvLF4p+hryPbolDCgAunsjfHMd87e5nG1OF3BCGy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpJfOLPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpJfOLPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA4C9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790535634;
	bh=VGIdAEOmTnfBvn0ugF+YGIgtd0GzLpi1ddF8NI14EUg=;
	h=To:Subject:From:Date:From;
	b=bpJfOLPJ9Oyeuz/SCzLMqWCXV00H2Ghxo/ik1+IoDGBsd1BTIVW2j8wgNqaATXLkm
	 h8JtlzOFVJ3iY2+rCiYsBYTw6tsVeU8v0tyddosEtH4zphmGNKMkWeOq8LphAor3jY
	 gfbG9WVTufYDRcVSF/LRwcHMNanKXBRqJgd1AI7j1wlLMgrLm77cZT3f4YUOgeSXN4
	 1jCwzlRD2hfMAnwdiVC81SBCsZLfArBtsx3vA5s6Ydr3oYbqtw5xpNdSMObSox+3Rw
	 r1GYU4Z+tjbTLFuQBrWFEuF1I8Au7aeVtSDlCGBlEAAkGlKfsUuO1M+DmvUkeKySo6
	 ccvBA13FTC/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC683C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053563374.17905.3715974092523619437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bb959d52dacc686e7102a5e5a85a5e11cb4a376da7995354ad59e13db00aa0
Date: Sun, 27 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790535633
