Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D1329B795
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769952234; cv=none; b=WKslc4LmnORrgoq9hHDyzCZpdjadKE742RnWXy2EKqd6ymRsgaeveHA4DTTL8LqXu1pglz6Hfb/HiCFMIDUUIBd8Ou9x3Jvy/57Uhto5iTy5Cz7PofXffMxDCvC8TJeTO6Lk4I9XfvRjLjzASWiBRSq0TGmtqC2qcrKU3AJkRiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769952234; c=relaxed/simple;
	bh=DUMmjqM2Z7HexE7saPlpYiFtj99JqevMhpRaUVz5Lmc=;
	h=To:Subject:From:Message-Id:Date; b=nDfDG5w3hBqSZMML+AAXH36CQWDGAJXsYbPVoUN3QtnL2dRk8G5CgOyUn5EdcGyHwv6XcWyD1HULj+93909fzanFwQam+2jGv3Dn5KotgikaedCUUYURusW08m+lNF+VeM8OvWK0bWYM40wFDkw5/6eDIide/ggRprxYgqB7VHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nx+FG3YU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nx+FG3YU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DE9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769952233;
	bh=DUMmjqM2Z7HexE7saPlpYiFtj99JqevMhpRaUVz5Lmc=;
	h=To:Subject:From:Date:From;
	b=Nx+FG3YUpcyFnONwcgz3FSp2FqK3KKpRUCZTc5XQWev+BrBuzIVvKbQkcK1WeOmZB
	 FcCG0XghEvKp3GQ7QQcxdX0trxT6qhvqOWBbkKpMAhvwqCCoMcb8lob0Yyjqp6kyiq
	 Vi8AMEP0/Lbzcni95yzNsQXw9XQfqhdKdOf3oZEUKFSfLv7FSWCp4SQZ2IiQwYqcYu
	 oATTSh2l5r/VlEQyAOWWT9cdsr+TnfJ45RP5Z7U8W95mw9VZvgLx6vt+0nIZfsBRFs
	 4phNi/rHdxy4eEwCMK16OXvmbwlSzNQSc0u87loAscocobOorT6b7Eftya0O21gdk+
	 aU2ZloBDubPgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994AAE65262
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995223361.733.12118232000900771243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84aafd560788536e4d04aff9edcf6f0e15a80b6d0b2a04dcc7fe01e8db39ac47
Date: Sun, 01 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769952233
