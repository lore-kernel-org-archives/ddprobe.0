Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353AA2BDC05
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783112314; cv=none; b=FLq1Py2ovMvquq+H7DGbi230zYOrSNorLXlJJdObs7IsKJagAfNxfr4Gv+zQaPy8mG82qElveauKgB2nMbveHARm/lfFq2sldiyrHnwQNETEUD82O5le1OZGIKmJWVY2v1LL/l+UtcZJZeg+JksQPCECM45EjQJjS1UyTSaurtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783112314; c=relaxed/simple;
	bh=Y3o3JNvROJMTr7gwgn5bkUfIMmlXhgpLcFxKS7HArtg=;
	h=To:Subject:From:Message-Id:Date; b=i8BWCqYtWbc3XNQ1kMuqZkSwl67eOqTlTOtXJOI7AfJ8p2pRirkEREy6RpqDjsGsv/tQfylwqHZM3rKoA26TnZ8J6LLxoYEw+j/t8xGMTCL4p2P6qh0Iw1Ng9/lRB5g2zfURMO6XBvZrWsNgSTqyCETSD4jVzUUVAV8pV3XC3X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvbvSHdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvbvSHdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD3CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783112313;
	bh=Y3o3JNvROJMTr7gwgn5bkUfIMmlXhgpLcFxKS7HArtg=;
	h=To:Subject:From:Date:From;
	b=mvbvSHdFHZYE+jXcUzXAqyJfz53ndTzk7m8dfOi/xwxRJdlqKW4N3O1+QMWBnN5f3
	 6KS7WtFKQMMbb1lSHb3vMO58u7hbdXgkjjp75kdcu36SjxVrr0lv46qBqxsfZ7AZyV
	 gM5YrZDHleKjk0ei6PO1+uXepZ7Fu+bwvRoTi3+Nfdb/dt/LMs1+uvhkKycxSfnOVS
	 Lq2cOi+0X9Ene6+EFVMSwTCmB4W0HtSJaLNnT5isH/iH8k1Uwcf+EvGb1j7fVSWaip
	 R+uVqtSqBddO4FCrInClLBOnUOU6DrC75B+9OVynoUMCh+ai6UgMSL2d2arlUv2EsB
	 9a4au2Qx/hcwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A863BC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311231368.7494.2861051443056494335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b147676e80c454bfc7d1d1ec833dd4e0c0a261ececa7263ec9be9483b6186bd1
Date: Fri, 03 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783112313
