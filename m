Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498711799D
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 16:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716310403; cv=none; b=BfKJAhcqM4P3PTYEedvhyJ5ZxIpRUsJhyedFRNNVv4ZzYVuAPQ7PlQYUY4x/azdAfIrhWjAPCq1oRd7OwOafu8T3yvgBFs0/mpiWKpsU5Rmf3I0hqRw4hQJrZk1rmXTiprbUOmQ/ietUkoFp8TcStJRRWnevzFsjl68vq6UR4IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716310403; c=relaxed/simple;
	bh=gK/bO/rp6Wp6L+O66s3/QIY/KoY2U02GtsHxsOd6uM4=;
	h=To:Subject:From:Message-Id:Date; b=LYb0CLVH+/QOczsc9HbaMSQFdgonXlKRCuc3EUlE4lsI2EyDFOXd5KUlTMwQclSLbj4j1A0CXOJPCoi6g2Q+zsaiiN+IEp1QvkK6I4ed9eXiK58JGteFDZVBD1JojfvySqe9FVs0DFbKucDjSknPnjemCSEchWLTJvva1QpLiQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWIv0UCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWIv0UCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35E4C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 16:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716310402;
	bh=gK/bO/rp6Wp6L+O66s3/QIY/KoY2U02GtsHxsOd6uM4=;
	h=To:Subject:From:Date:From;
	b=LWIv0UColT+8mXcnTXWGlIwuSyDyT8Q/XwKB4m/BFMUlUEvQPS+Gbfe6UTxb5a5Bc
	 0r78ZuV63hmtI58dqE/7IXXFrc3bKfjnVqSPj9h2a3kuam1IJAfBsyMSbOZXuPPGbd
	 SS0I/gZKHVEHt3BUBlFM3Wv/tbl8CJY2qaODPuSeqvTVucohomGxPIHD6wJLQBM+aS
	 wwesuEvwPJlsfms8vdw2/Vr3bhX9xAwkMuj4Rxv8i9DWDVtCC+UMO2Z0NVHyXRSRNd
	 EjdOGNAkOxGYeje2sHAOuxLpWZbQ0u2F39nAOSkDeuS8smXSLxgi5Yc5ULMpoRmVPr
	 jXz+iUyTMBt9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA2FC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 16:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171631040276.13428.6680460639008233071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac924a60a4022dc41258dea1144ee980b94dd27cff18612450f45ff6dcc9bd40
Date: Tue, 21 May 2024 16:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716310402
