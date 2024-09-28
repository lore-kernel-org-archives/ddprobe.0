Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DCF1487E2
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727511354; cv=none; b=MCnWJT7H5XmOlncfgk8m+2yiHm5M/pciqgqfQ8sMe3jty6/3ifrnXR5OHrAkSbo82W55c9Q37elRCfrfKNqZSoRFFjsr2xgHK2syKrJMM9kXSMtfGufD0vCihHC421MsXqyUGGTuVb3eNW/STeZpueLyS7KscAcAYNJm755Lvnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727511354; c=relaxed/simple;
	bh=aQN0AGG4C6sHpEggloM3u3NMAMb1KGht3wOjrQf2qp4=;
	h=To:Subject:From:Message-Id:Date; b=qeWzOrcOcTcpkOldh3MZsLzGYuKay5mWCat3BAC2HRdlJNRgi4yefagSzxt2mIVsvD6jel34k40eFtfV1cxK1nPFDQ48h4i0skYBUkS+r4BwZmMRnbZYMY/ZJMdg6XCzWsBSRnmfiftPdhOflD4QjkNHilyQ3ubDVsdzHqdkPUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPGgLlNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPGgLlNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC614C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727511353;
	bh=aQN0AGG4C6sHpEggloM3u3NMAMb1KGht3wOjrQf2qp4=;
	h=To:Subject:From:Date:From;
	b=gPGgLlNsM5KUcy+VuLHYXy+hSn4nXhZbs/b64/cHLCjVz8tCOyy3x0iPF2xIfhRaS
	 cagbWatz6WYGgDwrb5KHxFJ/uI3pXmcsy5VOokCxQlE1i80H6hhobkOX6amN08lSx9
	 eWUkoYg6T07vrWXIrAR6ZmiYjFLsmG8qaF5SEuc2QGhd1KxcDBdTkjHUFBZkhgLMYP
	 ED8JF/a4+1kKLA3JHUTJBcK/+If100ndcFeasDS3p27+Yq3yC4pOD7lIm/ywUWrBw0
	 uPoOJ66s3yQ9v2HTV9cgUWgq5sYbJ9DyP57A6CBmGqH4AKjGQkA5+NbWexe97/5SHc
	 8hVKvPJHiD7Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9755BCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751135359.3401.13666126820817864835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6cc623f63f4c019da8bb3e684e55c48db9e3ccb4ffcbd6ff094da5cb3adffa
Date: Sat, 28 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727511353
