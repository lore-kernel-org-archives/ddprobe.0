Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3909415B10D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 08:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719389003; cv=none; b=uRoTgdJYD6YLJJNN80jobcZgRhPjAZ0ilIFGSHA3aU7fJo8LxnTtgL596935gBMg0CkARP3SZ/9sBuHCZNupKvRyA50vMfp3X1D+PlSDQaFJVFlU17Ckxl3J+DIpBQrrSiEFjNE6MmzOLlWjqZDZKeBXty1Joa1bQdhVhWKeQfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719389003; c=relaxed/simple;
	bh=ryi+/f1LvAgxGsJL4nku2eT4ZVADo4BKrIXXXea/evk=;
	h=To:Subject:From:Message-Id:Date; b=FdeU1MSosIGmFtYLpCwFu5TZA2S0pD14fRmj4FgaX9XgNlGZn1+jiddrEFKIftr/MwDA1TsysWt4F4Hc0j6uyty6iuZC5umLwKAAFeOEApbTkSN3mtdVz5LyW/8CMrO2YiT+AJNIxR1LR9zcj+MqTuRyv8uiLXkg5sCBVHxC9HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/HDINGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/HDINGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F0AC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 08:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719389002;
	bh=ryi+/f1LvAgxGsJL4nku2eT4ZVADo4BKrIXXXea/evk=;
	h=To:Subject:From:Date:From;
	b=f/HDINGsfmrLO9TrqyQy9ydT/UFuM5pex4QaxoTvaDAeJO32q0sT7+aGrQFBGu477
	 QYiIF1X4XHqKWMg4JpnwwHKf3ZnmZJpfwpcqV9k+Nw2tXMPWkubl4vpQyKoYIith12
	 kBRJyeJEcs8/8sIvQJd4MbEKgbYEfDvS96YKa+bOc5qis1hgNTUEDOsjKlsJfIBbAc
	 KdX6MSQVuCCqrlqHDKrQNYeGrewK8gIWhxgACI0WVKIQbCzyzlEIFIWPt3h7pdzET+
	 43CIykGPV0gh336TPojHCm1HpgETa8mYM6iITH/k4P73sOnfESzdNrHefccjdQwXNy
	 ggkbRG7MJmimw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1A1C30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 08:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938900277.18323.12470361817380844881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa30ba593ee24b0687788c9519d71f41dc7a18309213bab078f7371906f32596
Date: Wed, 26 Jun 2024 08:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719389002
