Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507EF2AE72
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742833794; cv=none; b=tZoIOB7C18N70tGwCKyZTPICEEcxXp6d35DJuYSolBCouT5h/voE/ogokOFVlEJKyIuhWjCnCZjURohUfL6cTRuqq2savozLpZhc6wsexQks5yVsQVxcP0yydKdY+fN8o15B6k64sYuqC9rKS4A1hCtI6src/D1wx5Aw3gbXaGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742833794; c=relaxed/simple;
	bh=7cPoWXSX8zPJ2VDywoT0B6YNGBM5wYrfLSln706EXkE=;
	h=To:Subject:From:Message-Id:Date; b=o63d8ufX9i+JLTy6bZGqpPbm7q4dtgsGmRrF/arjlV+xeKq+M3rACTO1sqt/19lez3WWcn06kHuaP74KAA2Qqytvoju3cY++qSUV5w7Nn5g+EonFrmHujguHKSK41cukbqGkbW6xaiPOwmUq3uhRvRm71+fCmt5Ynfq6hw7HuGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z779kjW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z779kjW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04B4C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742833793;
	bh=7cPoWXSX8zPJ2VDywoT0B6YNGBM5wYrfLSln706EXkE=;
	h=To:Subject:From:Date:From;
	b=Z779kjW+wAcjXh4aoqDGPF0NGDQzKv+oGRibLQeFaFAHTmKQbozdubSohbxOiUp80
	 uyq4k8Lm+eZYiSfVA04d0NPObnoFq0dtcGXgGSc0sXrpq+I9gMvLLUc75l5C9KUqgQ
	 hhi0Bzba7EDEoCHUoJDTJ0Gj+tkRwfGrr338dmhwglU7MUnDdb4VBrbLspbC8tQ4WW
	 a+N6WTCLwmoTuBH8ARjl2ei8E5+Z3mazczTUGzlTplqRwC2f6d/mAqyrlw95hss+nC
	 7xA6JS1N8Oh+jVD2EgFMol8qni2QMWd6wj+aSMe78bsA20JmBGLTI+y0zWsGt97LQN
	 GZcDnd/2y521Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A00FC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283379362.7927.12227046371806282709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c0e0d21320d183a0cd08e6efff37f15c15e1052f04c1fd9e1f7be075c6e225
Date: Mon, 24 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742833793
