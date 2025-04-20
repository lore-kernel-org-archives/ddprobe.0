Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429AE15A86B
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745144394; cv=none; b=gUf+87N+yOHnz/yQcFjVi5Os+Wb6/w9SSUmj3HqeDd7OqjqMptPnmJZcg79svOAy9MDFAHIr+NQQDNX6ljIcRr9fKpwJ8wB0b4VgSDuuobjXDptLV8sk0o8SlQhOSwj5ho2Iwf1vICzjhU4inO5PZ7y4t7RXRJO0x+qFqO3dKDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745144394; c=relaxed/simple;
	bh=HcEYkuLkrZRV5OXQZFQJpfsvamiVZycByNxgJP1JT3I=;
	h=To:Subject:From:Message-Id:Date; b=E14P/AcO7c9M6Mp2MijO6U0BDkhQNH3J+lPKYBGH27Y2u/4I2H2oXYWoToMAbLGksUEYVl/avJ0HGN+N2vbO/GiOlS8yQ3ca6Kp7IFcbWuZIzzcUqi6kJ3I6UzWDbVI04hmAa//KNy7e1Y+rOiDhzmlECnmh25kxT5VQ/vPacng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbrJKWg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbrJKWg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE01BC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745144393;
	bh=HcEYkuLkrZRV5OXQZFQJpfsvamiVZycByNxgJP1JT3I=;
	h=To:Subject:From:Date:From;
	b=FbrJKWg6K9Ar/VO16jxlBf2IE1hjI7yCV9wWgz+3cjOXhsZ6pNQsCl4BLRWigyZ9+
	 wwljvGYN9ptQu2hkSFxbnbNUfq6UEjONDRiFL+H/d20yYMnrbgDOK5LXttQ5zXgRfa
	 ZaENA1zEbNcdhJqVZkqehQngx/P+FDTlV1dmNJAiTv4ip8qnM9JA7yytyIwKZfGpG9
	 9OoT8pwUmMFvbTbO0aWvIeTg06fNuBrP3plfWdhQvVdtY4bGqpaR5OwyFu79xP6s9A
	 Drh5OSOapQCgxD0rqZf+neCnM8NOMuK/xSiNX41Pg99E7RUIPmj2RQXzy8HlZm4CEJ
	 j4QrM8PoGGl4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99779C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514439359.11525.14810564572506881553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd77540e2da90cd81ca7a259d699e5cef699f122170d4627838e773285fc3b6
Date: Sun, 20 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745144393
