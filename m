Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DDB32144A
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766753034; cv=none; b=TVBkdIKqXsxruzk3k2YLh07iHR9oPn1/YxnxtQuKKQ5Y2hjRgq84e/9jF87kVK1Okcc2TPlCJyyakWvCpMfKQZtw0KTcMugjORc+/S/V+7oMxnlsB6YF5XYMgzIyGYKSB9b68wx9YM1lw/GYgEzEFgCaT0hx5tggQoT1a2HYsUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766753034; c=relaxed/simple;
	bh=mxxWgK9xvdy+Y7zDgRVUa2dl2Sq87EELT5+kFMmqlkE=;
	h=To:Subject:From:Message-Id:Date; b=W2Kgn4JGjbA0ywEKa8oID5Ghh7y9uOf7axFGW1eyFxyc+aDwFMBNeUkDkST8vGzHvlzg5Hi3M1mM00v3bfw4i4nfnZxREA5Tx+lnuuWtD+ehRqF6E+3vb17e4EyoJC91Y/Isv97iSTJ/M+Ahc9LflVCQcLFbB8siQqFFHfnfNzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUNR/B4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUNR/B4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4B0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766753033;
	bh=mxxWgK9xvdy+Y7zDgRVUa2dl2Sq87EELT5+kFMmqlkE=;
	h=To:Subject:From:Date:From;
	b=aUNR/B4KvYiMNyk7b1mWvnB68AyXRg6Ze6wAuuqoeFwmlewh0FNv5g3BBJzgtSHXW
	 h7lPqetFy9YWbWGCdtWi9jcAyFmX0MKg68du/PyVsYcU9rGYolFIvjgKjiXCBfSf8p
	 OD6BVPVFvgzBv/zkX9YDEtje1QXBU2olTPzycA//411dhNmvVnnmACPGs5ZbwzpBcd
	 UTYY+1tGMSDx/szSu3vTJiQ/cLR1HOOrh/1+/ly1TFjceEfVg+btSXGuMxAXXthJhH
	 G6fDh1WDcz3T7YL/Jz+nA1/Y1rhM+5KfboRi1uOUXyTScUvJVrhnVoqsZ2dBZPwDC+
	 qP19RI1Ni8Viw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96073E8FDA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675303358.16596.2148166637526195314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b7541cbe7c75fe5d2d4f471a03eaa64673df682d42bbb8fcd43c0a00f254a7
Date: Fri, 26 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766753033
