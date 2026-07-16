Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2393B37CD30
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784219314; cv=none; b=rHhVYjgqQJAZS2OXpTDQozGdKYaEMClmv8Tc5ssUJgpiBAg9XHQ6sK3LjK5ZTMR7RfT6FyIJErS2U4CGfTfkH9DcW0RBsGCHMAql1X5Dp/WGmKA7w7WP42OB+cDMKERaAwDznj0AcD312V380hb7ydohV3lJzI7d2JOLKHpthSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784219314; c=relaxed/simple;
	bh=dDlu9Gum9V6Xm6VOe7fGi7yQCzR74SGevgIo0J3nqSk=;
	h=To:Subject:From:Message-Id:Date; b=AoNb/zxR5UqnW9oWIiiyJZFQAU17x1TIu7WrvwnoqK4Yhac28yiEBGBiktc2+q3uLVCHglvRy21FNvN4/mPw/QXityR6gBG+j0bRh9CJBxBPzCDJcI19Pt0APQ+sq1RJI12mbFvvsaOxoj/PINtH48FZqrQ6/TuLeDrQ27S86CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeaflxpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeaflxpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD61C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784219313;
	bh=dDlu9Gum9V6Xm6VOe7fGi7yQCzR74SGevgIo0J3nqSk=;
	h=To:Subject:From:Date:From;
	b=FeaflxpKKpyCrgkf+5uDi569QzsdLKd0iZ+YqzMRypEnDPccfblfGgdaWLj4tbLcC
	 jcJ1NYGPd0DLbtMX9F/Ij0IvPasqlFCsT4jDpBUEPw/3bFuQZH7H/JS/lU80dqLeny
	 j/YU6AcyRmVd9unuvCIqwC5CbdgyjRppBeCNNPeGnln1Uq9dGFpEGd+JdomZwR1+at
	 lTuv0qab2V5xxxOSxWaS7GwPkTcnY2OuQEEEXs0yBXwd8Z6YaVZ0Tfrdo/dRHY/Cy5
	 b9nuDVZhy3xRTAiYESLMUOOs0IXrFyyYfLaoWWrkKLjLMmHeh/67PnjIA3o1ZjKklW
	 8lVldjMf4VTmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC27EC44511
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421931368.14127.12604152905307868390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723676484777dd2afed84ea431d4cd67d3ca60bda66dac761a11f7ceb7257572
Date: Thu, 16 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784219313
