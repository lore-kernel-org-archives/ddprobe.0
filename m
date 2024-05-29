Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5814FDDAB
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716987263; cv=none; b=HrT2FzOuxRniQdFE/6S88entcBH7OKKEoh852P9ro7pyTaAScGGBVlmsqaXtFqz+SbWBTRBIQ/shg06QA2UPIvcuu0m7YXy7jeftxh3Z7UGrzeePILFsipa0GpVLd4SPOf4G5tkaUc1uGN6Ye4DoZKG4fUwC79NHXcX+MH2+4Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716987263; c=relaxed/simple;
	bh=k6udnFCTeO3mfjO1GMAy8xmRtNMF8RpfPkWBoqg8r9w=;
	h=To:Subject:From:Message-Id:Date; b=OCRdPURw/whN2/IbG1iTbN/V8lgFTrACE8o6WA6hvFmJETXiuTXpwyj81PmioePIiNflZ2a6VAagFBwBlG9JPFiGPLuiRwFft+/3hk6C7OEmlPj66ZuF1tbPbT3TgAeW1nR594rBWzt177xlxBEiVx31tdLC3rYwbI0BWO7SUsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEIjDwoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEIjDwoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F0BC32782
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716987262;
	bh=k6udnFCTeO3mfjO1GMAy8xmRtNMF8RpfPkWBoqg8r9w=;
	h=To:Subject:From:Date:From;
	b=FEIjDwoIVI4glGw4x3LXuxTZcgNSdsyi/d/yShs7EWN24rDddUWwO4SJBsX+C2iEh
	 8jYCghfb1C7IFrKcuB+etJOaMsVUWm1sNqz1GQ7RlphQxGHZfPp8qr81bA2ApQRPEy
	 G000vF151ZAwftQ9uP2cgqDH2dPNlLghQqZrKG9AT8enLwryt78/ARBsjR7vNqJzGb
	 hUka7S5uxsio/UJ40WiyehKE2LQDizzfLF3s+ujoyOR+jOZ3K7l2so+iOD5wbXmK5X
	 1iwCemJZv7PdLCIE//Qu/ecdqd20oPcBaGyfMDQKA3PPf8Q1uEO9IY8mgPwu56kWw/
	 ssmZRueCpH6+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D69AFC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 12:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698726287.30216.8131083969117785167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb1bc1b75c60737d2a1502ed68eec6801beb85b0fab8c19a4a04aa5b011e816
Date: Wed, 29 May 2024 12:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716987262
