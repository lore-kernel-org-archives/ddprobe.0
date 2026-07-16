Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5611F41DEFA
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784206714; cv=none; b=pUzJTK5M+ODisxqsG4GIbagCarZw1eUS6mpR08DIBD1RVC56PBx2XEMg88OE7JjFwMaXp+MbmPnMsgBr+YCGT1mmNfLNMDwhjbizr6Qr6tXq0wqdLOwhtbd8JX985qnMEY1zY+E/gctdkfgigiA7gKStFF3GfN/8Uv5oMfBl5o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784206714; c=relaxed/simple;
	bh=4unrDnUeWtQ40Bj4NYS6aQyB3npEOCQnnMEAZuDPAm8=;
	h=To:Subject:From:Message-Id:Date; b=fYl8WKuyMbPCYjPKuu/Rbu+q8MV2QM91aaGdaU9PDZarkSWXJXb/jFnAaoBBRNJzim0paWBOD7BrFt85X0hfySbLXwz7/x2nus88n1oFzdbgE7ibB1eL+2t+CAg93CkZKGR8Dp6j4/JQl5O9l3+8caG0zkx652casy4sxHLaOC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+QkbiNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+QkbiNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C79C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784206713;
	bh=4unrDnUeWtQ40Bj4NYS6aQyB3npEOCQnnMEAZuDPAm8=;
	h=To:Subject:From:Date:From;
	b=F+QkbiNXZih+V3nCSaZXcUjcAM/zr7dR2ItwXn/bsSqLvlm2/jaoEjZ/6KOQCMYLf
	 BREpHLo2dUn23gvIcvQBGK8N7sg4wIugHRMuvHql0ICwl5kvzqGnY8DCNpmgnAzXJo
	 mlbk7cUwqTUlEgDDK8hSt2Tk5UMjn3AXbYWACZxCD2/Jr0gFC5n6tHznMTGe1xr1h2
	 3pN3fvoeWjdVKkdbpJjMxUGLDiUS4nQgOzHyYMM8MMMbhuBTjPfMzvzkYBmwki6wLm
	 KrAzlzIr3Fr4I9ZqnwpabUGW3rY7jubN3DK9VQ+Dke9c86OQZGXYx6nHhCP4iLxK+F
	 +zpm7QoqLL/hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45EAC4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420671370.31846.1446909843798771752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc21718f1ffa01cb56c45d386a0f4d3558a8f4d4e1159d42e6d207441109442b
Date: Thu, 16 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784206713
