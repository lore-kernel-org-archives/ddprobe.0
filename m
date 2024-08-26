Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47497173
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724632554; cv=none; b=R0ZJdnmqBmvMD7qtxpMQgA3rrdQgxwgFo2V1j3rD0brWKACNEpbU1Qik8AIr++E5pzqVYUpZEE7o0zWWF/ls5COFtKnKBhyIF4ez/wOhoGINmnKZQU9/wkpsfiwHr77N4xacQAaRmZzewzjA5wb/O3hrDWYjuUnAFRGMVRO0Pg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724632554; c=relaxed/simple;
	bh=9aThWLkXUfZlF7JNyInAQY1HVbnVPm7b1l4gRRVo5bA=;
	h=To:Subject:From:Message-Id:Date; b=bDYEsTOKRVJDijban/p0F2zRsHyew1PorFjZPG4akk2uJBFLgMPqgs5QMwuGuDhegdBRV5U1GrUA91Ej2PPP7kWO8WzQxbes+R4kAGD5pilMxwYceHY6VLcqrqhRFIWRGctn+zvIBDnVeMpFQpNori5l5gNSRJhxs8JYksg72TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCglnQlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCglnQlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9035C4AF13
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724632553;
	bh=9aThWLkXUfZlF7JNyInAQY1HVbnVPm7b1l4gRRVo5bA=;
	h=To:Subject:From:Date:From;
	b=bCglnQlA9bAfmJWL4Kj8D9a99RdQWqesJdDZGgrN7Y/Wm96wo6Q8Mv1PeW2RSR7wX
	 2znrNNry5M24syPKiPU6MjrwRnrVFAAuT/TYw3yrMqUn8neA8R2RveQEjYNKh9Y8GK
	 EFXZL4IVwkyGG7p+LMQNx2g5gemkbSuLTN0MbPscFyDipJ0wA/Wf7bwmpyKCFMJU33
	 CiTiydsvu2Dsaat/+1iFLMnx4nODa066t8dO9jTb1D4hFainmBt0/Bhl3Ou7XY2YR8
	 P2DL752CIJpBKpYyTcf2lr/p3HzRisOoqYZLypVJ7jGzLflQg4RUn+ICXTJ4hJCHys
	 V+eWwgvzZ3Amg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D75C5320E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463255362.15705.8962235167043034671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3744e94fb412f0ff293bd61ddc442f31715e4b40199a6a819bdf93e43efca5a3
Date: Mon, 26 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724632553
