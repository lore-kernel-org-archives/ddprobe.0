Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C09A287270
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751826594; cv=none; b=pcdQH2xP9ZdLeUYQMOP8304mjASs/OBFBz/lKJuVammZvSlvpPI7xd+/JiHoYsHq2X0nkeVoIyiB4u2PbidTkghDbw3aApFb7zQDchplVFAibFFb9Dc+tmBEbBrbtuAKy098XgdXvrhCmW8ZoI/9W1ZgAL8+ysGCbA1lm35bmeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751826594; c=relaxed/simple;
	bh=nmlCjxVBPtmuyzvxCE4Ic3gcGqvGNLiER8nJIUmLQrc=;
	h=To:Subject:From:Message-Id:Date; b=JE/ArMCj1BZsPA++TYoK6E/CcFJhDiuyzzA456tjw5Jv/RIdKQ3TbalGW2ExwRlZZ/OViNfwH6gdfx/dq1MCklpxoBbkiL3ZMy5aBOFewWXVusT8TieJ9pdt/5zC7DlVYPS9HC2IMSGc6hK85C0z/HHm2WazsYxwlX59U4KLk3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJDX8hYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJDX8hYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2074C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751826593;
	bh=nmlCjxVBPtmuyzvxCE4Ic3gcGqvGNLiER8nJIUmLQrc=;
	h=To:Subject:From:Date:From;
	b=vJDX8hYFe0vqCR6RybEna68zCJVJA6qhr2eLaG7AVyrofm7HDFLXQFoMNF9aDsI0M
	 XF05bLGJGvc+wyBWf2z83mfsooRj0txTy0vckJSQgDYAAsUG9CvyRvedrdK5M8+RxJ
	 ntqxEbDt1LSBLcqZdbfD3jWg2hzAe/FKAVYdc6o4kgUHIIw9vOaQE5l4d8zWMQWZEq
	 sTq5MPjCGnCgw6qfJIIEI8ptgCc+JxAsBJwMCS7vVGnQ7Mxn06ayomK3GJQcdZAPeq
	 YaDWAIwozqp6alo2SRFIXDbnuOM9G8n6EM5GGvmuk1E7U/R+nzL2g+eOJ/QSa/+ZyZ
	 ggIUxBlhFlcTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA75C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182659358.19302.14437799888946206053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb616bfd375911b19e5cbf6fca153ee318d086992812e459ed46cbb8500985b7
Date: Sun, 06 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751826593
