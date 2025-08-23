Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A77E1D9A54
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755925194; cv=none; b=iGQ0JMQ+qkvaxK8WewBMtddfZiEbzo02zt+pjYuyAWxguSoXnjdM76hHgLcZneTnSTbhs8JvlXxdxbI0ReVXKimQX+iFjEZ1bn8dkQnwlRcrSMNk2BY8bLDcgTwaJrtrdwD0ZB5qlT0QtyZDuUjvj+vwDFxmlL2kxS9WSeIovog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755925194; c=relaxed/simple;
	bh=50kgTw9QyCLEITM9DhpxxL0VvjEVnx+IIKt2w6OAbWQ=;
	h=To:Subject:From:Message-Id:Date; b=PJnR+886mCE5QXHuNDDCiLrM74qnbxZ1cUKVElyHSnTO45+DdUK4AMA+vsR3c/vpMMHs2pyHAMtecdE6InGYUZEpUeACCgkGuXQtnBhiEioVGYyydPaQLxnWfFI0WDnKuMmnQfWBSip+rblMjDzcjbUeNdeA/luwWqrRYoycZwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqS1vT2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqS1vT2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00DDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755925193;
	bh=50kgTw9QyCLEITM9DhpxxL0VvjEVnx+IIKt2w6OAbWQ=;
	h=To:Subject:From:Date:From;
	b=dqS1vT2rU7QX5gZC6xCn+TqbLjIZJ9ZlB9OBcxqkybyihxh+esfcyAsE69Ndk32i4
	 1RfGFvYnm3MCf4vosmZR4hcHetc1KbihY9PddBr3vSfMQ/HgLdsTfZUCZrNP0ITej5
	 f4gD3wViy9r8g+WSdavJ82GjI821GG2Hb3EZKiPv7vFBBY1zVVGHpwkCRtRahO0UaR
	 R5hikIgHkYwq3O4ybfDrdP5I8yHyhyuGhpicGRKiUvAm9qoy/1jxtU0qbn7Ezw1s8W
	 C+ZMx2pptbfZ0E88F7/Raj5OvGUts2fZnHsAo+cKBnegmk+gfb4G87k95CTRxg+V2g
	 8oRueObXzrlTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDE0CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592519357.22582.4349667655034675330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cba9ef9e2509ad1ccab7d0d6fad8f80d78a74d5c19388fddd3e07b872108d24
Date: Sat, 23 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755925193
