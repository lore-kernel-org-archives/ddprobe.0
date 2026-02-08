Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E568287505
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770525834; cv=none; b=La+UQqWxXSS9dEY4Q/rZj9pG4IocoEtBTQ/WMiNiIWinRRPXh0UJhxBd40kJz86Spb3p2RSoG04zFEtIZQqp9eBCdecYtkiEWdzI9A5s6FmxauR7vZDVg/AtqtQ2wGwXDkg1m3sos1jOx1QexAbMxO7/GeUGyU6Z80tjEmDccgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770525834; c=relaxed/simple;
	bh=1qvgeDPyAdP20fFThQVHao9xHrk7tfXPBkaXBnN+ATM=;
	h=To:Subject:From:Message-Id:Date; b=rcoFeSX1pFN1DRBnxTIBA+/9vZSFNQYBEHnV92A1sxfYK9QM1RFagQzrD5kUICsqJHzptCqNktfby1YIvc+zisEruGSdSf6VgS1JmElq8WIzIMXD0PZxr/VH5C6OnxMbDU9bzbys5uHLKtWVNosVtBrN42MP7TKEUEpmHdFeEgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owcGw3Mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owcGw3Mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0244C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770525833;
	bh=1qvgeDPyAdP20fFThQVHao9xHrk7tfXPBkaXBnN+ATM=;
	h=To:Subject:From:Date:From;
	b=owcGw3Mncz5aV3AevEYAAPfl1PF8DOFbF+nAtG+kXUnhXhceRK41gZlYIyYAWDP2b
	 uRa+aTJUOq0EIHMes9FR3Mz3acE8rk41uCs65h8+h4Lrr39PcFktdflQStJsDkLy/V
	 v+kmmCP1oAb/YYvEDW3+Al6nUyp/gn1t9nkKlLI6oD+QpbWgMmCy7gbpdhE47THqt+
	 Pdt/k8dLZ01ydAu+qGquWoLJDr16nrEt8ufwr2ZYvac2So+tReavUBSCDM3CldFgcU
	 0gefvmBGq5po6Lm+0ObLgFaP5LgAG4oyYSllZFA/TUeljFCqLk7Xe9JOHIjYa9B/Iw
	 ynmDzeOM6eyPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A11EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052583360.17133.2629354737612340247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c20a03db0aba4b08fc8f0b13399f27fe5d68877ff0cd383656c0b2c1d63f04
Date: Sun, 08 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770525833
