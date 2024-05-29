Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA4F335C7
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717009463; cv=none; b=QWF+Rc6NOkys6NTAej6wQMnTPpAlcuDlYHmRFuNt4SZ429tEzuUmCvDxwEVSOkrhwlZcKqt4aVqwhF8+HAk5DEib89TkoxXPx+FHPp5Uv5UbXRHpibthIFUHFVdBhS5TncRQNhW07wy7Im3KsIl7oD9bLedSMzgx0bIm5gwU0KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717009463; c=relaxed/simple;
	bh=RfNLpAa6zuGGgNHqCt84u6N1tZqbtEQHHrbYI5zZyO0=;
	h=To:Subject:From:Message-Id:Date; b=J3/ZSIDOl6BZ+/JPwfTZJrkRhhi7Gg27BOVCkeg3HtQ3czhiB1lxU7QHAMH6ZKGeu3RTqgxKyyAvXZnJTsojVZvnMsJolmDzoYfyi2EkA1tQ+e8+JSOjW1CLccEPSdPgo9Z7e0VpEATdHeXhEcOkt3T+CtImxpZssoItCr2Agf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyJz3CNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyJz3CNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D000FC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717009462;
	bh=RfNLpAa6zuGGgNHqCt84u6N1tZqbtEQHHrbYI5zZyO0=;
	h=To:Subject:From:Date:From;
	b=hyJz3CNi9VuZskXeywFRxgdTmkzdHoSjqBqACbmS/CZBQYYkptw33uuvdf/WdP8+U
	 38GGPDtNv4kT9Of4yCb0faLMf568Xxg0qQuBRbK40ss/GBGOsnFPwu2klpcUYeZNF1
	 sEeEIL7fCIDBtJFXrGqs3fVftRpbN5Qn3V13732I15BfnANHYRewSSzzSGatEM8l3y
	 pgKNtSid+MPSfTC70uP8Zl8T0kaHzxcjhNBaniUmcabTTroIy4TDJXmOxRtlWkvQR5
	 nBfA7fi3c5AkTglTo5ydNTXhCX+Bzg7WS8lK/Wrqz8+rd4/2fLSpf7GTh2nMjtYoxU
	 5Lc0Geu3czTfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAD9C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700946277.7256.13141315556709752067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a3fe6a6d0c3c35984e3defe2ce6e098d9fa8301002d2fc48ec02b4054157b2
Date: Wed, 29 May 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717009462
