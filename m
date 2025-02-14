Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D571C84B7
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739572134; cv=none; b=uNZrwD/OK2TPpqb80mHAYYJrimluyuehF8N4tsWk91ToABrM6RJypINsPpduG1sI0Hzr2nlqNe7JqekhpH0hThdQBCgoTqOrl9tyAOkqBE4bT2tjYv6SvzWr6RktNu8wfSHUka9ECogsdvmgYiTAamuSRJp3sG1DystNusHCLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739572134; c=relaxed/simple;
	bh=OkgTkBnFxHURtTRXE/QihXQvasPluXhZqOXswYHILSQ=;
	h=To:Subject:From:Message-Id:Date; b=Nv2e7ScI2Qa2PfKOTHs7zicaoqnYhzryQHn/cKxfDm2mcgyIrH/Cc8Y0LXQXSzt7C7WJyT20RyYEuzuTTBgzuTj9KOMkZo5F2SYtY6ozN3Ksthr8RZoVnDADW2vKv8rW4Viez4vVb9quxbw6y6FNKYui5icDESynjBrP8otgMA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nofhQKuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nofhQKuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB7CC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739572133;
	bh=OkgTkBnFxHURtTRXE/QihXQvasPluXhZqOXswYHILSQ=;
	h=To:Subject:From:Date:From;
	b=nofhQKuAyyFJCYLU68BbuqXpb8kIghx5C1w3W/PStH+wYASK+/vkKXtqU/ZC+lmoL
	 aEYeZNi/9hZJ4hkiw+3vG5cgTGnL+MobAgTAXC02bSEauFJKGyOYxbcbUdh7zmSxSz
	 csdh5Ajgntauh1/06saYSaE/zPnt64a16+MYXA5UuXa7clGLOtAUrv72s0JbQMCM5h
	 rwunmfqjXV+limH0HwgfG4BjdwM53VJd/QIbJ3tP2ohK3xQ716mbQwXbc5ZTCVVm/Q
	 P9PALiNdgmWQ/6GZzMYx2v8Zc/1NeNsgtqtLRaLnxbUGlJQHpum4yM0EA6PS2+x2ze
	 uTTiMa3UQ+O+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9641C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173957213366.22409.9553934669529186057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba32f58e4c4a16a0aaa7350070a84a8a926952759d36ed36d9262525cea49bee
Date: Fri, 14 Feb 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739572133
