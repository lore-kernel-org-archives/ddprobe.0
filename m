Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B52D38D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782518914; cv=none; b=WRl6sIURNXbbaHcSlVnjoLe77UdAL+pG7dQUNS2+L0YXVfP8HC3sKYi/FATHVP1CYrjFJL4yiN4DW6/EqbbYeqiXf34nY3Dz48Njm7vihSfdrDylboUGskXkKthExnoxDN+vTVBrtGHGsvScEczkdxc6461DOoGG+0PcMIxkgkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782518914; c=relaxed/simple;
	bh=k2EQ3jXXh64ujvb726KtbhB51cNBE4s0dbp0OhF/zlw=;
	h=To:Subject:From:Message-Id:Date; b=ZT+3bLiZ0rDcLKNN1HmGUfwW/uHb0o/jEPv7WM903Rgj6r1dG7i4YWDMMzUBU8joAZUUI5BpnBkZ5S5WaLbxHC9B0AEya+dYPYATSOsK46Qvx1ZmEENAORf0bwiFZmX6bAI0eKVe7iwZE9IMUaTwgEsBP1y9n9wdnFnDwuYdOTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiT7IrAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiT7IrAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29E2C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782518913;
	bh=k2EQ3jXXh64ujvb726KtbhB51cNBE4s0dbp0OhF/zlw=;
	h=To:Subject:From:Date:From;
	b=kiT7IrAG6+6LYT7cYrnIZ1hxQPoZrHFJ05viuwMNWEB3MM5T6O3uERGUW0/uZMUOk
	 cw3QspIU2WugeADCfD9VLfKdByM/1z6YOTsZ2kzxjXBPSdMEEndhlGgFl3mKFHOpKg
	 hgJWtMJZ+ok62pSPkiKQrIxd8cPRqSPKdwQiIxSoVBU5jSi8NkwCq+gzETs5KCOIxG
	 ep864qNryKDEj7g8VlFk1Xdgd6qL86wRSkIi87Ky6UN5N+Lxs+qSQUCIAaW4bVpVTM
	 SRnsKV86HVhSpsBuo5AF8x9G9jPYlscJ63u7tFlJ2AKeq/D4zHI1lJHNt48N5OzNO3
	 jsbF9h6XQLdPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF28FC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251891369.11357.15673057979686002719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868adab96378de8bd0aadcbd6db6b6c6f7ce0bc5df0cf164949e25207f6846d7
Date: Sat, 27 Jun 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782518913
