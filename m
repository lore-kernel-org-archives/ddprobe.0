Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D423EFD27
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790514636; cv=none; b=YttMn4RXNle6Vaov4j/WuVxDHZJCizfyWu7phbvnhtDWix0i2ifjeGAH5RdIpI9RK3lVhB+YyhtVNDy/ZRIvO0Wq804qtGtujcehaJE0d9KhUiwvJfgCavcOWt0aAwmFnvNq3J3tb/dsKbyfBoShWdk8CXVL9LtKAFvvNgcuxJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790514636; c=relaxed/simple;
	bh=ArHt3FUHCDbNkg9MzI8qWlY0+Am/dIQ54O/2vaI2UX0=;
	h=To:Subject:From:Message-Id:Date; b=QZQKpuBFeHQ5+hDFDVXgoimPrrtcGXiigzy2xS9Vw8bxi7q5Uxc9twDTwgI/rzkeQYIVqanNfWb17GMPCWktrmXxdvoaeKqnVkRFvcWC+LWreYydpJKdxl2jDPM1OlDt+6uXO4BQehTPBK1UFQwkWqFvo8kSGhPZFCVioYEKN0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I972rvk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I972rvk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE47C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790514633;
	bh=ArHt3FUHCDbNkg9MzI8qWlY0+Am/dIQ54O/2vaI2UX0=;
	h=To:Subject:From:Date:From;
	b=I972rvk+5O6gX/jvrmDOAF7v1DBd308DljTcX95tbchOY2xPs45g1MLWV0eWUzcxD
	 rXxgeQJxb8EiHu1UoREwLanwW3MFwDWPHK4sWF/X0fHiJhbpDqcW7md0Yuvjmk6thf
	 YtxHVnYLL7LzXT1nNh6rh2iGTMxDGcrkU4RZoy2Qw9pCyMtg5XwBPpwzJPUv+mr5XD
	 mBgeZlLveLYLRKqHTa/f9qvVAP0iGSWz02L6lvRf6e2HRNVR7/h3RbGMCvn309os82
	 UwpOk3exWcWG/euiaF2b9Yulb0J5wJUXosfBzpsVwmpJGAPVgm3Qptfj3opjRy1a0M
	 NCWOC2Z9BORNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB404C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051463369.31029.9088743042998373305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e356adc21a9fcb4ce62e6785d57cfa4d219c19b472eeab620b44c1ac14ea867
Date: Sun, 27 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790514633
