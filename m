Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B99A3C17
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764522774; cv=none; b=gqztjBQINvLSxSWvpOvQYaEepU/hS4LSlpfLNjHKSTkiCg8R1pD2ULLfK+zHHAUG3ad3yeu/3nogpVW/nqd3u9VVA44d+R5nvmgwcf19hI3Oax4gMVpNkOQZQVULV411IcezvjClVFPyI1mZafccy82oCC60kMsxnZ1cqHEEu0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764522774; c=relaxed/simple;
	bh=eqeFrXcpxXw/pJFAHDFmD8rsGuRvArXB1H02Pq/xNH4=;
	h=To:Subject:From:Message-Id:Date; b=YEAKT7M6XJ40WR/IY2BakT2dn+YtUJKBOO3WVbgOjZuM2go46j7XO7bZUMc53E5b2p92gB/TZRnJbi1lfYSXof9Ie9+WGxbu1jpnVBz9U0cGV+Zoq2y6SQIQTLXFZTrFLlREqkVzBwWaJUAMoeLzR4VJDha832qxUtv38Q42WpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZ7K9wN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZ7K9wN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA46C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764522773;
	bh=eqeFrXcpxXw/pJFAHDFmD8rsGuRvArXB1H02Pq/xNH4=;
	h=To:Subject:From:Date:From;
	b=UZ7K9wN1DtgQTsflbUVLu2YMauHV/tpBfsT6k+8gmRjXvZecVF8IAooy4CTZtfV7R
	 hkFq499+laaEqAtXlgHr7EcqvkXPg6TjE8mNBSTWUhHDmai8YpzADIgeSuRMK2LS5V
	 aIxBb3arjL9Tz5WqlcYGQqPtGq7IDUMJ1RHzwFFq9UEnZLd4ua3i03qih6DyYjXGvk
	 dpLa8IZ+quXLbSq0jWETaYfJ4tzUHJa27pitNGnPYKNlJnIGPblKNktjY/WiDXrZXi
	 k01OMHJpUdwZENE+/AhXm8j8N9kSKcLpNz7HZGkALeWsIpEqTjtAQS4XRjC8WByCif
	 dNrF8wnSH7XJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998C7D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452277358.22296.15200965566496829685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3291e38a1657590c225cb5268b4c9e2db3536ce38b3da1b120129271f5c2a97c
Date: Sun, 30 Nov 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764522773
