Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE82287503
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766183634; cv=none; b=YOsBk9rr6531Be2RLC9KIlvANdm1XqvUA4gU0y9wBV/6UT0hzeTHnQIu+hN7D4C5G2uyS1AhZZth44zebTDgCxpTwnuldVjiuU27/xiVBkJetlXpK+FfPKzzARvBZK3NY3EVHJRktYqyhCj43I61wgTzz+Co5ZMlq5UawsPU+c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766183634; c=relaxed/simple;
	bh=olF//I+EM+2/9k7BBCMqnIVHbR7NmqJRMt8XGOuWUiY=;
	h=To:Subject:From:Message-Id:Date; b=NzkbjJcmn1ZuaovyS2AdmLPtwVTv8/S9nUFU0KuhgBw2tHxbfZTDfxsqF2IoUOQF3CUVxOQKLXn7fGniCzILNe0lnretQDdeFygIbtB4L1ZsNszNd3VCaa2WgWUAZF8pydzvnX/k1tm0PFpIkVSt8E96MirgA16gBrusujDWJug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6sNOJcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6sNOJcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766183633;
	bh=olF//I+EM+2/9k7BBCMqnIVHbR7NmqJRMt8XGOuWUiY=;
	h=To:Subject:From:Date:From;
	b=V6sNOJcQQudHyDcjstnIGzo0w5QhMI3S4aC0ZnD5jibeUfyGecsB4hO9Zjv1tlhOa
	 4HFDHTIsvdL5bfnxrSVVu+m/ytvg/YJkSa4IrncU5TSclPsH8vwCyyEEEbaUuHqD7T
	 r4ezuFk47fTgo8xakgsGkNN0KDjAghUIRtn2HhiKJZ8dszBNScIsip+ewUxnqiBmMd
	 qajYlIczgsQkL5Dj7Lr25X+KJBO/WgAQVSe093Wfj2ZfvhuCHY1ayaFSVIkRmfTreR
	 W8NQofbuP9LeZXmjy1vhuDJ9f49wXLULLeQVu6sOgQ1niixWb/JMhv4S5dJM4ZZbey
	 0Axw8FjDfCGOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C6E64A92
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618363358.7036.1255985811900278270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75e32029a67d7b50edf9b1b640fb1badfdc8fc1e595a11f7f883d1fa120ba75
Date: Fri, 19 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766183633
