Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4A016F265
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762621194; cv=none; b=fzNx4F0EVzOEltc3vIg/UXNYRDkzDz5kNqBkAART+lsoVdMUJdYYkGg/erLshYNvYNBSbinWXvlZqMVv4icTadAS6bf339WJP6/PoO/j1f66rr4tN5+L9FnxeE06B5Oho/3cRPBnVjBybwGywse3lGc2GB6+ClVdlgKmIuU4l5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762621194; c=relaxed/simple;
	bh=/G6dxntgpYmlcEKjUre1DZ2vSVjzydK+dPdn8d4dHT4=;
	h=To:Subject:From:Message-Id:Date; b=EvDfv8yO3nSHp5wOlOCASS+vA4etC3lsI8/XJrCF8hGUstBLrgFo5I9yHLmDcANsatq4AEshYEweADAQm16VUqjIg7UEoSOZTpUi8P1tPFZ5pGcI3Q56eCBZPyFrd/7sAEnNqqoU52sxwHM61l5qawMkyqz+6hBsJAmOsif+mVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5wLzmdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5wLzmdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC30C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762621193;
	bh=/G6dxntgpYmlcEKjUre1DZ2vSVjzydK+dPdn8d4dHT4=;
	h=To:Subject:From:Date:From;
	b=b5wLzmdY2IUrkVxb43rKF1bTDsYknIXDN4hifLW9QZVQBnJ9Bi1flmQ3tzwIH71B6
	 Zs///UZ1ixmf4zpWoeTR7jxGlmaFiRDzciDoJVEnPZ7DCuRVJaGTQUmsT9WrCG6can
	 8xZVfdxr4ZbssebUVaMe2xTU1f6ylp/Jwevs2fq5zU7XwxKY42nx2zxxBDYKapn7tY
	 LGuGJ9l7kC+ZYT3R1JiL8/7UccDVZHUX3kQU22zZQ7tZmgQMPBOBVmPrTGmqA06UHW
	 GXgjdHkDrrtP2wVhGB0QLJamKRQamH+Wk6gCbHzB8BQ+ASPjmDl9OdPyllqKACEbTe
	 hx/5HvmZGGUzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB86CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262119357.19941.3902998932037732787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cc539e49d0f70d2b9dba3bd65dd9ff843787a8fa7187e4df8e9e44c384c8b5
Date: Sat, 08 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762621193
