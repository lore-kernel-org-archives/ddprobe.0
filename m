Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6510743CEEF
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772205294; cv=none; b=lM2ekeTH8q+sdXh/Z257nn4AgyEhuhBqE2xOqsDe1DhfNVmlSz6Wno/3veHao5309a9+kUuAziESqu//rwi3g4GNU5vFrcT2cHl1sTGIML1z7iJxBnp7Ek9wUtCPDEfolOjliytY4+tdI6eRbcv8eztuoZZH5vWMgqbeePydbcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772205294; c=relaxed/simple;
	bh=DPsTqajUrjWBAjj8zZ6+I3HJyZgMGiyhgMvOoJRYB6o=;
	h=To:Subject:From:Message-Id:Date; b=goOILrauBOItez71pT8uPsBykRUciMmBUfcWPTmqkOrY3Tl8zgU8i05hNipnjjJMG9hlg4LIrSEjb2h0BGkc5yt2yQ6vCDKmz2KBV7LA9zWvXpsrs5HR6HvI7zTP98eAkOL+UNDoJPGLZ96tnYMpF1+GEs3hROqDq58i4+1TDK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEL17NlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEL17NlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF9FFC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772205294;
	bh=DPsTqajUrjWBAjj8zZ6+I3HJyZgMGiyhgMvOoJRYB6o=;
	h=To:Subject:From:Date:From;
	b=gEL17NlLEkEAozAYh5dkHnj86rlkoLxbAWg/wC0XxCpioT2mFjhGL6QjxjdaT1Rec
	 4nNjuKzpFSHzIhOSuLTD3mevG+pEyCVZxwcBz7ciIKhkwetnujqN9iQZzeRykEd1j/
	 zoRX3KEhe6lsIHmn0lxVzqawzCqu4fDKQZ9nCPeC6qXRYliw597iAL48NYLF4+Ukyu
	 q0JU1ASchg3V8yOZ0hCnvT9c+8NskfCCCKKVSXud6zpQAtAkGXb3/5PNeS5SPYeZXM
	 Ei5FMHo8ySTqgCp+PY9x4eeJy1B3XNwi7p0dp/7/dqPQSrU0WadVvlUI+sRkveYnqv
	 HiyuJu/DrBVuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39A0FEFB5D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220529371.10813.16130602778475670887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ce62322161a80b33b00cc045278d5ee02ed9bf43ca808a7d698b375fe39b5d
Date: Fri, 27 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772205293
