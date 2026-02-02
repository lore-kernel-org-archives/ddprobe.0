Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC09223705
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770051234; cv=none; b=DBXc3+QjJsckzQTJhHTA1UnYTD/ixn8zJ/38lj0lKjW3dLkgf+KmBsf1Ag29s3OkS0wVgTUb4FTzYPwLecFMUjQuWPya2/uhgQsze9lXXAxL43XrQ5wOWyYXOtfjpg/Oc2MIsBbMTC7MyW4Yga2gp56Ucnt0Rl9OlVx+Jofz/g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770051234; c=relaxed/simple;
	bh=DA9fkKYhONeQY9TQGYOlr4GLoODCx7uzXLJZmRTKdTw=;
	h=To:Subject:From:Message-Id:Date; b=PB+O4KlA6z40nSc8fOhGJN2v/OIvg5fRs+nTdlVzQzp0kpgCZHW+FLfv5egjJsRG55iiKkHzPCJOGFJP8ILripHSF83+UFjvHIahqz9JeLc8FDI64rXFM9uCwJoNRBnLRQk0YsQmBOkZ/6lM88CGGkVETGEtYVl60Me5jNdAsa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/8AFLr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/8AFLr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B0DC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770051233;
	bh=DA9fkKYhONeQY9TQGYOlr4GLoODCx7uzXLJZmRTKdTw=;
	h=To:Subject:From:Date:From;
	b=M/8AFLr8Hi0VguHRcc9YAz17rEqmKqATyVr6HhvVDtyYMwuIM8gqTBKWB6uJrhJvK
	 Sl3Xn/0fuNQhc4C4z5ARP18Gc8J5zZk7GwokA0fj51+ZeBXyxDlWTVkV+x01VPZfye
	 SOhNRP+XGupfrkrs00QUTixmBB5BgXNkVLi5wo6UAkiq6gFUYz9xKCGRkW20ux96nL
	 zKjL8j9H45sdQ5S2n6xv9JSrL0zUgVQrR+GjwsGoSY2set/WfOTy3oPc5eTBTI0Jeb
	 Rysvt3bHFX5U+iWnzBnkTZMxZ4m9XduDZXsMlcnX0QNuvPlJtYqumwCoWnirJ3miM0
	 5Boja8njWhBbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BECDE7DF0A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005123362.8525.3021329219505009937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e4777f0d6d0d26568ef2fe46891aa00f61cec486af307fa55a6ce7da35b2e2
Date: Mon, 02 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770051233
