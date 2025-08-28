Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2383413957E
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756351794; cv=none; b=BLbRRkCJ82wUCw4SVV4SOdZg92nF98XAUCX9MXepMlIe6HRFo/ltPwpprbtqsgrSsyUpe4p3NXK+91qwpQT0mb9/k+pj5dXbe/piTTqDFJDlAaPViRd8bwY0Qfy5bYzTSlZ3eO2kCpWa4Pl7pPeD917/pftrqx2eA3jNBorMLVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756351794; c=relaxed/simple;
	bh=+uLs9Svjb2lGlHHVfWcGZXGYSCoMZ39WkbfFRwAcvpc=;
	h=To:Subject:From:Message-Id:Date; b=UPm6X7qUUHZduVpkp0McwTwcvyTizN3hdPGu/tSYlIFFLtSZUHdk5mxiPtsbv9hkxl3CvP5wctmLCSWx5U6df0mng6feXjPtHo4+YalHClCPHDEcwWjt5DnE4ZNfULvUrEcCRYPe61AZHflaX8RPFlemNSc0/vNa0cC3BtRa9b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUMHYSEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUMHYSEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E6DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756351793;
	bh=+uLs9Svjb2lGlHHVfWcGZXGYSCoMZ39WkbfFRwAcvpc=;
	h=To:Subject:From:Date:From;
	b=tUMHYSEUaNxGDgCOWWmMx9E+bmcoAQyHjbNEayYQ1jG/OCOM5tTrVJkXT5wvA3Oc8
	 ovbWFIAfCjovRgz80RIDANzOJyJwvkl+TqXtiDm3Jy21Hnqh77qkGjf0vVOo0lnYLR
	 pB886lAjXTWJ3/7tTCxVYs7cNtE4bfeHfQrODSSP+ZPEqVGogQGeHjAhcEwPNPQr0b
	 y1jOnyvwNp5YkckLh9PhOSl4lfLpiRzU6763EcbAejq5aAlk5njtHKAvjorSmsehxK
	 KpNOd80x6B50zTtg628A5Ho3Km//+kk0197k6IDE1l4VHvDt7LQCc4f94i9ITKueSm
	 RWjINGaPj0mQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC79CA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635179358.9470.9814706302626543336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a704c170b8ffe24965e6f774ff75a26d607c2a2a955fcbc59a9b52e457674e92
Date: Thu, 28 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756351793
