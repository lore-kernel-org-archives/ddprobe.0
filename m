Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACD91DD0EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787712034; cv=none; b=ugqHJk4jzJR4kXdXYmc052ZVmHhpga6vK5wo4afezADBlaORiJ936aB+QjFOXDONVfM0Ih4362ANRA5rF+k2v4mIchESkdjrXEHrLNrdlNGcUG685W84T+HMHJTMwqZ5ryE8/Gtb5g0GB0Sylcea/mTYE/WtsKfNrd5ATP2859s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787712034; c=relaxed/simple;
	bh=e/tyKd3JoovTCMpTbra0MecgLrNfIEsR+4LwkW36+2U=;
	h=To:Subject:From:Message-Id:Date; b=B35lSM2BN2p+8vcvuGmOU1Rg0Yu9EPKNToyDOpeba0EanWm42qJ30ErVhz7t4KC7XcMKzKO3y42CtyEzT1xuEzNoTLZ4YaGUeRQrXLCxl70mnuLtS7E11YXCEOaYkEvgKNX9gynSJaf96aany8gmFCrYnPrzPoPdJOvJSRW0bGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwulRU50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwulRU50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0773C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787712033;
	bh=e/tyKd3JoovTCMpTbra0MecgLrNfIEsR+4LwkW36+2U=;
	h=To:Subject:From:Date:From;
	b=HwulRU50bbfz/YIh33ubTA93huZ3k8GjBWJeD3LIdm3MD/V7gTzbDsFILPgLBCy/H
	 b00Ja9yJEGarSJnRKtjqrifjtL7NuuAdaT2gr4Ifm2+qtbKggXY1LDIM/f7rFRXpms
	 t4q83RDUjZXBaC82iax+kAhlnzCsXxI7ogV/fx4m877zfQsiJnd7rPrqpnuPgJHUvt
	 q1bCYynOAV+y2GLFHV/eIRu70tWMx05Ao54JuCCYdIZpJaQ95j8A2MnSAN3QoehXCg
	 ygCorbemQfyTqwi/QN/n+HClyTB7oBflfKeLp59HDcwZ0ztwYinm3jvC1T4J9+hR08
	 27g/Z04AcB9hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF01C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771203368.29558.13016801891098136390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8895999f487cb7b5d4e55b4ccf669f7268fda0bc4224915a08cdf9e5ec30c3
Date: Wed, 26 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787712033
