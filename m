Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C315448B97
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788516034; cv=none; b=d3h+cM+w92kixI1N2qKeanGAaJw2wond8aYNVRKm27xfPFHUJbcml9Ti9rE/JnNJPNgxIC245bMs5WCoeriE8cUbAy/5uk0iyTWrZj1w+o/tU1dHC8KOg5RV/gwfB2wVmjVORjJf4X1AKdp6vxTVr2vmMx3ozXITVHyP7KFAhsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788516034; c=relaxed/simple;
	bh=lZkL2qRquOljbF5KMIsMOW50zjcdRSJFzNpgNS0DqTI=;
	h=To:Subject:From:Message-Id:Date; b=do2dJjGQBljoATNNo/CFGyhOM5wvpggFWEvSskSqiGyeuOW4nO11CgBpxHS8f6VUTLcBufXz+eZIej+txHBYm3tgBq2mRjXrOJqFvIHoUAZEGBvEDSxHx/SU59MqZ0f0SzUOn+0kK66csHeC9RIHZxb7zxT7sRc0vISs5ZO+DPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PY7Qvm4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PY7Qvm4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF97C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788516033;
	bh=lZkL2qRquOljbF5KMIsMOW50zjcdRSJFzNpgNS0DqTI=;
	h=To:Subject:From:Date:From;
	b=PY7Qvm4bIQWI1EKavTvMCSYsbIHeg9dQ1NzlcJ8rMlsPHHErUPDesSG9MQ9Dp2EXi
	 SFmWxS0H5t6AGFdjl6BucIu6JAMztOFF/YyWvY4AUYLBLgJtgPagOFfsyDkGIVZBBt
	 iHS0KCvLoCI94+zovhv7aKGVVjk2VbSO8YGgBEEgr+R2v5y7Nbz3OthOnA+0cyUrAP
	 Tv9NG1fusAgNeCgzhAvmUWTfzWuILO96CUutmXpQZ+UUG5nwD/rMsJec3emq4b6Ij2
	 dVaDGpzSzo2h3IspdnWjZpgw6EkaWERDv56N3mpLI2E21R1czdvCHPXfuBUpGG/t10
	 M1bjU6jG/shCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC852C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851603369.17031.7069284232845831168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e26856ecf4564f4718b9fa88dc31ee80778e4a2297a948fa4d6b5f0e8010098
Date: Fri, 04 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788516033
