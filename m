Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF3E37C90F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782490114; cv=none; b=Sc+aeBehmWO2us7LhYtbDyJRCP0W8wvo0LpMt+ZxqLlbRiBnjWOPsBljLyE3puS+XIxyeRHliPrwrZd4tCf1zV7qqYCwdf/lEo577xkoPfvgIirsZ1z7wuY280JsalR88QuKE8CcexV9DHtpJtw01HmcYkARogOzksFvufKEyZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782490114; c=relaxed/simple;
	bh=eNd68IjrlStIvCyCRL75zyuDfKWcV4q5so1tKAAb8A8=;
	h=To:Subject:From:Message-Id:Date; b=PVR3MsVI64u07pWxN9lHanGvBeIi1r9aKsS3gLqMgzqr9uP0Fv1OZc1ig4AV3ZywyvZLLnFprn1K1XkMVggbJcqzU6qQ7iTc8uabjdfILoy1+hZIU43WOJsKQ1MxJ/rUnPgPTZXetLIJiSgCT4+QzhHY3ETVcLyw7FD3zvWeRcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlanHJX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlanHJX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E12DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782490114;
	bh=eNd68IjrlStIvCyCRL75zyuDfKWcV4q5so1tKAAb8A8=;
	h=To:Subject:From:Date:From;
	b=AlanHJX5BUKU7Xn9uO9J2pqXVWWT7dB1lVmg+3w3RUGOJ6TRgPdxiPZpU4NE89Pz8
	 63IgwQr2nDGIxEIYBxIot4d0/vsm8MbleyDC+Z2A9wcOp2jzWu+VMuvIGc8zEVx4r2
	 ZFWuaXnMwwVODxwwFLQ68H13dGlp7Ky7zfoF+O5YmbKK54dbtFJLT+7jBS1uwWp9EB
	 p0zL7Kk9IN8jA7j9GJBOTEPaN+JGkLX+rA0yv022x1qER9QyyG/3M9pYV8PupGN2/Z
	 5tg4+1ke60/yyDlnGm1BBdMcENMff1lHVqrsyJppxoSkAbJRLPmKF0u9KwPCjGRwAl
	 DE6NQwCeJm2Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF763C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249011371.13132.916573582363011878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628c362535c671a185dd1e0b22d63f3005ffb795cc4e618b306a3b789fc8b9c0
Date: Fri, 26 Jun 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782490113
