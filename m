Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4725825F7A9
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785691834; cv=none; b=ZqOctSrQCyhH6YTYzfcoyhH3zjQ4aozTV+33udvrFsALsQ54CBmfs8KXxq6eTMTc6du3/LJ4i7T8loZJh9oco03c5L9j0NfudBUep5y6RhBjtsXBoiJIal7INwYz57sBdLcdoZQvSjjMos3tzhGRWiD4wZCe0onvE/lSuBwoFN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785691834; c=relaxed/simple;
	bh=7t0GriHhyho+6DN/zQ73A4CI739FJpMdkJZI7C4zCh8=;
	h=To:Subject:From:Message-Id:Date; b=f/mVyGLfyqrLIfBeTXYptR+EexdORwO3Pz57AKqFJ7JyPbx2tzz9D/TJj40AnNuzc1W7iruy/aPOJshcp+H9aSmMNdZEGkYb5S16Fug91Ppaq9oOkss0CyYAJjAWMT4t5FnN10WRsQIprHsfRKT1H/xMSt7Li061xg+X+v+ANG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIbNok37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIbNok37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF715C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785691833;
	bh=7t0GriHhyho+6DN/zQ73A4CI739FJpMdkJZI7C4zCh8=;
	h=To:Subject:From:Date:From;
	b=lIbNok37IGwakSvWtyc1Xlm0E3L5g4LUY802vygDYm9gsxcpxXg2UWD2Pfyma9KiE
	 gRiokh/p2rXPy+FCe78NhMEFT35Zce1JoLFa7WpZ9q5ZtX/IqTpI7Paf7d1j7bzLsN
	 CK1zMnj4P+Pzmf1vPIzXv8HkANEOnhoWhl1KCEHQynG/fu1gXdc4NyLRAEttQtgbX1
	 NRl8JOLRJFmdx9MG+/3x35jewHRuFpe/iAEAPc5HkTar8oGXgy3DCAzcqfU7GdMW1L
	 kt5Ol74WvdVlM0HsWraArjs6JoF05wbMGgvmFteaud+Zxbn65oQqIO9DMUwEHBHs8u
	 wn+oVE6jQi/rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2E0C55177
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569183368.5886.8312211001488268254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46aa941b929daa3a9dfcb36cf730cfbc9fffad5f2af629509f1bc4cfaae4dbc9
Date: Sun, 02 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785691833
