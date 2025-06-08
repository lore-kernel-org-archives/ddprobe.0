Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30034194137
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749419995; cv=none; b=R5M+7c6UG1m+6Eunaf+NEbNWXJz1CfP7F+KIea+K5A7+Uj6eKYUdeeUl4SpzO2SxiIEDS1cc6f3ySadkzAB0b7KxoCUwVIlK1uhZl/Dcs8F7a6vVBZsAuWNkzY33xNmQ2Wv3yAcJNp3UU7ks4ZdxGTRshJkBk1ooJERNY4Tfr/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749419995; c=relaxed/simple;
	bh=OM7N5DKK6J0J2cQlZOkreCqVNr1hXV8pcgBpnCeQY6s=;
	h=To:Subject:From:Message-Id:Date; b=gUtsCDezLY/bbruWJH+ESJ5Tc2hUOdL/7/91r+YUlWRAakL6/XekbQxi8z/xndZ6GiXVXPi12DXvmY+VnlmZUFBW4G3y6tYabkhMPso2Au0QwTYbrRKcrDFFGSl7w+AU6v2J9LMheSv+esHnqRH31gFMjOHwNB0LkrExODnhQBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBJSBYGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBJSBYGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57DBC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749419993;
	bh=OM7N5DKK6J0J2cQlZOkreCqVNr1hXV8pcgBpnCeQY6s=;
	h=To:Subject:From:Date:From;
	b=mBJSBYGVwV2sHPiyOcVHjxuTuVrqQQUmgwjX+DZnRI7LYcRh+116G+1Lq0746TgmP
	 I4UWEVM/wuxTF1OXoVtnghqFgS6i9QaOwUU6zjhb8lBEPexcXLfVA8XzCCC5Rqzbhx
	 doRPqRaHAO8tLisnQk06LZ8lR6NDjgCaFoiHxw9INt7haJX4JIKBpYdkRueAYuKM89
	 LDBCiJKxgjQiTZEu8nQoyKQuvft7t1fJCq1yJbNaN1ubupijww84gVS57whjO0V8Pn
	 6F07NrPxdkDcf3oq2vc2j1UuRd7qpjIHtXzIMgTCAEQsubfqIbp+dDFxX7MMx9zGQm
	 BdTbNzwMhdbOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910FBC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941999357.28342.452448615888120466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20eae8828e59e8bceb4d0f8903c93bde8292ae3f0b88bacf8b2c57bffbe5e5b5
Date: Sun, 08 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749419993
