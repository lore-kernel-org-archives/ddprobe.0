Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458392045AD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784310514; cv=none; b=m0ccVeOFgsnOh3xaSb4fGwY6oXmwmt1bCZmWtFpGHagOZiJqQhsqqkHhtB8TIp2Rp038EhdlhxQIXbiQa52vFzWBKtbEwG2VLjpOaMWeqGFC0dVSlsTCpf94KP9xtCngvD3GywOdYymKxKcY0zXKeDGsVyZ3RmMGqZVzHo7qs7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784310514; c=relaxed/simple;
	bh=v8UWMG9MZOlnBujDFlbQ81WPslugFF1q0kDc3EPN22o=;
	h=To:Subject:From:Message-Id:Date; b=cVPvdug3LZxx3aJGz8OpFL/mgrJwTbdpbRvp8uZNg0ApBhy/tdFos+AaVb1+m/DugZnEsylsluVI7Q2TGBbTQuhNvH5uHCSw1XRJ7U4Fq0U89amlxFZYqWnHvs4nKQNQOA+mYYKBdSX7PUNVwUeTd/RIK/kx/HA6hber65YbWw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUo3U363; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUo3U363"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D618DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784310513;
	bh=v8UWMG9MZOlnBujDFlbQ81WPslugFF1q0kDc3EPN22o=;
	h=To:Subject:From:Date:From;
	b=PUo3U363onYaF4f4PuJL9ydJgidspHZu4kkLnlqym7l7/bPdGjkS++PML5aPouEEa
	 FJs3Wy9CzD3kOJmZfV5VtocCI+j5P5AD1NtXpHMzHMYSIxPIZXJRODjJPC6bfCkgss
	 yJHkahHRj/BAzBlw/0axltzShuKRpN5qEiq3Ocniun7o7r2Ye67BIPG/m8cMn+O6nz
	 aq5w0OeNcYcddz1igjvdJ3tPyvugukdZdWPbFQd0awUFCKUeMKVCY9J0uAfegjtZZw
	 bU6MC8MEsQ1zqdDXuWU6TRluDtN831rmrUMX73kUnd2rKZMLr4P5osAvf8HA+OILGa
	 i/1sxMTi+0caw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24ECC44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431051369.15106.17166307844971198821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465ce7925e5fa8b298580f5ad84d0a427cfc529eec75a55c81f997155db2032c
Date: Fri, 17 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784310513
