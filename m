Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5104F33E344
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775328934; cv=none; b=TCt2unh7fK/frjB3savmwZoSJpNwA7Jchh4FIetRfpUHhxq8qQuuwKtipCajq5c3dd9rq17jdmsUYOny1I3fG+gGxptmNS+923il/SjS4rnqZcLQ5cuFvEJckeEuf8cO4AlvTvJ5dhpZZi2LPEa9iwmf1WHHWgWT0EyMTvdeSGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775328934; c=relaxed/simple;
	bh=Jh1fVoD2QuJeOjEJskhIQMrMvUUegnXJ69KH8G1sYeg=;
	h=To:Subject:From:Message-Id:Date; b=snK5ug4xF3IadzTtpz5cRpCBe3LG/GEX4gUPBO1LyQsjxTFFw30Ktu0sQOC2ZVavHdUuo7GUMc110kdHeBrjCnBJoXJ+f0O8dH4NuLkW+DOhSlJGLvNw5vKW3sbAZQRsfXz6o0D1NNhWk1o/pvkTIoe4gxqWi+q/V+dkJykql1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMoWRJSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMoWRJSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B12C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775328933;
	bh=Jh1fVoD2QuJeOjEJskhIQMrMvUUegnXJ69KH8G1sYeg=;
	h=To:Subject:From:Date:From;
	b=pMoWRJSs5HYSh7SXpfAdkGSkP7w5M2pppqo3bGioJVTsdFL3c4eMZqIMQU7TvLcl8
	 TmQEgkVdsJUpM7uQRTWBlvOT+sfKqoJtIVeM1tkx2l4s2E23+XOhRc+tHeUCx9vCM4
	 VI3p+udJ864AJuFGCdGFVs2F2v4hZqr3CkG5vytMvIARWmQmnnp0QE8yNFqQ+Vx8mR
	 FcYi8/gOTXcG/jj6VSrOBgKYgwVBrGs/sjcRHywQV1+j7tMmGgmz4GUbGh5rPTFHEs
	 Dqkzf5qPibXWXJKcbzZBpfr/NcXcLp9umCCKWt5G/p4W9tTRLOeVCAqJNRkJ9ZBt9m
	 GPvm+nA9MGi8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B112FE63FF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532893368.8626.11622588687064691312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0db26d8f9d87c25f52501690f03cc2964be9585f4fc2254e58a54fb65f423fc
Date: Sat, 04 Apr 2026 18:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775328933
