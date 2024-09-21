Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323801EB29
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726935354; cv=none; b=HgiNZkSzfM9xFM0tjkETJbxXrHtXaDA4Bvvex8ly+aXW3DOEnEklK49rstC+k2xD+7Bw9PgI+DAjxEwhhf2kzj5t0Rquj4ygv+oy+amWaJJPNl3a/GdhkcyOrJbEVAdUiBBLRP4AHcQ4Q5dZiwH0L6P9TrN8D8Z2gc72Fu+7vI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726935354; c=relaxed/simple;
	bh=K4o1ECFvAV2nARDeWlxoeouwyP84r3EInTHzErwfmIw=;
	h=To:Subject:From:Message-Id:Date; b=NtVLGqynW8cnOo2OQi64hcpIFXGTYwncSEhe6f+1bQOh76Kk0K4WCl4kR9oCNJxeHH7nLtdkKyktelveTSMqy48Otj5xepSPWw4XqJ2joP4LX+HZgAEmqmo6TQNMlfY6u9uxR+egKU+qTesryseBwvGYSggXS6s4MaYqHFRVTVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2hbaM0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2hbaM0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A70C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726935353;
	bh=K4o1ECFvAV2nARDeWlxoeouwyP84r3EInTHzErwfmIw=;
	h=To:Subject:From:Date:From;
	b=s2hbaM0tJWTAoIJuJSsJH5plno6Qy4g3Wgsovkxcqg4a7YSmlfrYOtSpXgUAjFCUq
	 WgwxRotKEOKbnSXDxngz8Pcn48sl6QS1G2FQAjYn2hJufShpQo3nHBUdnVZNniBaVq
	 +7dzMkrTNkfH2FmCZ8qA7h5Gdi6ePgaN7hC93fPCjAbLSyNMCrvzNBB4uClzoIlm59
	 eQU4oKoIpk12VCVzN4dhPGlsmKIoOVmuIstYX7MI6g/Lr7lPgQZ3Ljq8auC4MhxwSU
	 hHjnqw9mTvPqaz8lt+O7mQp0YlYzZWEp3pPMRBkNxHr4wRa4sOTQ8sWDZaDBC9HCfb
	 Fo4ZYsPlWdgAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC5CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693535358.30001.9438418303190852691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4689f79d2b4078f50ab85f24742daf002ab1489d9a3b5cb87daedd30c99483bd
Date: Sat, 21 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726935353
