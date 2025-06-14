Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8362E11CF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749860394; cv=none; b=tPagir1s5aFjEGxmGy0Tovbp6xsi0ibs5Rv8ZISHIAMB0AsiI9IoFYJy9HKEXJ35rmzZntvhvKCdFXCcb2IItpQiWpsvBIAY1qhGvc+f5gfQZrdBryq5TmJkRxYW76HlMjh0y/grgGVOSHLmQUSs0nH9kzJTaMxwVEsWDdPYtjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749860394; c=relaxed/simple;
	bh=RO5cR2FZGmaPx2hH/J1MICq/8xcg4ORaUg1VhjeDt0c=;
	h=To:Subject:From:Message-Id:Date; b=iC7vRuHw61aVgjha21PSWsniPNF/UmrZEnuwtZ9SaOFPeNX4WiYR0J68Lb/u0gfF9BwMzfccijcXcFHxmxjQnVNw2nJPBQC8YlXFisUYnC2aw/bhd5OP8MawlBbJb9+N57P5r5mTIzBPBtEM6U/mtc+LehMSjM5Kqt1y+WR9ub8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftS7eHd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftS7eHd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F485C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749860393;
	bh=RO5cR2FZGmaPx2hH/J1MICq/8xcg4ORaUg1VhjeDt0c=;
	h=To:Subject:From:Date:From;
	b=ftS7eHd1Bld+ouY5WqD1qLKQK4XtN0Ff9G7qht4hZIzGHxLweWUqhd2X4r35wue6k
	 zZbcwfeksy/FniJkrk0hSJrE0FuygtrSkJxT9KxpPfKrg68KZ0a2zfqz6eB8TD8oTP
	 m13gf1UcMDzkQrt3DfQQvLwzSTqTfq2lx1vIOaBxX+BBjG2M0vwUBPtpxdvw5LjZph
	 54FeDkBYBh6/r+E1Z99i8gB5AZ6OhHS5wAkRlYrBZ/LwlpqVLSU0iXk2Tt7ibRC2+q
	 ZHCvocPjlaCeqyvAuoWaIwEuEOvDKNg7L7t0R14r6vnM4v7dmSfXEV5KIJD3gHpJF1
	 tgf3eYedmNTXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58EC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986039357.12452.11595165825629405974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbcc42cf14d69278cde7f4cae98190d384347e4ca0f8fa5502a2bb2b03e9da01
Date: Sat, 14 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749860393
