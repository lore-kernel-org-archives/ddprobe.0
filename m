Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1732D19D89B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753495794; cv=none; b=GyXXZmNDDJG8YXIIF1jDdhKglSmukXZEEdSCmX00m5ugq7nsBlLOkCLXkvPy/xZFA7qNCxCBrRIzXevZ1a8eq9j5HQcVj2reEsPew30MJ6I2MMwUppeeOkwXXffQyoBiZ3d4cjmXFjpqfTD8jdjSerw3X6iQ0WQWIq7vO3XZp5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753495794; c=relaxed/simple;
	bh=Wd5nyiZPW+WBTkJmjuPH6iZCc8guqEqXLiMeGnOaER8=;
	h=To:Subject:From:Message-Id:Date; b=CrGgn1EuCqR+QJa6UynhdGAodtoUQ3M+OFrpTY/+hGL55TZJaDGR0hZM3HnvB8Bw/og0s1Nusx8oM4ryTqtfu0hl4GzPgdqPLu/CfUnbMZa1wnOl9jqgaVbjeVH2To4WR3xIx48ANmI8tP4pX23iltSmIvzT7jBLa+K5mn2JlZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnsRx7id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnsRx7id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E07FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753495793;
	bh=Wd5nyiZPW+WBTkJmjuPH6iZCc8guqEqXLiMeGnOaER8=;
	h=To:Subject:From:Date:From;
	b=KnsRx7idiun1S2pA96j9KQjV8FxctZ7v/tV5o5AVTNt0hf7gk0rLLMZSO1ri07hp6
	 3AhDZii7q5KbZas6yrqlDKguPmaRxDt7TnSN2LYGi07yXzhZdL/uttj0WamvChyj/U
	 tb2i8wllt5jwfn52n2pMJnThgOYDz+mQZP7957iNZL2H2I9RVCohmfbRz7mdigCNo8
	 Uly307pUhuXffCuAuiU55gnfxzXBFxi8CIER5tKnD2JqdOGZKWqvL/J8ooPkpTy/eH
	 NEOsQF78TIbjpW9JSCHIMUopOxyKVZYXlLc4yQsfajVFrWZeLTinsQmV1ZJngc2JgX
	 8TW29CQXNhFrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5EC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349579357.24606.5859022201380334527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a7561625cd933409976a622a45dcd73f00b6f031fd56e7dd248706ffaa22bc
Date: Sat, 26 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753495793
