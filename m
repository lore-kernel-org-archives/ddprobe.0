Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA72F9E6
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716621863; cv=none; b=qErC3TDF+E0k22vRDGGLdsaHq3aNX2vS0AanTk0Q++1d6UisPk2+UhieG4ATv22H8Ltm5U5G2M4kvVO6zcrbtdaaGS0Cf1wJA/oFB301HGjokyEOJNaY1mCkexsCquK1oiNGgrzeS3WXgLFClI4CPrg7UK+DtjJ+rEgfzSwW6KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716621863; c=relaxed/simple;
	bh=Y3GgobRO1oAB3cqQgHlm6DBimatKPiv1cNSh4Icyw/Q=;
	h=To:Subject:From:Message-Id:Date; b=MfBUVcaDhe3jzUN8HWKlDHP3GZauCsodrDIS5jllWbMPjZPR+MuvlC51nH+k3cL56rE1NPHwKl4GsaedBtogFAUqKXA7mIWPZdnT32g7v0+dWXA2y00UGXKBKOaPSZyIY5TItuwdeK+cUACAZWCLLwzSqiKsTD3IPCWZqUmkJsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqGy4fvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqGy4fvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6A3C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716621862;
	bh=Y3GgobRO1oAB3cqQgHlm6DBimatKPiv1cNSh4Icyw/Q=;
	h=To:Subject:From:Date:From;
	b=eqGy4fvym0GPDUYGAk/hNMtsveTyJUxDkr/X+PZbsuSU1IVMrjQMW8L2OLcxSFiMo
	 pY/ER8OGWnqOeMwO/0Aw1vlGktTfKAhfvoT4wW377X6XcYzv/sN3voIpRPvATbE3tt
	 LOC1Ic1TiGn6AbWjyGapkbQevM1O8D6LF3M8RdSVtTOg689evfm6/wdMh4Pp0DtyYJ
	 jn0yJYSlUVwW8NDwnk0oqXH3Osp29B1vExSNUZDDFTrYmECPDpH3/cm+OTqp+A9ppD
	 q7ERzK0X+eAFs/k1T2755AcwDeSTg1dla8a2rMe068iGFQhzQ7PiKLmaP45arfVHRf
	 +TRNnyn45+qEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5734C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662186276.2309.8406348617005460778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f0e60e72f657b25219433a3d1c1b50f916b8e7beb946262aef92b5b7e8cbe4
Date: Sat, 25 May 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716621862
