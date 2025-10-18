Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193331643B
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760786994; cv=none; b=JGfryuI1szG2zI3RGG6cEpZg9Y/Ckav7BXjrsy2M4RbdYLTKZ6nwoxUrrPDHLTK5eG2CeMteaQEMnZltR/71p5jZCjbUB/kx6MDueqzz/ImugkTkuVJKyvNFa4p+IIWX3rRAHVd9kakYmpn5jEioy/aDnshNdukip3ahVUlYoSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760786994; c=relaxed/simple;
	bh=Aji+Gz89pJ3n07bjtSFkgyS0MTJAU1iMXU6xgfw+T/k=;
	h=To:Subject:From:Message-Id:Date; b=X+IlsyBjaAKca6hTpaIu99eviRgGXvc+1GLBm11u36yo1r8w3HgcgXiKIy27TNNB6rxr99Ed68xKt0ODVhQFdoHpNLul5zjJHqTxSNCrs6ukZxFCdOrZ7lMUSb3V0QnUYSXtOj9pi+4A3vr+smBzilQrJx33bY0L6nBqjnXpOZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVoScgs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVoScgs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5319C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760786993;
	bh=Aji+Gz89pJ3n07bjtSFkgyS0MTJAU1iMXU6xgfw+T/k=;
	h=To:Subject:From:Date:From;
	b=eVoScgs1r8u/PhdrGb8iV1CoKTdSRgmRKBCtBMQmHziHFFsZF6SRy0sF3hCS9o9cA
	 mULtRueyo+nsHDbp4gjNtPWCD12BddJB27i+h83IsD9IKmo3bthqmjSNA04LQJ5i6I
	 TA2RnNVtAHmI2nGdBwxPre83RgX9Pt30eqhrjEYe5CHvmZVfOZcIGf5T877HlKvzo5
	 68mauIY66IklPb0j09STl7HU0g8A9kpQ+95K8vadwuf9SFq0WmwKcHsZXECYrrsl2W
	 +Psl4cw0cFGUargSfu43L0m0kDH2lmWqoENDdRP4sPrF8zWReBCCQ6ZDh0zFtBJ3Wh
	 uwYQkDxTNx0YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9596ACCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078699357.31740.1644206173239444716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0d1a62da72ba9e3f102f14148f33e0fee10ab9f1567b9600a819a075d372e2
Date: Sat, 18 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760786993
