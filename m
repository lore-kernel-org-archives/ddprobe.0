Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E871E502
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713548423; cv=none; b=f1vW3AlVZcSaBcookMkBFTZSA9SNEQslhF+nK+yWOBCjHM/YQtzeXmw+/UavzXTyM0YhnRddZFeYSk7IL/5r8CIYJ90tEaQCiASaOHToJVGZmHiXY7YPlQfy5zmdKrcosVbW+aoUPZPSVKpPiUmzRt6C6r6p2dcE1zoxKjmItqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713548423; c=relaxed/simple;
	bh=nspZjtzEvSgG8BmU0PJVUAuifcnu0UrGCfDF0WnD6Hg=;
	h=To:Subject:From:Message-Id:Date; b=MSDzwZvww/aoTd0PdKgdfcMb7dTCy7o0nLoPjxTbU/fQxXyV63ph/fO5zHzQrCrOuDAFyWnDvu/onDe4PcKB7Ms8E6gRm3B6o7eVHmBaZN8XlocIvx4E/U32mb2iw7Az6QptEcjtLXgb5rOGq2PiA98dHv9Z/Rbx3d08fKedCvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAFfAcCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAFfAcCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2351C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713548423;
	bh=nspZjtzEvSgG8BmU0PJVUAuifcnu0UrGCfDF0WnD6Hg=;
	h=To:Subject:From:Date:From;
	b=ZAFfAcCH9acpgrXW7raO0HzpsSEW4QLO8H0jsVhtFOWxc8GFUQDubshHvXhXfgNqo
	 2nw8UH5A3H1x214cYp3wQhAIE1VO7xb5V1kVsDJqw/Gm08Dt/Uz9vimM/W2NU3oMXH
	 pD/VYVmaVHZfid4V85tw7lMMEfL6WZUck2Mg03D3j50HIEUHFLfPIWvMsaLDZI1Dmh
	 oI3LyQDN+YDLYDV1pkVX5h4nhlNTFOYlsyrvBhBlajhWi2u9BxMoePC1QRvz7pMkAG
	 6YnItWiP++qNGOM9SF2Qq+qYghZqaGVq5mjpcdV2XiuTHeBbOzg/StFowSUAPFc+M+
	 RM41XBbU61jXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6529C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354842285.19073.3995443324245068287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da10779cff42fabcbb0bc4f03899ccbbd0f69f1917905d1576bc52f3b09f7477
Date: Fri, 19 Apr 2024 17:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713548422
