Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E082F4A
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726425354; cv=none; b=qpwxluzfFOW8nT6l46J2gvBbstc/VwqksKo7f+cILtmXafCDGi3DIAcZyh3gZvlYBxvxep+r1SZSsUL1F8rCccubI45APcHZbU56AHYm2MgqHn/nm9gwxxDUhgqA1k83pRizrqun1s/yT/n+BhfOh5l1aENQ+9Xx6qfhcxT10Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726425354; c=relaxed/simple;
	bh=aVeMXhI6v713M1jNj/wOO+fgz1GwQ3SWyvzzpA8bxNc=;
	h=To:Subject:From:Message-Id:Date; b=g1d3aGrYdrjijwnl0LAAJ+ejf6rUvLVanMsXADvcdfPND3ziOfQx2vgUndKPwCt83Ji4ey4rjgziYUfmUI+3S2ttUKDTsC70pR7ffwNEP0oNveEdOCqYLkPYI6WF8dHVoDg4aZcwqhGAK1O//E/QRqJ2YDhA97D5LqqRoqCo5Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0etOEa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0etOEa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFE7C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726425353;
	bh=aVeMXhI6v713M1jNj/wOO+fgz1GwQ3SWyvzzpA8bxNc=;
	h=To:Subject:From:Date:From;
	b=r0etOEa9bNmMpcIWUP4Bx5ttDSLgv3Azcj0bNqr2STZThN/NC5+9aupZTRfKVSD3+
	 /8u73ljBTk5seJTOgDmg+d/6avYqAE+2Xsticem0p0jdUXs1a0EKoUylm78O1Vc6Pg
	 7DSCmqVF9QjXzbp1k0hlQaTAhWbKlOU2fyDiVy9ydqo9eJIaNpgqIWiBTwy6sMyzYh
	 xDRseVnZ4pASkyMDGt+6Y6klz8v48hecjDglESQ/0Nn615S0eqdEGr3cTGZMcgk2I5
	 jTa9cWtW1UxXrZLuEUR9UClxqpTNy/ZU5V6mD2TGECFvfX03XPf5rye5F/VoGS8bUw
	 27kjUE+ykUxyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC0C3ABA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172642535358.5299.16292127828599816356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f90fc1a6e44ef836d92c0468e4509373016a62b85d7edeaa79b2c96d24336c7
Date: Sun, 15 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726425353
