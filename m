Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B2525D1E9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777628854; cv=none; b=kV+jWTStzGonSwmo/rkfkRNgZz4q/Hwe2txNkgd1V8llVqzZ9nqkzm1JeOrQ2MyevmvGq7ts+ccMfMuf4nh5RAwm2tkTaWfFSAUoQhrYjoGdxWy8JN3G+vKcBsVSU8xnjSjQeL+7ni09jPIkr28RaliFkjcMl0UPTRDcHofIZi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777628854; c=relaxed/simple;
	bh=1Tnkb+CcFXZgk1LN3dYh/faA9DqmH4uT01ySlL7ZGMk=;
	h=To:Subject:From:Message-Id:Date; b=MP0m6IpaaYOgoSNzb1RYslu7WiTMJY9vDvllODr/Fg/zlUaBHocuyoppflcJkwhHDJRddZPt9wRewqtb2RNJGWHRXipJM8aqya/t9dvth29BKXwEqLMkmReQwNkizGIfZNOLVwG9qJb/z0dz/K8UV1iJoBlGje/rjmTBNdSXiuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT1KOkUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT1KOkUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50BFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777628853;
	bh=1Tnkb+CcFXZgk1LN3dYh/faA9DqmH4uT01ySlL7ZGMk=;
	h=To:Subject:From:Date:From;
	b=iT1KOkUoZjjiFu8ZUjR8wHCsFZe94nR+oAX85iI27K2eGgtXL/fKCi/0ZVkgjNLny
	 towCyM5a+IDwTgz6eNw56J5ksppT0eLh1KPQmKGVnnvbtUCuMFR9xjNwk3oi9Tc/ok
	 OYDAey0JvynE0tea1SmqR/VN+bZf1MEf+qjIiXZ0KGD46biLFsLpD86iWP+HUZdGPB
	 x2Uh22GFRygwaLtk6JT7pCjYiBvBD30EwvSwvprsH+cq1BaH3uH04AlYaY5v0X6E9r
	 nQFbEwXxvenA0dTgyJUHwG1OdCF6A6O6NLk5uN3A5Tp5ZK5H5Xa/bIBsDxh/C70b7Z
	 Y+bMtE19XU3ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3888FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762885369.28185.13533047969733733296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d718b44da65d50b87ffa78dbe627a9f5bae8b3bb2afaf55c8b52fccf46f742
Date: Fri, 01 May 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777628853
