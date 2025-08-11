Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217BD14AA9
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754872794; cv=none; b=BuuRDPt+G0ZEubX1RvDeEjWydPpiybYXv4grbAxsISKV/fYVJBdgPpiDdYyHIynAjqitppX/vcsp1ibkDkHqji6ezyZRFUfw0gyRxXaoV2thx5NwoWek5KuecXxMsgObTF1FgKgpvSqrkxYm4zkhtLCfh9bvglTj2xDuT/wCN7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754872794; c=relaxed/simple;
	bh=BPuN//RrmMVyuy8Kxtq0NfQ+kDg0qZSRCfxIm5pVCsQ=;
	h=To:Subject:From:Message-Id:Date; b=eZCqgYNZf6g8VvbvHsHmD7f17RwCa98hqz1y4qlvAW2vc1HJM8vn0OBrSOn5pDbednLAFUONlGF2zHNAPt5/Cdk9+xhK3nxisirsePTLGFj77OxUfOybLxGNX9Zr8P9GOSbFKOdRZ0804XexQ1uhpZttbuaj9viYrn89Eg7DF8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQvZKTkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQvZKTkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0738C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754872793;
	bh=BPuN//RrmMVyuy8Kxtq0NfQ+kDg0qZSRCfxIm5pVCsQ=;
	h=To:Subject:From:Date:From;
	b=CQvZKTkM1KZZZ+sVBUCH97Ou4ZWjk/1jdHaGB4AHhM5xeK6RJua09cS54iC4/MHlB
	 4HfkIj9XH/rKj2GR4gg77cOh6NCE39CjnyfMeCYC+/+kZ7FbNOwy8R+XilfJQqC/Wq
	 KvWagykj/g2TNos3/uPg2C3Z0z29Ds9pQ7QwxLcjGTjlSlv5xWDdfbZMoELFbmYDn5
	 oKAR2/Q0JgAg8itvT3dtpi5W3lnTWkP0h6uxPPA6oyym9ofm8fSiFEX+vz7p2p/6vq
	 Y6TM2jYfdZj/0cl50iaNCy1XFiiTi3PIdAcMFqDI4qinEw21MSe7LWX3GDk4K+Pz4C
	 0uLxKIYOQG8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911EDC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487279357.18156.6941443480743995013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce7af94673da51e00179252d8c211acc0248078eacfe3c473d0bd6e4a01e66d
Date: Mon, 11 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754872793
