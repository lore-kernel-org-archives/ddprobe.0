Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D94D381D4
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719778463; cv=none; b=ej5Q5sJg7haaAwQiP278MNzGLA0CqWBN0EQ7bUYT6Nj+cQWl7RyCOHFhb9RQBdp8aQGjVkspOtL5nYLrltsLfpz8mlDwzc599X2dS0kpEmGLeMdmNgewZemzr1a+xvPXcMJscJiUGg9efcFGkEh6aI6vgm6tA3pTKT1barSwFpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719778463; c=relaxed/simple;
	bh=7VNCCWozGTTQWVx/exAmKQj3ozPMVK9M2eMR7yt8mVs=;
	h=To:Subject:From:Message-Id:Date; b=bbY3LuMOJFRcTtRzpBt/pgQxgavwNp45znw72W2Vzf4d7yWsd4WuIyyzhjq2z4N12RKqYHJmXJDYlD2JQF/otmUU+U7ImrVAb90ogXtw5DYdawMvu+jLwMokLM/T6QVueXRQwiVRUkq8dpim3msYk0cfDXXHhTj2o/ngPrBFTdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm+pFfs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm+pFfs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6382C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719778462;
	bh=7VNCCWozGTTQWVx/exAmKQj3ozPMVK9M2eMR7yt8mVs=;
	h=To:Subject:From:Date:From;
	b=sm+pFfs9TAE6qHmfcRAwH4CqlQtFBjCKwOVSGNzL6s6tz/givzl5AFl5ICBruGGh/
	 KCAwvwZwu4f/DWOYstbfPZowLO8Waw96luRKWULKWsUTITeqRoQxJ46YwFGHUDcpk6
	 wAMWSiY41/p7kydHM2W5j45rUAJpil+rIo5zV57YatCSYfhyH1weHVrGwvQ2yTp43P
	 dLr843rxL0AmVfX+kWhYrcv25e566ZIx4NOVbGZAfIyMs9X+lbSZEnLyoyJrCGwZOI
	 3qhWfjuxxHLUtmMcjcUYmT0jRPVendzRcBGIIO8zl0DSV/PmbyXLFQpPumNg+nFBLM
	 9EgB1w1DUO7xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D66C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977846276.5609.6772318109742681980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1460867f1e0862ad8a3f767ce4e24d473571a174b1a830b899fb80868c8726ec
Date: Sun, 30 Jun 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719778462
