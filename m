Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E29A95E
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789645234; cv=none; b=X2pRs8hzfBgZXUC/AEn/4HF6rY7kJFSuNd/DaAlnXiHC0pzuNqQYctdugEiMjfCU1zVOnjG3XNYKCY4RK4cRjfMU8TeUcE0qcxinqkmWoyjI5bHNKSIV/NFaVXPLVbcJfxevVGdKSZNLh1BZTN5DUF0/r5Zb+RNpzaL7CxjiQ+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789645234; c=relaxed/simple;
	bh=9Fcvr1ENOvMGSFSGXTmqanhNMAAI7Qk1f8Xd+rmxF/o=;
	h=To:Subject:From:Message-Id:Date; b=fGAU2zaXqr6K9USKQf2cbHh6WAg7mY5j4v+v9AG1UJNF+VLfHk2yWxCQMmkchm/378v4bRcpZpsAJBw4ogaN3BmYfWV2dwKC1Xm3cdmvXn3R3sgZo9EgNS2x6eRrfucrHrihf/UF3w4GM1cNQKXp3Vo7ZbMEZWipk+VMkRhu8hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRu/mJVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRu/mJVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5EDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789645233;
	bh=9Fcvr1ENOvMGSFSGXTmqanhNMAAI7Qk1f8Xd+rmxF/o=;
	h=To:Subject:From:Date:From;
	b=dRu/mJVaNdPile0CIDLPr8A3KFfLIC2L3Y1AyrGPqhckKIYGLPpKsDiEwwmGrrc8A
	 +xy8IPMJoUuWb654LPLieEWn1JGG7hrWBhR8uJiU/T/R3nbB55ESpYx6tanLiTIq99
	 uDAj8lVmTTQNh5gU9W+ncSIrH64M47frcORG1Jb846JwfSqS4VLUF1enfM3mOH+IY1
	 bqXvREa+NBtzfnLElwRg+/WqyBda7d9q5ocU7WVm3bE7lBSyiacjQgp9ptOvCfbT3P
	 ArbuiTfi2Pgl9XLJ5aMITTfcgEMAEYiXmf7QOMd+cxHktCAGQrHJ4O1yPzmu2vHdc3
	 qq4Tv9h1dpqMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC23DC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964523369.6107.17985709832897220428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e14b3dedb9489b8c1045d9852d8c5fa1ce8dc290665df290a1906ab9d1165e
Date: Thu, 17 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789645233
