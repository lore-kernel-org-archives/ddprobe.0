Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3250925392A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771149894; cv=none; b=UBMJC2ImQRJvyFUYkLw57vCVtUtfVELWYqC0SSNljyEefezG4vw2vRZX5O82K5JBZFHmC3UHsjnWd08Scu6LruXkvgyeBSTyGo8F8kcrXLQrd3TtCEZqRlFvFFa3+cXvRImkziVK6PzaggsTjVCEce2DElza6OFT0hRTUAz6QZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771149894; c=relaxed/simple;
	bh=Pc586uONeGQvq9iOlC6Xtf4VMpZ27ibir29rbqN7ti0=;
	h=To:Subject:From:Message-Id:Date; b=fMvPtWfpGGf9yFHxFphH80O4oBwEQYYfOX40nI11f4AR8jmYdJpvIzhUpqtENZcVWj/gqdguJTRfR+CYhNIr4JEwzmwP9F4Y4DHYaxCdTpxhsiGLSwrEkahqtN2LUaFte3A8Xf6EwrdBLXNghFJ/iwGP4WQEW0QSrQNcU47rZ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVHcvBlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVHcvBlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8347C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771149893;
	bh=Pc586uONeGQvq9iOlC6Xtf4VMpZ27ibir29rbqN7ti0=;
	h=To:Subject:From:Date:From;
	b=hVHcvBlB+t3CsOrZ/lnjU6qPUGLp7tO3EH5VxvYM4Aomz2sEedu5BE8+ujLHcLMIM
	 h2JS2QeTTj73qoPJh7iDOrCwXdpw5RmIHCir4zzP8vwoj5v1T8JH97Txa/Cm6KNPov
	 JP55FJ70n/6mkAIH4F5mzMsgNqsRdI5Y4Qd5z6f+WHOJeshkCMAHuW0VVXxTxHzfuT
	 LCnk3BKxsAcRHdsCM6bJkGEKKmjPlRoYFYjf6YLSIcIl9dpykuEMrX/DGwzr/Yc/0x
	 X3Xd//IUdEe1itetJNDCkRvJAcJo0erEfOHjq2gn1YmjXeKi9O2ErgDANIkqcY2UfH
	 fyUq02OdCqm4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CE5EF586D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114989364.2252.10982897190468406091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577d3aa4d4b357569186a0ef4c4bab9e2c94c1305e6047299657228657e39b5d
Date: Sun, 15 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771149893
