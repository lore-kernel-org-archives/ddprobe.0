Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E347B3E1
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758431394; cv=none; b=SbJslDTDPJAqd5TiOqZsg4JdUvANB1M5vEMMhLr+uyi8yDhhP7edZSt/hqNeS+MhJhCZlgBypOR/uYOTFdlJTtEjNgk4Z2b5Wzar8CPsrOwRYZgQ5C1o2GbavHfmKVGz4f93Vtgiakun2SX5jOtcvgIp0nUpiAPqp9Nj7+sIEac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758431394; c=relaxed/simple;
	bh=4QaUKwIWmGSXdjU62Kec0QO9pCqxgPoNBvRDybTxhmM=;
	h=To:Subject:From:Message-Id:Date; b=LA8aNykQltwYWSKRLztQ1M23gn/A33buEBS+Q/BA2cRAqwgupIgHTEkedmH3J+iSjpz8EYJDgEp6rmMSm6bHYkPly5pWmWstLyE2ULpoKuXKpXiMTbJz63mGmXwkS+Ho6DqYogR0ixbBS+SbXMRKc2WOsHFLECB5FMFqKcn9a0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUDA2bQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUDA2bQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758431393;
	bh=4QaUKwIWmGSXdjU62Kec0QO9pCqxgPoNBvRDybTxhmM=;
	h=To:Subject:From:Date:From;
	b=fUDA2bQjxCZHP50ylvjpxeB+usX/To6yCX2HbvHHqT0wnaB9R6ozQfikF6960YUMn
	 qp3dfPm1eVYJ6xdls+hDUpHEYUBSE4gJWxKuaQymFXzRHd/aTs7vNceniipynf2Ec7
	 c0Oos3HhpN2b6tS9tjCH/SUFQoFZcD+O1Yj+4Q9DvU0BugmXv1ONCVcIzD48Uc2R/1
	 EHCJugO69Vr6XPlbu9wk7EXXG5toaTL96OKGqD1aj2EEJzeSGLS2mX0LLXspMcOlUa
	 jUd1nHD/MY+a0JW75caJ441/h1e8fLoxIuhzZrEu0rH3O772Yn6hHpDsnEs4vKY8jm
	 mhdP27ZjjwRtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B1CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843139357.8942.16667095065348636677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4181f392ae26433801db70325d6597f8b7b9bfecb8d05bfe9c2ffe2c8276e7da
Date: Sun, 21 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758431393
