Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226FC26E71F
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754059194; cv=none; b=Z02VSonnjEciVtjJ2GTKxMoHvqmoiwYRHsttMdc2/RlMoOtVK+HVhsvOKWGu2KLAfvYIzJvfRNIDsOey5ZrMznRE5wGCQcBcYBu4a+FpVyx3Y/wTRuwq7oqVZSApTkSadTd3auWdjytr/SgDMjSwlK8WtdV3uEMp5UPWt+M9f/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754059194; c=relaxed/simple;
	bh=5hfdu6QXhm+GZ5M2s3JXrEm+uC08EGbSafn0xj7RKRM=;
	h=To:Subject:From:Message-Id:Date; b=H9GydO+fh/A4VMLaHFs/ZfNVLDgrGdmzGktIlh7UDINTovuRBkSc5FN7JKOiH04v+6k/X6Xj39+QKZyoj1AM3zGmdOpKsQolCrWAt+4IKyVgyiwlNR+KYNK/KJJXxLjS+ZQOXRE2lrnHGIOhiosLCF5OEFvRCtvo4xXEoOI0AHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTTYy/ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTTYy/ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC5C4CEFA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754059193;
	bh=5hfdu6QXhm+GZ5M2s3JXrEm+uC08EGbSafn0xj7RKRM=;
	h=To:Subject:From:Date:From;
	b=dTTYy/kaWud0pfEhUHYFCkbpSGP3aTLg7CTJv2Ax6B0ZHClAe3jjXdAWOpTdID6w+
	 1qe1PeXUxgr9EPYavAkxQC/bj1WchLfcqX7RRurIQg9hEWHF/YkjC2eTGy1OKNrFYL
	 +5XE5Q7lrBUsqMQFh1CyEJWSkdYqHARmFk6vUvOaXMBlLdt3PY3R3HoxkmbDjiWLot
	 wEL0Xx0S2a1XkJPIWgDl5ZmTgcO8RUxKPXyubXHVHBpy6S+ExHp4tFM645FTmaSQ40
	 KOtCQ+7gvveh8wv47N60ART1J0EN6aNt+bOzk3oolxh9lgkijUSBCJMEbM/+44KRzF
	 oOuBGHhvwVgmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DF4C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405919359.31190.13147789395909857101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ee87a7bc55467ff6b74df1b7a205428606b314a05e2ccd6fe8ff848a23228d
Date: Fri, 01 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754059193
