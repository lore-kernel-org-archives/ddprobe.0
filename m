Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E5A1FCFEF
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766178233; cv=none; b=Cz9xarPPIR/U68NkgWv0O0xoyyZZ2qiP9uNMuwwUVmXvUcSXJdUAe3PuB4wwnb3ttU0/4Cj/XTpBKaXRoUZK1fu4hHEJs7EYPhO8gFzFp3Bww62Yr/zGgeFgqUUeovUSiN8K/0sefuTeKi/jHbQwjMIEog2FktTB06jE29QMBSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766178233; c=relaxed/simple;
	bh=pu+3f0FhF+zOg3UqdiFbl0NEVVLqIIKJL9tLxsmUsgI=;
	h=To:Subject:From:Message-Id:Date; b=TsBluU1HSdIi6EuktbSB9RBinb3LNEcY9pvBG+NjdWtrg64dZmubmdaXhWMu5kk7kMwwR53ldUCK8Gvt5nrRVj9P7EiwMM4aGR+xQYkqne2pxmTNBrKo2HJr12bYR3To7kes9DpLiR4u27QtwnFRY/bGNPfyj71W7NyWz2IoRjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXykSUCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXykSUCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A872CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766178233;
	bh=pu+3f0FhF+zOg3UqdiFbl0NEVVLqIIKJL9tLxsmUsgI=;
	h=To:Subject:From:Date:From;
	b=GXykSUCSg9NNa+Iqi9aBgq2v6NY4V+dwidf2R0slp5WTnTJEGYvx0dLdLEZWXNPTA
	 31nPD6mef44ItD1clnJRk5+i4Lb75tjzDypouD+DlIgofnSFcuGZyUg1LJeHzOu/DL
	 TQX3g2wr5uy2mHlnLC4ofANW1rj4Y3sw1tNamqWWIzOSSUhuhJxYNjLNH22ljuS5eE
	 +FC7LnzJ/e3vdoGaOTUCEOi14+Li+JPIvhc55iq1RwVautCKOLII5DRsCOjXTO9y54
	 zr4k35K1KF9Rc71qGtp0ZGCRoPzQsnUXXrLZ54kxq89T4DDGnsFZ0VMH3uMoJAdpLO
	 lSprI6akaI6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92552E66884
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617823358.6751.14272297707632770798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d913c54aae7cbcb663d05c9300763c5d9b2c427bcb16d8146f79aaae00b23c
Date: Fri, 19 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766178233
