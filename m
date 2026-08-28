Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F961443A86
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787928634; cv=none; b=nUoQZ0ngW6qHv/lW3IIfbFhdT9GZLYDa8N8vn5/brw3i4fmcVLRGNDI+Ldr4k+bwK8K7r2NYF2YisLdirbLZbV8duFuI/JlbLXchB2JJ31AUPFePy1Ny+APXgKdeq74P/txLaZHz+faHZ7znVLEuhmHG0QWKF8KOcnV0+H7F7Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787928634; c=relaxed/simple;
	bh=vtGewn9Ym/gaQzx+PwoT6BFuVs9YuAiZDENnD1mtfak=;
	h=To:Subject:From:Message-Id:Date; b=XBDmjBUXQLinwXjSNiIGvbEoLGEVj3/DLqG6mT9pBCkMaofE6AVBjJZkvh+Jk7LYqrrgPvcmPbr1oS2hK6ZKIbZZt14vjCFcitD2ppkdvEfdvaNz42ISuEYoGmkKDi5DIxuncrxt2w/sakuHezATZvehJJf+q/0Lz6/UiWaKzFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8Uv0EJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8Uv0EJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA11C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787928633;
	bh=vtGewn9Ym/gaQzx+PwoT6BFuVs9YuAiZDENnD1mtfak=;
	h=To:Subject:From:Date:From;
	b=L8Uv0EJ5cFYdjm1eTCSk4ZNrT7MzxDS/+wb0zTVhXd4cSz4bPj5kBzbRLLrGSkNRW
	 uz7mAYOJMHMGtfV023EoL7V83Ve+zqLWmXtib+yMGwoUNVjDnq2SRYSeH0mz1vmCu+
	 peEeRrsmHtG/FkbdWv/CQTMK/w0bHBdsZz7Ned4EOB8X62PzopUZodMfjnFPlUnoWy
	 HbwwLseMvJ3NQ9frc9TAGM5XhNbEwX0VyFee/HOWq6ghMjTGGykyY5RgckR+pf3xZ9
	 JdtvJmtRXyvMmK1LtI5WY4AeEdrs/qXT2Sp9ONoxyfiVYCplKujF3E/da+3Ks6VPPg
	 yPoLXWX2ZK/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6227C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792863373.31845.7678769467092465670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32161d4a78d8faf71437eec398b181254f6c6831de9dab56e14014771a4addd6
Date: Fri, 28 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787928633
