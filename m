Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C631ACEDF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776904054; cv=none; b=Ir7kfjN8APUmgPKvEC0gUNKp3LShFYYGcdRoOXD8i52StSfvayCzuUlMsX1BDTYMEVkZFAEph1qNh2aGj4bcuygC5TtEt4w4fX7dk9faja2ATDhAA8z4lQRPDyPjieLL98Of+aIICxyPSADJMbbRk4T275NYHxQhj7D3GCsoyTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776904054; c=relaxed/simple;
	bh=FC4WvQyUAQF5jcKiD7xgAAu0K1VE/gXZvhvMoGgqcjk=;
	h=To:Subject:From:Message-Id:Date; b=pRCmuZWKtx1fGUsygCArHncHDEAiABqWmFXiF83OBWrOijwmRMCDdu2VukNVHZYErNIw1tFiMhjz8LKdSNaXlwRBaFnPaMCLEXJ3ZiY0tNsGLUKwkTdAmSjalG2FBgmWHFPPm3hELao16FMV/kBs4FLxbECCUN1XAzExGPuY5JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niIzPMKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niIzPMKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C332DC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776904053;
	bh=FC4WvQyUAQF5jcKiD7xgAAu0K1VE/gXZvhvMoGgqcjk=;
	h=To:Subject:From:Date:From;
	b=niIzPMKCrHpv0jE80HRXiuVRjJjmywc+UDyg9/W/WOBcZxJhXSuljxv1Hu8aJhdBU
	 ADQfC4FF3Evy6IoMsLC+LOUOEa0NNX2/suzZ5xZMg2V6CXQwKAri0umQ9cEtjlAP2D
	 XtJbK2dM7jcUpXfblhSfzmupfCNP0nbVkp9pTiYmSOsO7SnEG8ZfTvOQrFFm1ZWL1x
	 PttlFoyjiXE5dmoqGUL8OAJoIOgRyXzH4kiaNDPeHhPULkKp0c7y1NIUBWXl/AjIwY
	 bAhD9/XTYk6HyiynFy2pdR5Z/Z6DMp7v6jBCaPyKmyUJCtikkOvcsCZNhBxYPG717W
	 ush4v8blkYYzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD65FAD3E0
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690405368.24312.7920519592536987800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a1e651b0ee4ddac70a4f3f9efdc49f7cf84d8bed172680cfbdd78d78179056
Date: Thu, 23 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776904053
