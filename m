Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DFB17BD6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735792554; cv=none; b=ep5tPm40hqmVRfIznOYn01YCMbUzsas5QqsmweXnCwuZP0IVMfsjgidcARC6elGdzzHfxUi6v5e0Z+O2FDF29GcbZI8b2+cg/ipe+R3BqAMS04U8LCjJaa9gpyO3bpaE8UDeZwrVr003IA5x/7P5ddYJoKyWMyL94TPROeqv3eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735792554; c=relaxed/simple;
	bh=E8jSGSPkk5Vu7fxK+qwdcufaIZ+n0I7EPU/1o2DeO4k=;
	h=To:Subject:From:Message-Id:Date; b=FpVzK0DP47pHOI75DQOQewiFkEh3WeKunFnABsede5H2DwSbSpoEMigBpxUYA/tAZ4bs2xOC9H2kKbfE9qZ7GK4V5NUVc9qH4FMp1GWGB2QrG+fkQdEkPpT4Alypvpp/eDPALYt03hKqkbGzoVf3Cz35798f1wLMDjhQX6lOm5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKqBF4oF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKqBF4oF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0564C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735792553;
	bh=E8jSGSPkk5Vu7fxK+qwdcufaIZ+n0I7EPU/1o2DeO4k=;
	h=To:Subject:From:Date:From;
	b=XKqBF4oF3Qawcmx6dz05v2S8HYyIBYJFS+wxOuibCM4k0OCcH/HDUJWQc/NF4k+tG
	 sTAIrmh4GGDS+eO3Xj08rkmqvjYkf0gWKtvuCGGpfNbzY4wCr+FwnIPuQ1wY+kuQCB
	 Q63u3o9zH7J00atIC14bmEYLRqo+1R1I9Huhw81v3qqKvLqzOYZW31CDL91JWWCVzu
	 pK3He3vQd6MXB7fecivMbYqaoP33VlHIdbKbWdz8XFeVCfVYpHFHGLd1luzVcIxp/l
	 wz/FNaqXSG2GvcLzMGE3kthFNTECkDcUSi7DEa6f2OoENWwCn9u9vlF1+x2nNbacUd
	 wc0NFDyBLgnhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A210E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579255362.24199.18115144460256640523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62a8a017e8ea3e7cad5dbfccd484599e9379a52a053c7c38b93a928f826f8f5
Date: Thu, 02 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735792553
