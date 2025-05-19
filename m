Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3790027CB0D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747663194; cv=none; b=nVLpiVB5aeA+/MU7bv97/TgTRD7shlOlZiMXG4F1ADfq+3PG/E13f//y+hhWt0CtG6JF10zhulqDKcFkaKeuBWPo66Os3FOnbQopMyV9bUi/EFgONCwdbNdHu/ottyri0Jy19KJX2bMRPTPuvuQSZgKUi2b9i+EHOAfdyR0dFIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747663194; c=relaxed/simple;
	bh=5ovNnLteD0kJI/LpGliLoYik7LJCj/JWzou4hgOInrA=;
	h=To:Subject:From:Message-Id:Date; b=PakYGGOYZZk46w8a+xl4PKXuJcCXT2Sdt9n1A0nGac82sO/vJI58ayjl2/ldfLRSy6SYyryhLiQluUxBsesbr0jDLju/Erme4bwGGLaz77KCkMBNyQZUwG0/K9Eu6xmBUE10O2FTTjsa1j4kUoBr3YMZMN9tefKAQNNXMdjepvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSi92r2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSi92r2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE54C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747663193;
	bh=5ovNnLteD0kJI/LpGliLoYik7LJCj/JWzou4hgOInrA=;
	h=To:Subject:From:Date:From;
	b=qSi92r2OB8kI0muWkTcGWgxUA80OOCcDd42fRxe2eQJrVTbUfwHenoN0muP0drMLm
	 Q4RBUyXr7oPZ6WpDHXQMmxi+/hyUXPz11JqXs2y4l2YZTwPOvqfEeotofoYGwvGG42
	 DjdGgfoTKT2Kn7enxZ9y1Y1Prb1iJTJiWniGlNYLzNUkQbJ5YMFYPZh0dOU3C0tPUC
	 1YjCMMhVQXV2/JFzDzJS27AIEOapRnrlx3dfYA3QgK62mzmo6zYv63bbVVYnK/Hadv
	 NAz/e9gG2Ss08YAszns+nxxSm/kpEX/A+SzRA+PYBdFkY1Ok0g8lMSm81IjSic4UEV
	 gp1THYJ7ufXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E53EC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766319357.25199.18393614612324480827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c9ba80ae6a616120756f1f2cb59f586be50c2906973875a3d0c8828880e183
Date: Mon, 19 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747663193
