Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E91F13E024
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718270303; cv=none; b=i9YF5ajk1WI0BujXvRarc6KFzT968jzAll2w4pFojJJn0dO/XppHZLFOvZ3QIUnMOFgMcxdc9ZFIOGWK+X78xyZ2datq5Pm7Fo84GYcbeR6o53s2qESrJXh94wPn1AxqZ3jgPBwruFoxJeypwt9dlAtieXhVvd5AdUjKREsrtFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718270303; c=relaxed/simple;
	bh=Gw9vX32ih56rWegzVLmCHGufU8hNe/nlqJFBdHy2Njs=;
	h=To:Subject:From:Message-Id:Date; b=sIoykdqjKqhHcrMsdW2gLVwk/ilKmGwIpTtIjTAxb4EgMp6hGsRS8P23ix36XwO40FWbcOHTS0LtMggefvbCM5Vg0qYmNNC0LQcOLznpcGPs4sluek0MRHrJYOiUusfvc3ZiL3lZj0hWNMCE4ZJfjJ4wgrvmrpSxn037jg5f1rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnJZsUmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnJZsUmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D3EC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718270302;
	bh=Gw9vX32ih56rWegzVLmCHGufU8hNe/nlqJFBdHy2Njs=;
	h=To:Subject:From:Date:From;
	b=hnJZsUmVdtoTUw2VbH4wtcY6S1aQBkZWZFs+Du0mZsF8ys6QX2FqAn88nvWdhmPV5
	 W6bW3+5ekzLIPS1Ex51ASo89K3NTHmOwYflm/bF+a7To6VTGWuXF6FZHTf9TVijgJh
	 EvXFwLjFeJpqkLIFQ4kyO3IFrpTgaus+vDlW+n0kRvcGZCX7za2z6uqSEU25mEwPUA
	 3CweLjZ5gQw0WD4mVLys2fXX0EomqwZYY7kODBsWrpW8w0TZn7yHtsjFIaolkzYgfw
	 yg+YPf6IBngq+CyW7+lNhwWPV3B+rBdqJVhWVT4R0VmKhOWeUP9hDmnDLROjRTppSs
	 TRuPsnYqqssrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAAF6C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827030281.19998.6353780825217571045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8185b2db7fe4158506b12960270ad0935df3e5258c41a62528c6b4731a64e4dc
Date: Thu, 13 Jun 2024 09:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718270302
