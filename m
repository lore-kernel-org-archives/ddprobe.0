Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55624389
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714346543; cv=none; b=NszjRUTldxEX4qFAlPaJOMBE2RWoS42sg83QqEjWff+DhCyJF5Fugi2x89/9q66849mXL+9kR3QaMnx/DaOcLob0PwEPKVMxxvCcooRtEQcugXv5MrzEPlJtRgLpBnBrlKsYaQYbAojWLKygUu1wbPFXE2OviZdru/vywZLaxsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714346543; c=relaxed/simple;
	bh=9sUxLeaYuoakREfDmGdjOPjwtrq8DiIr4vlMYajHgc0=;
	h=To:Subject:From:Message-Id:Date; b=XfLnU+MB2iop1TRWRdZyMbFCuBbCu92wfC4OZVQMcDyCME3aFHx2rW9SB26A+6v9wjXOemthYuMat6e0/JGoVsSdq2Pqiql3i99JCV2YF+UJb+7seB6EZm2dc9T1OEVxNIKUUsYkS/TJp48DPtYvky7cW9HbfuG+l9S1w6wvigM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii0dG5zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii0dG5zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D360CC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714346542;
	bh=9sUxLeaYuoakREfDmGdjOPjwtrq8DiIr4vlMYajHgc0=;
	h=To:Subject:From:Date:From;
	b=ii0dG5zt32tmVFm9mkWSymIunEck/kQ4BnZ5OUj2WdTipuzWVGHpIOC7FHvXxskwV
	 exTrTiKzqjuObGwINkv9HjHE769XyQz7dtw1ijYnR9Cfu7/pGq4qQyKpv4PjzBLQee
	 F+zLLAMVVH/3sNx0htb8kPKJP/rl7VFTIxxnpSWa+8f5lwhvSbVyZlwPcw9grfmQ/M
	 +n6Y1JPAsBnNdw7umAkpBbIUEpW9gqOPrWM3dBnx84t9m3lPhK4oGTccwTu7GtDadI
	 LuIPmkHwOf39n26Mup72HhuY0Ptdbvrq+b4sw7vPaMcnx4Z4+1Fmhmed+nDdEbgpQu
	 niHug9Yt8wQPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DF2C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434654276.29309.5011566333947907923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb69a0ec8c5b54a3c6ee926889db8a6f97e4033ff66842761fc69b9cc3cc954a
Date: Sun, 28 Apr 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714346542
