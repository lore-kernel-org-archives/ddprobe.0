Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2D8433D1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736822154; cv=none; b=mQn9u4gnjbFPtOCbzWUDBWn5yvn+lDFIlU6i7OzCRxMLlUgR6SfUBPwOp4xnGJn00wuyw3IaiGHSXXkfkPWryg2JJN5vDwUVB0ZWanbT1LXlm6SoBvAkgL59fo0Rz5TlrP9AZYw0uxbPqx++adx6khv06jcx870M7OA2fdVtSg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736822154; c=relaxed/simple;
	bh=3Y+FJOjpyn8smXkLqma5p9A5M3t0qBlzEa+2Kt83WMY=;
	h=To:Subject:From:Message-Id:Date; b=sPGml+5En+mbMuIki5nBMH+a5rEMNAL++JjYLCIfGuwpMf0fuybSx5iXmIS9mbZETKCdV4LkwN0vT1tKxxt9xOBRVDdzdFQxJE9IjlnFnVdN2hY1qT4lZMNLRHqEVOVIlNh02RXvLZ93vLosyIsJvvN3X8avwFP+4OTqUX2LrmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knFetiEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knFetiEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D3CC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736822153;
	bh=3Y+FJOjpyn8smXkLqma5p9A5M3t0qBlzEa+2Kt83WMY=;
	h=To:Subject:From:Date:From;
	b=knFetiEFa4xbEGi2AOjHW6vG9y1eA2Z4lNhNnctEECIPefdGwClSQ7RC0bWpqmzEc
	 9NQcxD4lmgZHXArQSl9pxQd+UiwhXkc0TD7TUxBIB/Lkol732Fn56n5j720ubqTHdL
	 sAXz4apN0qTROBuKrkRvrdJy9zSwp544ou4ZmOolPAOMjqG6UxX3rZ0UtnWXFtahZt
	 IWbW7jXdvpN69bSjUK+LJ1FVuwCwMES9AJV/k4hI/YXzkgSc/iY1Whl4g46VADMi1x
	 8C0GdsIdXZOENEXeaFz2z7BTa6FevRpPiPln7EMhLtqJsMeLaczhK4o2LfyKsI+Bxw
	 myzmTZUWcqnFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93235C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682215359.24949.3291370027459959593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985238eb686cbbe2fe37aa9cb239cfd678764842b9bb0cc74c247bf3b67e5247
Date: Tue, 14 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736822153
