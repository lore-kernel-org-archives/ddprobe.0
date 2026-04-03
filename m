Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DB4225788
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775228134; cv=none; b=aaIJKinHhJ6KFjdn7CdkbXJyH5Sc2fcnkaJzutvpXeSmKFTW4JF65fEjWnVAAy++CH16pHhwXl6SyB8NtUP4+anIuNQFFyg02RM3O7CZwoFTUTnyVikMsmL05ojxqi1jmu/oBwWfxKPExuELHI9FEaBlBAm1l3YWYRbOja1Ksnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775228134; c=relaxed/simple;
	bh=j+E1WDjGaFdYZui1aqX2jb6GecOdtgMCaExFZNUBmCU=;
	h=To:Subject:From:Message-Id:Date; b=mFaIlemXtAXaIDwQBpR0SJkyC4gF/5oZ39o3I7Kg44eRExjwcfyrUCkOEJu1ORgalQ53Pe29MqyrVkmOTnnOaBEKx/QINWHUYrhQBF+T8iZ486c5VFHeq8kgDfp3gy1IBm8uaklfv1iWJVOUGExXJjeRoi9igxIa+3gibS1Lqk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVcRV2ii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVcRV2ii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36ABC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775228133;
	bh=j+E1WDjGaFdYZui1aqX2jb6GecOdtgMCaExFZNUBmCU=;
	h=To:Subject:From:Date:From;
	b=dVcRV2iihZGMEcp89j14C2dO8LxleaTmc+bZ0VVBtBGi/I3bI8LYgRklGoPP54jf2
	 MCKROLEx33sfouxrjhbKF6gezslgUmbuLI9kkOOsOqCa+ObrJCaqKuaQtMLBL1mVMF
	 T1CKa4gdBLl2ZOHw4M4V+yshA6NaBt9TwG9WG3D03nOS9Eg81PZnis48AuXdLOV6Wu
	 35ihBaRLxFLyAG5Ci41TXBOurw++um6cB6tObvRDpKc1AzlStUl0fsRb6GUl4/gIOd
	 Gv1O2OD4JULARljAV/NXN1HkoTq7rD/kq9SqkfGGN5ctxVyO4s5fGyCtMEypSKjKhR
	 YrUBsk9JrY98Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE43E85367
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522813370.2546.15783169929210138661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a608176e2f467d8cdce270be5d90724a59d3f710a2780c638e8d48ec2733bf5
Date: Fri, 03 Apr 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775228133
