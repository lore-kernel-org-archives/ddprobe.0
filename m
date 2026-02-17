Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115BC1E3DED
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771313694; cv=none; b=UqC8dyDNljlfS4aJbyrDIZiZ/8VlA5TKSPFXnz/WKb+I0pQIH3UiraF0gwnFq4BV906+B8yDjmWezaQlm/qBGfwMjFnqxo2/+UjA3wLUkfVzD4IHfPDbuiAn3IcHeoQPjJVeN4wnI7DsxZf3Id9krKFzq4xIAK2tf7+Xy+yf0hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771313694; c=relaxed/simple;
	bh=FAfC2m+LsO3PiU4oLtMbKLq7S+lxTN4dZkXpAXY5vuQ=;
	h=To:Subject:From:Message-Id:Date; b=Rr4tArFaAt0PCKuwDS9gL4PG29y1nkkoedSfxMwUBieKDoeBv5KDkRc0VrdbcnUmBq+penlrqGOgttqwT/ooXRGtxJs+s5LXwYUdSlan1zuAUrDwjd4daYGZ3xO6JKgTK8kNjmtajCrfx+90anl4DldoE+xtzb50awS/EV3vsNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tedxdBTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tedxdBTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A434EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771313693;
	bh=FAfC2m+LsO3PiU4oLtMbKLq7S+lxTN4dZkXpAXY5vuQ=;
	h=To:Subject:From:Date:From;
	b=tedxdBTKhRhnRpHD4Ab1YBTGgi7ZRyO8Q0rcKhz7T9H3t54b1/2hqq6OwceyHY+A6
	 Cz7ZteNoI5L6BpPIGZT9FDkSciP05sp757v6u3SErpelyW83atOt9B/IbRQ1xUEZ9T
	 pGU5J+YlG5TvH3jOI0EcJszwSc4IX7uuBGV50HKtaSNBED1x93//Z1pLQDWfqHCqzW
	 cYdUUxY8L5k1LaLkO3U3TZuqEvMVD/GE2sC3T7LfmXEEAWo3J3RHwPTVqfw/sLVZZQ
	 Sij3oF6P9Dy5ZWczQcI4Ajrcom17x8d+2uFZ6Lf6QUWHuKJ6V5dlGLVGybNZLUMbii
	 0fai0E4j+cBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9202BE63F29
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131369358.14041.8587550577839607751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643ef53e72b4be5210d4e1e24ad0a439ecfa893aea4a65aa7475871a4b6c58c6
Date: Tue, 17 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771313693
