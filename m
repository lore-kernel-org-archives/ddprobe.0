Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362A3282F3F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789769434; cv=none; b=jtjSBgZRv5DFnkTrDTwy9YkVWn1QzFzz4rzgtjar1ipLboJkNsJjVgmFmZZz/BiQJLPgauEX3JYKOYGPr3uDBJcNEpylfGb12yfSDpTN7Bgz4EZvSjl5tADzdsk3c5NyT20/IaQBeVzhEeAOUIUe8selzlh+/ymynGH+pbj1PnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789769434; c=relaxed/simple;
	bh=7O66ZDHaKmsVIob6WPPFRvtZ1ZGj1xnFvGOGlURrpOg=;
	h=To:Subject:From:Message-Id:Date; b=FtMpo1ahxhA9FOlV/+/SUKvgdS1ukr7B53lqb+Y8c6ofQBWVz4UlRkWgMmVNm/9iwNu55GcIkTncgt9kX4v6RQTeIRuBSyqjac/qE1Wc2/OYmFz9Ndfjhcs7KHctWSLGuSXl8zbKmnJ38tKWBqVk9V02U6XJZwoRrWW5oGYpDQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb4xqoW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb4xqoW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC95C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789769433;
	bh=7O66ZDHaKmsVIob6WPPFRvtZ1ZGj1xnFvGOGlURrpOg=;
	h=To:Subject:From:Date:From;
	b=Pb4xqoW/esjfKHfF+ydCZsBKuvW7n0CgwM2eFUz3avOGemb2fNVh0OcHQ5Jixbg2g
	 GBPvkqQESAZ/w4UAQA4zZiwwscimdG9mvgO12ULT5XrHqEJssiXVRMnLJ87QXTd7eU
	 iOAK7ZelsvwgSXsYtWYWYDXyKdvlGwwhfoKllCzLkNKz7Dmqh/xUxUHEpAm/Or9FUc
	 5ETLAdinbMesnVqMcxWFMv9+EDeQFFM+/UeP4HoLhThEfEMFd8cU0Aeu+tgg+BEj6K
	 KBHwfCpcsc5T65yUca84EVM38XcRQ4sQr1/mGi84ucSWccNsQ2T7EDSigWuvNwdTSQ
	 EN2DJxSG4vr/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A928DC982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976943368.18417.811652272117858406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5152186ff5025ebedb9fb185579f9df8167338312ee42ba95e2c1d4df01cde
Date: Fri, 18 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789769433
