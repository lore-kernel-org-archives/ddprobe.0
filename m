Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CFF19B3EC
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757656794; cv=none; b=Qb0/I6IKBbw9WOIA4jLeBdD/emgo7FLwW2PMzhwA9x1HPqbd6/hQcpfM3BZCu7QGV0BR7ZdSbVNdFF6xo/sumn06QQh1QHepuMuAePVFagYErD7r3hoEwWCBu9aUJcjcrx2FaCWnxENErtBSH2E0prJ6xS6XEMuBGmD1lmJSObA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757656794; c=relaxed/simple;
	bh=ecyF6Y2jm16cwuhcEOTPKzE17c/VNtVd3sjvLVYanic=;
	h=To:Subject:From:Message-Id:Date; b=k8rOlf89HZFXkDXFVktzdEIqpzP6WMMXUZOa9CvgNBVR+OzGsEn8AUWIDtdjEfP99CzF1/NgZgqdxIfR3TIgTvm0Cxjckrz6sSbzSN2iRT+DXa86AeumsBjY56BTZydiaeXIohrEO/L34AnJhZZPmX1aAl3WhuaiARZLYhpOBTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQkzioCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQkzioCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9AFC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757656793;
	bh=ecyF6Y2jm16cwuhcEOTPKzE17c/VNtVd3sjvLVYanic=;
	h=To:Subject:From:Date:From;
	b=ZQkzioCS9UNJM59XQ0b1qqvli69GvznUqiKtEsTtwvvHjkZoUh9gPn3ukZuEA5EiZ
	 Od1acYfXrSeJ9hOfIndr0n8dggffpgTrj1ChnO7x41gNKDicRbWFOLmNt2TJt4jk3m
	 uVmeZmjZK1BzMTR+ghh3bIFJumM37bFo+IQtNesS2UwU8EhFN+mGSvcA+tkkFY5xKo
	 T1d8cQm7hM74/C8Le16oz9TCQeYd/q1Ih0ilZfrsRrpvgwTbUrSzTUv6QWFPi5YWV1
	 d7Br3bPhrwYsbo5pUSpqEIdJgfCwMu9rfoPACNvL1sCsDGA8lXE1zbYlsTL/7NW3Ml
	 JnBuhSeudNZ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE67CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765679357.13516.10341457423792270874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00986834cf5d63faa74cf83fabae9d20a694acf9ba1edb634eb2213862a85770
Date: Fri, 12 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757656793
