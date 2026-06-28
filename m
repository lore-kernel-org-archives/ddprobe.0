Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567E940D561
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782620914; cv=none; b=bFNLR59YTLKTWlIgny7cEubAO2SDJDxjE8rfNCGo47OPQx7n9JyXDo81xlihp3rsn/6s4BjfUfpMlPr1jT1xqyovQTcC1rRUvQIeUEchcSuYij07XERhomSs1FCeHjQes71ZSa97RIkSgy3paEBTtZQsFIfviry2H4eH2tMdlfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782620914; c=relaxed/simple;
	bh=yPcQ265blnLfR8dgqxc3kPA+jKnvNb+AwaL+X6RNJGo=;
	h=To:Subject:From:Message-Id:Date; b=Cii6EhPAJwWxrQ7zrwdBs2181JU3d+Mn+B8ynZBRW/7f9qA6JZO8qEaZUZgmN9E9PhhNmeU8+nNQ72NBa755OhVoq28EEQI4i3G9Pc6tWMKpF7VCLOhHvwes9pgpGko7uzwSPWQsNScin+xWLrDP3DOjv8ROUXYfCdH0TrCU/Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfX/Ok/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfX/Ok/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A77C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782620913;
	bh=yPcQ265blnLfR8dgqxc3kPA+jKnvNb+AwaL+X6RNJGo=;
	h=To:Subject:From:Date:From;
	b=JfX/Ok/rr4Z0RW17m8AROWUj6FN+H/xNoKqY60YOXhSTSnFK1Os2z1nr16v8X/EAk
	 S1XGuZv5ngVMVfHBlCkXC6hhuPyyKymVHX3VSAspzsCib6Lctip+6mFzURuiWa9gOV
	 PJyJL7xZfd5UOAxAzc9ONO1NKiuZMjuVmeCvRMDTeySj1ZzecDAgGDuXtCWu+krscT
	 nev2yrtEiGZlrt1FVCv77HnrBJZk2r/IlM9jE9a6tNPtUoumZExDlY75RQhjYwD59l
	 oxCW7rolyIDdoPY4pDSDfajMdubXG1HCM9ksJFunOWtqTwSxV/571Kp4+SSs+LeFx/
	 0BsQSM2zhljqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87C1C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262091370.5785.5700440179811216372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b54dab80926de9295095169c49b58fffac459117d90328e5a4c1de7f42754e1
Date: Sun, 28 Jun 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782620913
