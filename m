Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFCA1A9F96
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771036494; cv=none; b=JMEKiymwQX672oCi7jxGgdYN+HY56Dc38FO9Ty6egRI3v+nxO55c5Z1SgoGo0atOx9Bp0oMZlgDeKAhU9zH9ERRzhqC9MIBGQje5o6LR4YYYu28ycPHflw1YA82NbkdEkSsqq8KFzqOKgfPteIXb7H7tysNTEpuLqiXDzwEZkgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771036494; c=relaxed/simple;
	bh=ArRxCgiRhRDiU+AEhceySj9h0sXJ2E2QE1md0qv46xQ=;
	h=To:Subject:From:Message-Id:Date; b=U9OpoDW/+hsFTB0ATzMZkRgD+mxZjxBQMpy2E3SjzZQH9LrOCcpvwd6S6mfqBtPJKC3v3cuSjuv09iag+d9d3cX581Q4dwh/KneoDQen+KvA73nR9KpykA9bIwE3NiNcI+NkUPxFehPZB+6YT+2Vg+1eD9HmOkyHuqQa5THe2Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJaWG2/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJaWG2/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27BEC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771036493;
	bh=ArRxCgiRhRDiU+AEhceySj9h0sXJ2E2QE1md0qv46xQ=;
	h=To:Subject:From:Date:From;
	b=GJaWG2/7OiPnPad6KAKzVzt+uIxWskiVSLnSi6WenMCIRuG0rrv9cyK9hCJ98Y+0I
	 a52noWp08fCMZWdvMU6i1jBcvd9sYn5XSvXY+eg9nm10JVJgUHfrynH0G0PTWhXg6Y
	 amby7SyYCacXVxlmhZY3KMQTlTac2Lq4h3jkPZnzLb0unZm/bTwCvQYpNu9Maql6tA
	 Z5yoRgy0GwMOlgGLjycT2+tip3aJsgnmViGSh9E0IBNBLVJuOgi6ZpvQAr7ZRKrUU4
	 zxvzvnu8EGyft72CniRAmR+UxVUcNsd4D5bfmoLYOlfLAKmCfKbfQplFn1sEIyPg46
	 Lb2cBC3wFtiWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90511EF99EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103649358.3082.9472733421841468543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c3ac794ebfe5f514a1cea074c6b6f881283c9a0563ed4d79914a567b633faa
Date: Sat, 14 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771036493
