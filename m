Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C201F92E
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743533994; cv=none; b=qtwLGDII6AXQsavpJGsWJndeY4j4OhF8xCLRB4fqMsphp03jYF8Fno+G2NZvoNakDtk+w+5d8qFqv4/TIREv/SMTaeZpKqCLNu07610ojNn5Cqvlv6CUFVikkNpoV27HYzVjc6etkqYwO5Whr2PRqLqIp4GoCCzv9iGxOijM8bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743533994; c=relaxed/simple;
	bh=LQKQcwt7y+Dr7G0Nz2btL1nNtuc1Qa7wbDfJAwm2Vlo=;
	h=To:Subject:From:Message-Id:Date; b=GG34VFOzK47wa8lsyhdSMhvio6djbO+HNXyFoXv+EhymJGzAqhbOzIMyeZahAYrSGhu4Azl3cTTDl4RXxE7MfI0t1/ubqAjBuL9G6Mnfbm5mJI7w/QNuLdGm+9ikpL5V/oJJx7j43Caeqs0H2rG1qHGBvNdgDW7DT7i491QZUn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sj3zunJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sj3zunJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE42DC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743533993;
	bh=LQKQcwt7y+Dr7G0Nz2btL1nNtuc1Qa7wbDfJAwm2Vlo=;
	h=To:Subject:From:Date:From;
	b=sj3zunJcTqpzrl13GBr11m4Ik9g2kcz6CF7swGnNDwRq8MmYu+cAPsjs85GwMd8Fr
	 3fy9B3cEpa40tmxIONqi/6jX/NU1OfY/mbBFE5NHz/TN7ytnUrbLxrXnxWSZ/R1rVC
	 A5EqW0tM7QXS9f9lMaruOfSCzamT4tdfjJqdSIORwZiur4179QNG/C3f03V0p4Xb/K
	 JqdpQIksQmruq/S+zt5zdfEhIOWDkICnS8D5FRwdyi7bbGxx8+RaDCiAZO04zEp+X+
	 NKpqdTR2FpeRdcavNxogVRVJrgYd2erumN69iiYwYCBDRMG+6KXtUDmr0NFZxqGGgb
	 dLG6e9BocBQqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94206C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353399358.6641.5491152591675458500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcfae50924260039d99eb2796b69a529048f60e1e63e4a382be40d85052dfc6
Date: Tue, 01 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743533993
