Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7B131984D
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755242395; cv=none; b=WuBfD3yuf/Lwbt3WwGhPicoG2xbg9johhuMYm+/o400YfggV74KuQReplYMPoXjSmK1mGKoxWxtDnSqseaP6MxKhr7cwMkrPPGqmkuwgCW4v7JM68wOE5j9oTXgVq1KFNM+jcF+v5ggGRDVEJ5h0CeSifo09lwM9t+fbpG23Skc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755242395; c=relaxed/simple;
	bh=dcRgkKAYlctyxCQUD8gQOkFgwvFjcJqqBcb75cYUDnI=;
	h=To:Subject:From:Message-Id:Date; b=t1FT/y8e3DIhkEgKnlOasLBQX9ousOWpYo8nqDqRLe1Oy9LrgnfhcXdiRGS6gHRU769QQtsLZveOwrSheMNmiV3CKpCNCCZkwuQt8cHXVkEODX+z9kFN7eAMbKfuBVp/pMxDrkD6ZR4SN9y7tBIt/un9Bx1R27koV131L1mnNIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8+iRyeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8+iRyeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B962C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755242393;
	bh=dcRgkKAYlctyxCQUD8gQOkFgwvFjcJqqBcb75cYUDnI=;
	h=To:Subject:From:Date:From;
	b=R8+iRyeu+FzQNlTSEBOor1gJbgIzlBCzkHQiVJNF4AHoJlHETT+aiX9ylb6Bch+x4
	 Dlx6EGLELzPGM56LPHkCuf3iNEV8rtN2p4G0acPvjKvxKx4Y+t7wjN4Dw7Pc+Oiv6I
	 pKkeHi8iGOyDeERkGCYQSu7BiT3cWnOBgTt0cqSFVziYR51Sxk6CZLgrlaqAy7dbQG
	 dWrJKrkc2zKsd9/lBmqgvAskq58AQNZOsSNBx/xLd0ujFUEfYKkKJLZ51rDHOioAV9
	 PK4nPQjpbMnmLS7NdxGM92l93BfjpwEM4ibcwhMP77Yk5NyTtPIdNdGYXXg43BCu6W
	 X9f49Uuc1FxZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E13DCA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524239357.885.1757270583667363454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77361202faa3be25528d617736d659b6e760d850ae52ca2cd6932c713592a46
Date: Fri, 15 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755242393
