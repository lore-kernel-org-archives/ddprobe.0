Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3D1238C1B
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773090294; cv=none; b=JFjqrcaE/Gg6lbSZvhEy/OrGba+KPyga/eyAi0G9zcC1Wk3c3Y1Bk85yQhoINJEgu14nx23zHqnodVsp/xpSeob3semjLReUOnTv+UVOXKp87xFAxSgVF4+3My4OO/CPLOghk8rnswpg54dAnl0gLw4acAd0jMbJaFRdKFh38dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773090294; c=relaxed/simple;
	bh=lXPrwOljUGCWqJgS+y4K5NAPNO1ZFwz1VQSFe/Skaq4=;
	h=To:Subject:From:Message-Id:Date; b=eViWCqL8BSqywlPakcCXl0kiYs9pXtB38mVoMskXFsE/peFrm863ynv/ZS6+rieyw+gE+828tjFV7+dFa6w6IeL/leKmfP7Cyo/35LDxhQNL0AkLXo1/L942gqvL1tJ6YHW/+EzdgEQn7RiudgPj58hM0uFELp/FsE/J1KYkLjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyRs2b+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyRs2b+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72AAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773090293;
	bh=lXPrwOljUGCWqJgS+y4K5NAPNO1ZFwz1VQSFe/Skaq4=;
	h=To:Subject:From:Date:From;
	b=eyRs2b+nVmKyiA4uVb+iBMmD5hFn3pb7JWsbCyDz1WTGCbIRN+AdSISUx4z+wPmo8
	 v1zabhSVO9DGtiQ2TgsYvvzia7h44C4y40b+7ekK5BcYOroFJp11YjcZmqftx3wOMc
	 Ktj0Crfp5ce/mnrdP7BQ+aR12fCGo6j7Ou5cz0r+rKkrRINSwP9aOyZXFhcrlGjLZH
	 YQ/Hh2xE0NxUdwxfKLk+tOO0YUdN7Du8KEQykGnrFWI0Kk5EJ17c7Mbl4KI4ZkMrSQ
	 U8vgcQuYZ+KBsCZykcXzJRFw8CMTvhMfvPMhqnt9uUzb2nBNCgVugPLLBVmoXWhsPO
	 yV968YUlRV23Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C30FCA18A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309029363.31818.17275625653703107921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28622f6d3449af99b25431ef04eea1a1aea36573b0ca0fd5323b1d3c55c3b353
Date: Mon, 09 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773090293
