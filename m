Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CF135F180
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777465654; cv=none; b=EmdYPSsyTBEfb7ZAtHWhdtbtmaPb5YEGDVW2ywbQ5Trp17BqCimItSVYLkkMszEm7bbuDS2/2RH65+HHbfrD4VmBsE6iRDW2S1mJXglaiJHN4ReJwVswsCc71Vl0a4kiTvLJeFt/7QvQUU6BXKOUGyonqhoPbclUwoiHyU7nvlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777465654; c=relaxed/simple;
	bh=rD1OpHGFtIRdMEgPgIN5C+ovC8LkSrHWwhYj373QemQ=;
	h=To:Subject:From:Message-Id:Date; b=UfP0pyyr1PeOwc3ov+zsYb5sSr1Tv4LcZ/gLgdFv8i7vo0fy5vNqMGy9CrbRWl/MoVs4oXwgSgG/jog6LCp6d4yZUnuxMU6tRPCMjSWId8ffSLuG6ZytvbCkMcuhgpPgnE6HhOLnZwJ88bUXUGKLbUXDEAu+zj4rK6uPhCNT1to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCNUf8gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCNUf8gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A2DC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777465653;
	bh=rD1OpHGFtIRdMEgPgIN5C+ovC8LkSrHWwhYj373QemQ=;
	h=To:Subject:From:Date:From;
	b=JCNUf8gg14/cvxAy51f1YMsPLOZNy8Vg/TUameQ+ZVuh4x/iAXIhCRV/joo+qZwt5
	 LZqy95q+dqNYsfeuCKV23aAhNy3qNNFrDoQMpvvI3V1JGsXZNhaEVJcNjOYX7brdwV
	 HSKcE+QqjwNibOVtAQ6SUf/BodExV7XVnRmkwpxoIlsmlgKXd9KPOmopKyCrHmeEGa
	 0MPmPeE6sWPrYwEZrYzRsp5/yw3sBKcAL3BN8MHitHP75hEh9FPiwLTPp7vH40Kqf0
	 M/Sy7RK9rzGVbmtT5cmmjm7oJaINBppOK9K8fUbJloANuYoF3ptNZLLT9jyaR254NT
	 r32IK+tGlFyDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA398FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746565368.17302.5157164335244277446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e4c05066ec35db062a420d7b045691ef18a4a4455ec770b7a46f922309b178
Date: Wed, 29 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777465653
