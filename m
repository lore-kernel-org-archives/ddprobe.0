Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D3C3612F3
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780270474; cv=none; b=SN0WzEIOfrJo+6nGkzJVEXuInTkWhcVlwT22Ml/2I3FxSr1/QG587hMNOfMWDLUa8OZsJ9zC0YaivfVky5MsR3ZlN/pnLDNclguUZi+2ltaQ14Cgf5St4AnRDQ6SiZSHaAApn8Jqxq5q5sL8rGIGDUdmU4/93YRWjGAb5VnPnYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780270474; c=relaxed/simple;
	bh=inK0Lp9QmTcYx1BI6ECXm8LhUqNhn+Rkqjz8OmOabWM=;
	h=To:Subject:From:Message-Id:Date; b=Dp0bqwrC2QzVL7PRMS/aNY9OPKhAfYzwdNSXK2L9mAdEx83MpYAWZSmoG3sak5D8EWhRxfj7SI4WtSJ35IsrCrCeho+LAsdodTex43FxkIBaFR262lq2IXsSVH4AH3Ra6QTTmkzqY28yQvLecn7BUqpxZIj0zUThAycgJJ6sQf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcN8YCgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcN8YCgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26781C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780270474;
	bh=inK0Lp9QmTcYx1BI6ECXm8LhUqNhn+Rkqjz8OmOabWM=;
	h=To:Subject:From:Date:From;
	b=JcN8YCgJx6Kz0M8H5s1/rx+3DFttXfe8kMFkmme5Vt2+qe/t1+gz4Ej2ykROFxq75
	 Cz4GA6t8Rl1EG9vA7ZItX5f7VRA/UzfDzEpodcTjNq9Rp2CMY9EbG935ZvhLv5PaXc
	 zRc1wK0+QN0iK5WPuHlGgT37KWK7+9fm2lPvgC2L15wZ/Ym2ePCAXB5aHmtEg1i0Y0
	 xEN4v4hlYG0rH+MoEntTaWdEhv3iunwtHLda4OAtf8SKqZdEc3+Nf1M66FJ2Fo+2Z8
	 NU0XgmEJ3WCfwe5PkLSwIBvvBinsDncUnxF9g5kFHQf+eeY/3bTVxZdLKXnM/B+5PY
	 Hky9HKbp14YVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F03A5CD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027047385.11066.10340671101464885312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5133636866b22b6cab8c41ab2597b05884f1fb84e1c57cd5b16e203d5cef06
Date: Sun, 31 May 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780270473
