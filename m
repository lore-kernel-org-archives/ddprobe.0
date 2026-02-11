Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B7227FB21
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770776634; cv=none; b=WaspZM5jNYwmShp9Slz6MMgD84YTEe6oaEHBsnk4aJKbjK5H7Mst+TlbAvXCVd/uR0d9TD9aU1+EcAviSWtIfBEMY0ti7Li4R2OdHhVJL32of803fGkalRdWRRryCDwFuHJ7LQo7usnHR+SQ+POM6RevfFfd6tU7mta4i+ro7js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770776634; c=relaxed/simple;
	bh=h5dK9M9XVlr1UEOxThptL+4n4TMu2pFphmYS8QnpWRY=;
	h=To:Subject:From:Message-Id:Date; b=oT1HRJ1y2VKSSGdFz8RC3WeiWFUnlgjB63kxS+CX/XMsx31dyDb0o7ptvnRFUIdWm+mOi8tjN4RZ6li3i1gTiFabjWAuVfn2aMafDtLFU/tkb2iWlZmAacwf7h80ODJvBGipypYW9U1EamZvUvBFEeHog1fBLix6fOt1mi+e60M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq1Z85z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq1Z85z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA881C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770776633;
	bh=h5dK9M9XVlr1UEOxThptL+4n4TMu2pFphmYS8QnpWRY=;
	h=To:Subject:From:Date:From;
	b=Tq1Z85z6NghNkbM//li4xumQmDWBJjwg6Im0HU3QiD6wUavsay897QD6eyeKUxKm2
	 AmcCyfRCvXtrMcU+eitIyzYvvrNGV12OySdIDX/QJHBOQGqRFI0wH2shD00KhfW1VV
	 lXN0VA7ZtAWw4/vUPKtzmr/1vo8goS7O+JmsF+nfNycegQYTvDpUAGJHrVvhLtsOXz
	 7wmcQHjRSgIBoPKFtn4rt5LrarYB0FgFEi666hz9DKcNbOGko+BB+fDPg9+53mjC3a
	 dBn5R0C3EgO3nAi5WIxPAxaADd09PjtImXDz2/XOzkZKjdZyixiCy5MQ7eZ+2uL0sT
	 XWwNP/kR3LVWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD501EB594E
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077663369.20465.3349401282415222274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e924abf8250bbfc39bfaf49fb8201dfb6ec84a1b4a7a7a01ff7bff8c5b8f5de
Date: Wed, 11 Feb 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770776633
