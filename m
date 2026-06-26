Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CED1ACED5
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782433654; cv=none; b=JheMAamt5FxKMNCh+pv0/NsN7jS7YtfABlSpUH0DfESbSXAHvDfoqrdZBfnCgFhMsW0zgmGvgEMptirCKTCzxMne48S6wFmd6IGE/P3BO++iRrOMEjGhM5ZT/1lGLgIe8TeSxENu7aMnie0CfHZjqWrM6IWPfbmVLvmJHiW1FVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782433654; c=relaxed/simple;
	bh=e6F44Z7qprzXE8KOyKVxDZJTLck1/sgPSLFYhsq9Cr4=;
	h=To:Subject:From:Message-Id:Date; b=FhB1rB7cbRShpYDFbbFyr4owEQR9Po3vWs7ctz8JStj4cspVn0zo0QPO5WIt7msy9+Rh0R2kmcNG44jEHvuTkJotQebmehxZJHSiaNwm/uBo+1lN+0N0pTip1nvdjoyxLfezGX5u1xg2Oz8QuDKrrNxg+DgXfDPDsYrBZkasRf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE5MrtwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE5MrtwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2E9C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782433653;
	bh=e6F44Z7qprzXE8KOyKVxDZJTLck1/sgPSLFYhsq9Cr4=;
	h=To:Subject:From:Date:From;
	b=gE5MrtwA9yRx9i3f2b9etUMwD8G+pSIOOG3ul5mZwIIQqkilf3MDBQ1qLpTrkYOju
	 1I5xWNOojgd4c6WPuZC5iu3rwi5941SB+kRuw42d6dqtSHPcSAGp203LD0kQIQzmHE
	 yoBUjLsPRgtHM/hIBiFxCjN1YTVY1oZPvvBmF88L0HV8Nwvynna8wSufVwj8MyVQiZ
	 VaI5PPvw89G5u25ZACflGH94DFK5PGb3aM4u0FCwlGHwhNH07Nr3ZazMKXYc3fAldD
	 DqIjmhn/cN4kWHi1aXNxzZ9TE1H157Qb1FWGnWpqZbMdm+OcHUAIJW7JNVjP339npW
	 PG5Dy9/7uAZ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3423CDE00B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243365369.18720.15573190956793897150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94e4949d3c8be7f8c5c05bb2d874c5b234ec53a60107c07f919b0fe239a53fa
Date: Fri, 26 Jun 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782433653
