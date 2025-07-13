Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D40751C5A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752433194; cv=none; b=BzFSNrSMvmqrkIGaioCD5wGwtygNpzqk/zyFGrEjVo9esTIZQLG32y9inqRKAprR870EcD0ctsc/r5NgOR0M8fZHqqIfETEOnQKVNM+typN1K3+F6wIiP5bY/cm+wQm2x/NyFE8MBabPBQ2i0M0dYvnZp95WngL9BZAIEQlHocQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752433194; c=relaxed/simple;
	bh=0waIIZOaKO+jNeaF6w1pm6/mPZErnJXa9+PUQ/48TN8=;
	h=To:Subject:From:Message-Id:Date; b=FDwIemXl3GRjdlsu3Zs60NBP7WbJ2SQba4Ve0ocCCm6AlEHP033o1s8CmY4nJfr6DBUlC5xT1y3GGYv4+wlHJDLV/J8pmniJSWLn0oXWqlgX4Y3El8lp1bpB92uUWLGNykdcortn3Kiyp5GWkz5hiivxcnb1jwXB892faj5uQ6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBS874Iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBS874Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F5C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752433193;
	bh=0waIIZOaKO+jNeaF6w1pm6/mPZErnJXa9+PUQ/48TN8=;
	h=To:Subject:From:Date:From;
	b=WBS874Iwr+B/RUST91NiVE69Zqy3sop2VFp3b58DWmAw5KxSJyUpIk2Uvny5/VOhR
	 q1DSggr2Eoq6qU1QdIfTfiJbEW6wLFGwptz2L0bddVJEu6buomLGzdY9nq+rqYR3an
	 4KnlSlaOimG885Bv+8JfQ28cNSpZBUwLmKZzlTjuepQ7reBdkVJKVU1SArhnwrYmSx
	 bYf4GdYhaeZRzMlryJTqBeqNtXgCryTTFC0XuTEw7/NL3CpIpIxib4zsjVmLnDbVao
	 V6s5/5rVrz995Lzy0IaEtA16WNAjOQyRTKvJsZUh7Z6aXwvwdEMQT60aEE6eX/AbX7
	 MlZg4wneKEC6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95677C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243319357.4495.7014907438447983555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14745ee050432e437f78f0233cbe557d9e20b085c2319679b165e3427a3ae608
Date: Sun, 13 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752433193
