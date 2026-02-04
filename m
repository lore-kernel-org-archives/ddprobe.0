Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395392045AD
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770184434; cv=none; b=nymhxbqdCyabGpDmMfU/gEjH400cT2b4jBwGDM5xTGL6/Nq56/sbXYht7eFjPnFYbPJEw/Apl7sqxpYO+vIZlgcK8iHQcXZKOUoe5bdPnYmVuUkSUZF0nJAvIwCVFmr9rgqixUW1OId7RaJOxFprHohbunXMvg73hHL8i8h03XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770184434; c=relaxed/simple;
	bh=AGUg2eNCeWEgSFBd29SKKzy53aNyBnrKRqfZlnhHFM8=;
	h=To:Subject:From:Message-Id:Date; b=PsAPalIGY+ciBxIEeNicFYV0Y44NKnxpnsQ4oNT8oqaG2+VMidWtzJFZDyKLWs+sAi7yfBlbp4JFxiajSIhsVO06V8qxpEH/JlEOTAD7Kepqy1RrTqkH9gTCKFHsA12A8rMjYPSJ9R8kvziwkQusba8YiVm7KgmA6bv+shcVYwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tr3LAv/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tr3LAv/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23F0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770184433;
	bh=AGUg2eNCeWEgSFBd29SKKzy53aNyBnrKRqfZlnhHFM8=;
	h=To:Subject:From:Date:From;
	b=Tr3LAv/JupZ77xhJi9jLHZ4sXmqQn4055YPoilU2kx48Znx+lj3ioCSjT5GnB2IJR
	 rWkxOrE28UJXK3EDBo9qRUMJghAIw3zzsIHWCwb1JGM+ZpXRrH9hu0NPNJOlSk6bMp
	 HBlaDhUqIcUPE5NH5m+rC+N8jiAYmLLRoCFjNhMGu/bJOb/XH1vSdap8aZuK4WxfDK
	 ifUxteU+7Swhu6GhuGLqXBBaM2BS/RypViF0txYVTUsiWfVQVuOQebgaI9Kniwq84w
	 hcLja9kgwxF92124Rg6i3Lx0tokR2VXAV9kt5BNCEh9L43V2rHdCKxptw2emj6uZ3x
	 fSgGN+Po2l6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF05E8B39F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018443360.29263.10636606601152556905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758580228cfc661bb30506e8dc60af2ddda77101dc83bc8fe9b4b3af18b08f55
Date: Wed, 04 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770184433
