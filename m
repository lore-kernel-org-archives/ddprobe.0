Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B021427F8F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791858034; cv=none; b=juW2CD8LHEnqe9x4b8mdxTwythzpqlTEoOtzDzu511xdc1Yv1pDXYxk6WXTNfONnQV2CXWgzMLnlIAgh3GsRZXjvQGU4qsFBB9K+8GPQnKquuWpqV9gdcOr5flcN///mN1zV5iaAnIkyEofX36fAPazIUZVRTXymeOQJRu04FIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791858034; c=relaxed/simple;
	bh=jyLGprORrTeqZ12TQowIVmTzZFlTB3LPMs1TV8/MI+w=;
	h=To:Subject:From:Message-Id:Date; b=cI68xcNOgd06HovswH+0XhjduXCENU4nqM8xvFzqxmeq1O0vbHEIoz8zuAZ+Y6f1Iey6rULWsHXGbq6ZtG61jRPbkWb4GbY3MCuMC90ipZkPB4xm7dwhlIZH8NXXKSpDb9R0ZfHQ7LQFSgseMCqyUHlDp+3GypbhCURuVpJU0VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuZWK1dU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuZWK1dU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAADDC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791858033;
	bh=jyLGprORrTeqZ12TQowIVmTzZFlTB3LPMs1TV8/MI+w=;
	h=To:Subject:From:Date:From;
	b=EuZWK1dUKfcrut5jAvLaMG7WZJQTBnNHwxk+g8p7TSmcfvHPOuvKo8s7PoJgEoNha
	 17rpFnVtm+YJa0QO1sz1rovalSXTyq5oVbMnIk8AekR2m5xpbH5Vy5NCS7xBN25iyn
	 P9vXrPiu1ym27W3ibGd+QzQgu4a/Zg5+DIMSSkfILWqnUyP+LpghguOGSK5o7g/gwb
	 s3PJKo9FmlALAG0wg6UCTUrWSDozqu9k47irSEw2aALV6xf7BWmM2+ipHLPjgu0j0o
	 pCj6JFt3ZzkK/hl6/JJJ+ptCPEmnOO4dGqrs4M9qlaw6gtAYUE9Yuc0rWLwmwCLyTA
	 BMsgwfx4VziyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4E2CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185803368.10505.6794761210605347091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526428a55895db1b55a6e671d5b73e3f62cf3960991560c98c2b6e42678f4a74
Date: Tue, 13 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791858033
