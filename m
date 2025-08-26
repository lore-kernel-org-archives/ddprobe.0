Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A252F99A6
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756201194; cv=none; b=ftcnxB5VBfXmJ5uVNRG0PnUx7uDYQ1P+1ZSN+PNqgaD1VrNmWkp5o3UpqZLBDCXOxRP+i+r8TkMGJNYMG+d2iOc2MarDjE63UBRmkOjyBUzJttE1U8Uv3M3jTl3Lr7GTJ9/GK7RwSZ3pVEkUrIpxSxLGkuPzN10a7UHDBJA2+Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756201194; c=relaxed/simple;
	bh=H1TJSeURfGe/skEL7sbwqmYbgFIgFQHdi6y8pTUQUv4=;
	h=To:Subject:From:Message-Id:Date; b=n1thHW9ddhS+AbOPhkTo8ErJY3uktAbUnEnsx/tuiFMPmnhMeAxlmzz8eYlHWf50N3MHw6ZikEQ+ymn0sbi2nLJiL33k4XoqOAL/Zg1lxybJcUchrHYAUN/ctVVzI7IRwHqQcewd7zrNhON8C9LpaXda6uMzwibiBlgmm5gYvQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuUsGLRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuUsGLRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756201193;
	bh=H1TJSeURfGe/skEL7sbwqmYbgFIgFQHdi6y8pTUQUv4=;
	h=To:Subject:From:Date:From;
	b=OuUsGLRyrEK6PGendzfjU1sdUoLVA/bGro9j0HJMg1oU86i1ywVVOHUQlQ0BxdTWN
	 DFP1pX2o3264mnw9A6vZuHfkt36vucHrtwNbt/OkbcQdnL4+5TRsUBuIy6htKBwMgP
	 1Zsh/44ct+Tpcebnp4xhbmB8VmJTHxMu9ComY1qn23lpY1jUgOkfVN1klcbyg5Q92K
	 ajutHghPzWE6LCGOJViQ/1dIHPBIc2Fz+24ERJDwDa61gZYAtbWAdTLQp2YbJgnpjj
	 2FcUxj70AKBmo8CnuDiuXfTR2JkgmJVtsNt1eChB4efLeK8Z8vDo3Mohv36wCDreeh
	 d7CDZT0eGGxfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA6CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620119357.28308.12584480413226871099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed15e4c5d77014a70abf7e8db3a2271bbbfe53c13a5e551d7f87fd55c0c76871
Date: Tue, 26 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756201193
