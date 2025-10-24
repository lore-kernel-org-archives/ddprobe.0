Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DD42DC78C
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761316794; cv=none; b=TeOQ1IKc26H06K/QQRXEGxRY9x+4H6eaJHXM9Ytrz8Bfyc1W5yOi1f1G2mDePms58BNqEa79skFQeWf31CAl6Jgl8DEPffQxVTpLmOLAeVU4CjH5va3dskCsbyQJiVhjLlsF4sIym7fWXnfgDESV0GC4mPj1VeSqT9jLK1aEyiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761316794; c=relaxed/simple;
	bh=FpcaApCxZ7J/yuHBtKpY0bkfesBiyiNujxGmu8qf2Ss=;
	h=To:Subject:From:Message-Id:Date; b=KCy8AJfj1DHUKD73/mr5w479lkAlr+bYe2YWDEQ+jBRMapRy4oPUG8sIxxRF3jQtzUcWRem0yTaYabDOlbXxYDa9HGKt/Z4AdTUONFgVvdTEned5Qjg3/t/zlMv8vWtFsjEzvjrgr18hqm/5hI19Tp5nenLgAK5hE3CWaepTwlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU9xokFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU9xokFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DEBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761316793;
	bh=FpcaApCxZ7J/yuHBtKpY0bkfesBiyiNujxGmu8qf2Ss=;
	h=To:Subject:From:Date:From;
	b=oU9xokFyyATOqs7ZCAG2z/xkhk1Iz6JfqA2MIor6k3RDBq1Z1UXpqSlYobmGhRbZm
	 eb2AyFuf4dY3FPJvNLBSsq4h9bUuAnhgz6/CUssoEpORjccIR6JhIvLfb2s6jhzwRS
	 qDx4c+jC4HwieZ3r1X3hEh0rc22iJbZDCb/EB/B5FtQzS7Yr8WqsfxbSIY/VHW0HjU
	 jED+ZV29eODBXDapI7mhDcn9VjuGeObVhgJD41d6Q6EEhbM8rmuIq5iKMew1HhOmlW
	 SdnVpVBNIzMr5dIJiUbJnArqMKJDQblJJDLvERxW+XkEZZZrvHX5/GxWMLIogyFYSE
	 0QImUY+SiWjWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C36CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131679358.11702.9291979966691611540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9a333c32c565d625540e99fd6888d16817250e3d640d882fd1a92a2771ec9a
Date: Fri, 24 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761316793
