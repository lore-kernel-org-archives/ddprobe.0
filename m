Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D272484222
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787073034; cv=none; b=T8ONHe9dEfa5UdV/iHGwFSghxZrLOKZGJYHZVc6dQ8mj8OF51TuXbfqJAhdinX+F7dyRjyQsUQtH2tIxu1QbwaGhpRLOu+evghnEIW49yZFEj70M06wggZqOv0NAzE+byMMHYKATxN2NExoWJFd4e9ZtzCN7X6mU2NyEKeQh9Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787073034; c=relaxed/simple;
	bh=CyITMTyUvR7qOoUZf1Wc1sctj5AgFV1Sfq7e54opP/A=;
	h=To:Subject:From:Message-Id:Date; b=nzkQOl5bB2XYrdK9W1zjXQsPlx/H+4lpJSII3uOpS8xpzJbJfYvdU0vOKoIIz3G+CCTPnQto1vRR52x5hgWLPyyl1aEmNCGiCp6MAe+IemSgvClJoVrJ5iLCgfZmu9e8Vy/cfUy1zQh33G0yMJMndIm9Yji392ogS1hyBwCQOlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oM3wmTGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oM3wmTGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3C9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787073033;
	bh=CyITMTyUvR7qOoUZf1Wc1sctj5AgFV1Sfq7e54opP/A=;
	h=To:Subject:From:Date:From;
	b=oM3wmTGYYZGaYM81LNa5aZdVDNtOB9//7j1nsHOtjly90TR9Lly0/eiu2K5tEBKjT
	 aJ2HWPJF08mmv/lIGzxg155Y95TZ9zMXRjzOtkTxg7+6zWoyP2YKGmYRxPMofvPSFl
	 8zQQhy6Jul08qxS8h3bit0Q2nHUcfbQAXZw0pf52lsrarQarrMrn8+NzxgyULtAWBH
	 KgKZmtFbBquGvKpHNZj0HuT7q7x8mLE7pGwsE/IiOEFBU1cYoEbgCfvuJMK4smBCFD
	 AYUTSgL2ffNDmN/HJnuAWLlDpcO6E/AvLqBqeWrjuoq7G/uTGlDOlfAmO8wl2R/WPv
	 sCXDpSTsParXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB62FC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707303369.22165.7349249812260531004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3026143b7ce54c8ec4333a554b3eceed35d65c1b7e24333432e05805eaf46a
Date: Tue, 18 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787073033
