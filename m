Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9EA3587C5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763651515; cv=none; b=SHnn3Euv6YBpvWcNPKJz/HFlaKbhOpNDFAW4O2SHzTU5pH13CfMUCMKG+v75RXqYW8DP3Vgfn57P1IeHWX2j7zA+GYBnyyeup+vbqJ1I22iQa4pNlK+tJORDJXvk0Iz/kXLS0rQtro2EDDjGTp7oY15OyEu7r836S9g/RLsh9Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763651515; c=relaxed/simple;
	bh=VxGnOFhvFRiYNj8VvXQ8AUWqj9AYW8dE+uHUnrGK7rs=;
	h=To:Subject:From:Message-Id:Date; b=DjUtO26Vy0JqJHWjQTSNAdFaPSARr9Vxi23Y9M1buEV/lBc3YuKWXuHeVpvgrSYBO8FAHP0OB+aMK+y0+/xRc1N2o/8kLG+yLRdqqZ3eJTsgER7HbtK1g4ph/YpImqtlFBBVFGQaIv9suRF7oVPE32OHei75kG0nL8k2giqlcqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUfmTzrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUfmTzrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF57C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763651513;
	bh=VxGnOFhvFRiYNj8VvXQ8AUWqj9AYW8dE+uHUnrGK7rs=;
	h=To:Subject:From:Date:From;
	b=AUfmTzrtqggrlCfOh96il0YpVo06CvgGc8ZkSlAEf1h2KVpSjW4+cPaojm3JJcFmR
	 KTACpMHg0fsOHDObVGCPlseClTDL71N+flYIZxispW4GqQhmn8fV933J1J61iPPx2E
	 kVe9zeVH2LxMGWLO4BUPoWSvfTPu6QhmzFMWhX0SesQDh9GbYHYHExtRGjzjAi7psN
	 VzWL8Nh1tsIuug7tcvlCG33etsh1k/+4vH7sjUV1dKKCV0XotweQayXxxBWdCncy2/
	 VqXGA+/xP/FsfxdepvuykJwwodS80KVIsyshP9XGDL+nqdmnXka0+Xb6dqB9Rg+a3q
	 lSnpWgXiKImuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9643DCF8861
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 15:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365151360.29572.8669242322617667805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb961c89b20654c133cfb0f377e26142ccb2774c057c7cf07f4a06e27cdaec5
Date: Thu, 20 Nov 2025 15:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763651513
