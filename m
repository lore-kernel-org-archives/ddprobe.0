Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BBB1DF965
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771684493; cv=none; b=mBB0diZRTwXmRrxInVI8dJ+TUP2CZ7krPw6Sc+CVOkInFIbHPA1PhwOu1SnSowNhqk48F1jtnI+nquyOS36rYvpyDVMwLC44OwlVnJ41+cmv+/3CJ2t9tide6YRIrUg+W762DsK2cR3KqZO9UlN33b/3ECPcqY1f4AKXp/oKK+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771684493; c=relaxed/simple;
	bh=SdwPeyH3oNYV5IINx10PaNMSzsN4mP9gfCLLbNUvU50=;
	h=To:Subject:From:Message-Id:Date; b=OPchVESq+PtDBniLBkQymblkvKtQUQ+FWzj1gc1riKwLNTLo4zm20XsRZKoq9yuBg1tC+d9bnQ6vbnkr0CNbdstcLTQxczNdCzD2LI2DcC+SBQ0dBmk5Au7O4BhNAO+bG451nUwJcmnM9SxGAhBgjGzBEJuxz3QVwFcbzznThBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgIkcshy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgIkcshy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA264C19423
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771684493;
	bh=SdwPeyH3oNYV5IINx10PaNMSzsN4mP9gfCLLbNUvU50=;
	h=To:Subject:From:Date:From;
	b=WgIkcshyvvKJ4H1UUPt6B7Z5882Rf874aeYDR0yIxuq6OGslXrQXg8TcAjR1VG29b
	 FwNW1MhfuZv4HWlY4Pt6dXS5aYuj0043LoFtdtKR7Hs6WCPSgI9rcT3+NJAff1riw5
	 FvnbhV59z40WVt41jx+7d7v01uuRUkgtBzgRX576/IuS1hm8MGhC5IZrZFsBR3aSg2
	 eux9s+C4xFt4XxhLMgffq+iK1s1t7FxhSgCOg36QndQo0fHmUPW6csdJEwnv8sd6El
	 l0b/ki/mbSHKfO44HZ3xw3vXwgVsMAHT+c8uVzJafZ+wlYBcKEfxXZwVweuV/3wvUt
	 HiuOgFhkdbWzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3C3C61DE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168449359.3692.12111961926452722409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2177dd86abe2ab1b0c0073e8d5687f431da1ad06f85469d81725e260661e00f
Date: Sat, 21 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771684493
