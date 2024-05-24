Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADE51CFB2
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716528803; cv=none; b=T/fa5mEDpVvMoKD3kbGTCL6DzhvAU0dxgSscmtqbWyV9jGd3lVYYNWiuD+uGjNwFX17JrKiQtyXJg+RCF2U9y/rNBzrLennHCvbfQBYWSXtXVh/eGOjVSFGapCo9cm/CviOOo9pt77yQHdlYyg1UnlhqEKePvsasujazcV+YbfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716528803; c=relaxed/simple;
	bh=W3o6BcRoLKhaf/g+Ak53RJxeMXNeqotnmtnUoRbwliM=;
	h=To:Subject:From:Message-Id:Date; b=BGxFMXJvAMr4UyGaPkkNuxJLYRg0UV+leFaEP+MZdHjYOz+x61lLIhdSoVpqsjVXx/XDiG32Zox1nXaWklxkf33oKRH5I9zFgAP9xZCrBF6sVjEHQyJN7qnitvCJg3BV5gPir5l7VdgUtnEMP/bzO9t67d30bkrptrWNdpPPsaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwpYtYlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwpYtYlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0019C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716528802;
	bh=W3o6BcRoLKhaf/g+Ak53RJxeMXNeqotnmtnUoRbwliM=;
	h=To:Subject:From:Date:From;
	b=BwpYtYlbTLGcLlcfiIewR7h4OephdX8HUseXYgVmNl70EDLe3/QZ1ql5i1UwIoh3D
	 05x9zOh7MDSz/aj7rKZd3nIJxJyuQM81BPXMv5WNVwqsd1b5V+W2PEjxGlp5fbTUUl
	 GM5Pzt/yFY/Y2cSkwSk5kYkD1TZfHuMcFtN8DN9vQ978GOZiBGXXn0Ij65b3gjbYBq
	 WUJ7tdKGZ/Awg1tfjscXwDbdE2hoFE5asA9f9ZQ89P4gH3U83o1D89FCXixqiJCkXg
	 CNtOsTkxRAitEAnVvopzWA9ULpym0emPVHZqfyyoV0hKzDa4lzgtdE8w0IpPYgImMs
	 Skmjr9CuZG/Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88C6C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171652880278.32607.2661142043524143308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4748df54d7d3718a7ed0690837e9bfcdbca88f97e9f13e22a36c94655c20a4
Date: Fri, 24 May 2024 05:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716528802
