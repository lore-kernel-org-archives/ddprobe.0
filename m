Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AED92D8DD3
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756882195; cv=none; b=Rgz1MxCSpATMBFhaM0wk9rB6hK+rH/Zdaz67pIVFY8tsE4bMzJu6YmoSl/vKys7lxBwjImhGFt7/kqN5ayEZBEHsQZbv+7meNotk1O7BTL0VT+iIFyBG2e++5u74HN0bipQSRquXP0RHvLFb6RCFoqREYLQuGp7rTbCw3KlAoM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756882195; c=relaxed/simple;
	bh=UYOrt+lkgAUV/b5Le8QW4su7k3Kbb0TlwKoDMoxx8Ow=;
	h=To:Subject:From:Message-Id:Date; b=fP7w1FRefSc+VTYYRSA30ZZ/6N538y0YX0gxlKCqle9zvOY32apYH8DiigZodlHqasdixM01faICa6dmbZHvuHqov+wo9jUVJwZ49U6jBJZ+YJyIoriS9KCAcCTyBI5CQWI+yPihWrpqcmS86mH52FH4VoX8xb2kagqcDgaTWY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwcyyPLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwcyyPLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AF4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756882193;
	bh=UYOrt+lkgAUV/b5Le8QW4su7k3Kbb0TlwKoDMoxx8Ow=;
	h=To:Subject:From:Date:From;
	b=EwcyyPLAMIw7/1gz0Kdp1kHKDZWHDkeODRVh9NYiTjV1AaanYREDCt824xSd7vCRh
	 ifpLR//WG7GRJOtZbSd9sHZXXiIpWRomsbFCt+mzA2quPPj4wo1gEIBxqv82isVY3C
	 pMz3qEer/qdWudki/vQqeIlc85pUGmBcba7vQWsrDhDC1zdZXQydFPzbLFy74AQxMk
	 1m9O1s8rMiISyhogLu+MQF+yTIYql4bTXDbcm/Amn2LCp0KHwOs/oODGRWtEnO58ge
	 /Y/QHFMCW6POkHVgF8sGFO9kKLi3KCohVKORKvXyyF6D4XXEvbUqg9tmobQq7QSMdF
	 LA9/MTdOIGtkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD17CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688219358.30311.15592718734390939063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47aec033bacc922c30c5b91832e234d41809165697b4a4cc841c9366a70548a2
Date: Wed, 03 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756882193
