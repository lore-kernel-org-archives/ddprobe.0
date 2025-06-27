Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 910671DE2AD
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751022595; cv=none; b=D24hIIFQQaapOMGLJw+TH457abctTNmcVgmodDfOO2LKYKVp5EFPN9H3aHSPqS87aoeqtgLvvCkckYor5uzrXSopK1O20HT7tEVqDDEll1GvxbJxfMmLGEpbC7nIJHPr/6oY8ZZyn7ic4JAVRyTUa7PkZOSBQEiKRHaan9BihI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751022595; c=relaxed/simple;
	bh=xl0fMHjL5fIjrPyWYstsymIMCgei3XybIwO6XmeZVzA=;
	h=To:Subject:From:Message-Id:Date; b=AbKQt+3+smA6Q8YHLrkUkS657WTe/XCrDiaQVDozBvt5PPdkidi7l3Z2k8KK28JQQeBLJ531yb1QOu47boSnQFVB3lT9yh3olW6HK1+K4EJmNApQyubzG+Fg7yiSW4ps0p+YwOkC7jZJVoabWvKwYUmA4ClVZ5ak3d+3NINQJM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNq7RZk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNq7RZk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2669C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751022593;
	bh=xl0fMHjL5fIjrPyWYstsymIMCgei3XybIwO6XmeZVzA=;
	h=To:Subject:From:Date:From;
	b=fNq7RZk3SfFF/qzr4hUKWLOWOEn17U1aQ4pAUdEatIpy1JrhnbzP8PHL+22c4kWS5
	 qRYQ1Lk3ddOxO3nOoRuchbWsyyWrzDZsrqTxRGmNSW+Zf5iyVv+0sYJHOyoVZhU577
	 bxr8fvJEN54zBalRJyq24mupLY1/lZPdarIJuekNED+zvfd1PW2jV4ZQmvVph+O0cq
	 2twgqI9CuwZqEhV5bACy/EJWMx1wGg8BfCWlWBf2NyUqldcrObnR8mpeQ7RzXvsh41
	 tU+nY8lM/cYcxYoO4w7COh2AsiFApeDdaD1li2RcNnFcXNlFQWPYsrHfgX8whQ/zAg
	 oZ5Oy4kaPXPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E1C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102259357.11556.9523459294966653128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0572c5c2b65009ea706845a1fa102064016197eccd5087c052042c210218850f
Date: Fri, 27 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751022593
