Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491B130EF68
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788727234; cv=none; b=ZaBsrRJuCn73uoxSJD9q9+ktSVQDeT0XcLjwdbBkdn8xGNPRTynEzvrOsJyEKVUcrh/DHrJ4YLFLUvrf9el6OcmptuUBy7gEoTaP0WO1iRgEWztwl65EDQo5nHzqkyS1ON/PhmmXg8vnQpyqs7VQRn+rFTT/WTpkk1GmxlF4/Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788727234; c=relaxed/simple;
	bh=hSqTOjoJJEspwiMN46Gx8jdXDzStGehcGMalxayZ5hM=;
	h=To:Subject:From:Message-Id:Date; b=oWAOICen61gcaW9uvMXnxY85dOu6FRUT7sZUiUxDlRsyM8YjmrQ9xioixF2SpDJ/XeUgxlW/UVbVz82ZzOothxph71P+JgEJyUECl+O6XkskA0PLRkbtw0/gTOkBcA3TXTEO0X9PcHPZYqiMaaldr7pKfvopVyZkrUo2V1qr1Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=por9x4IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="por9x4IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2146C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788727233;
	bh=hSqTOjoJJEspwiMN46Gx8jdXDzStGehcGMalxayZ5hM=;
	h=To:Subject:From:Date:From;
	b=por9x4IOF+5JRwFhK8yFzZ1yAqmxzWSEljDD2vPaTC2z9nTTqOvLEbB4/GqT4jBmY
	 /xh7HcSs8GfkPPrKH+jgNzB661OF1rKselYM1VWEWGEZ19F0eXJQRShdjvO4rIYK7q
	 0iJN3CHvnwqS388o9u3eFygpyA5aKeZfJz6TVestOwnQmbYuujdTkqtciSPprCNZsB
	 1NWnQkUiG7Nm1rSf3BmcpoOPgmvCIokZLgjbEPq1FIwMQbleD7bUYwfoeivEtIIF8G
	 /wpVnaT1piSX3YFTxXaMJhhuOt2Qy87UzUSrD2EzjNMmItgDvUvFTZABe8hv6gqOqC
	 x2oaQVZVnYfyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D0C79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872723369.31472.15898356634875014275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445397f6b3085bd80be4fe48fdf74a9b20e0108d2395b973ad94999a7e4cb3fb
Date: Sun, 06 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788727233
