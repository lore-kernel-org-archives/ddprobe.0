Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBAD218AC8
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747969795; cv=none; b=fbq6Hq5/BV8KJjLruQa7P8wi2V+j3Wkz5wnu4Mxy4/B6C6CtwpyAWKSikIOZoVW+XPWVWic7y0EEd7aEG138G30vUAv079ruZZz0PrdnpuhmPPc9af60hJICLpk3uxP6o2yxl5zJMz3mieE0eJ6+7ek4aLuFvgXTadM580eAtfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747969795; c=relaxed/simple;
	bh=+/h+oRKABBochd+bMaphhfysTalSivsD6Szr6M3tEio=;
	h=To:Subject:From:Message-Id:Date; b=ZUH712wpPukgI0sscRdis4XPgfIjyGGC6PYc1j29G3o82Z2tTQYi0q6i9H+arwu37909jmE/fSZjY3lYo5+oF25/mF0eg9+jJsgCx5TZ1wfa4ymqdXKUbVixeqUXJ+3miXIebQ2D5SHluCqI0K84Y9hmtT6FjDtrRmML2YGLqQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5EhqpV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5EhqpV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4813C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747969793;
	bh=+/h+oRKABBochd+bMaphhfysTalSivsD6Szr6M3tEio=;
	h=To:Subject:From:Date:From;
	b=Z5EhqpV8a3UK9GL+52LU6JhV8d3ksODP67Q+JIkjkCoLly98oHISHIqGGRH60jwtQ
	 VTJUVyxHKS+MShCTFLL625x1m/JT4pfltfyEEL0+hvfXXjUJoG8Ex9NpdcLIKn592O
	 TkeKAtbmUG9b4YOs2pAwUmdam8rYg/TYrsEKg2iw2yrv6eg7wR9Zp3k9O+sRkfHhfz
	 MCyjeXpuwLDXIzdnmf6sM2fdxWnxuysGophxLCK5rn9g8WAzD+/xlNuTEqf/UF50Bl
	 p0rMMSY5LEKG75NLq533h1cMklUfQAXigYMU/s9dVCgeH2glG8g6pXpu5TKiJq5CFT
	 kTRRkfRs2GMRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90663C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796979358.26735.8509706185177475578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb1f0d4a333ae33cb604621f4ddd26ae8f084f651f998a4017a63a886c5a422
Date: Fri, 23 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747969793
