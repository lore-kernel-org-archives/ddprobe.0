Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD05251792
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746143994; cv=none; b=qYnHiFoIVsxf0IjDmdwnOErlmQZ741zYTLBrUfBlBoxqmadPzQ5JVo26CwQn5CFu2mSugm2FMck/tWeJ+3WR6lp8KWxJtzP9yUDx9c/91PaxWsY23u1rpW3EhBEqq3mz3HhsQ60iD2PhkcTlW98XyR37tEOAkZdAv9CvEp10VMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746143994; c=relaxed/simple;
	bh=G6uWNeJRtr1pr8YXYpiCIFPBGU17+iuKG/5B2o8jzCo=;
	h=To:Subject:From:Message-Id:Date; b=SXnh2ALzo4gkR/FFifuFSr3gBg2imvF2Sj2Yg/QWlJy2rCYKKD0mSy9oiZN5zZQyKeg3nJlIgTAxz2VYLq0F/TEDuWTfbRn/XR2lBbz9bsPbwsWHuvcH9OaYmwlhOrgqWpzB7y1mqHU2f7eCXfhW2vdLn7wmMGwZ2TxBHSpzofc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAazYVV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAazYVV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48D4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746143993;
	bh=G6uWNeJRtr1pr8YXYpiCIFPBGU17+iuKG/5B2o8jzCo=;
	h=To:Subject:From:Date:From;
	b=TAazYVV6YnKfEl9uNg2A+myTeB70TysvdCkcJZMSsbnLU2Tti9IIKi+wXr7wuy4Of
	 yK6ICnaSkWDbbNSXmgsU3LCLsgccn3vjtY4rxK3yoRq/UDeaFR19xkn4JrHfdJZa0r
	 k5y622kll7JNS9IBthsbT7Px8EzkYwSxX2ligb8b4/b/Tty1LwZTpbc2msVPn931hb
	 PiddSoU+QrAoN52JyKey/3NcmwWVUuDOhgzTwKIHlcKBoeZ8syaqacErf93svegC8y
	 EITnsibcKFudmtTV3Qh8MdWDu5ug7+aOa7TxFeBT0NZLej9J0J4ejeSvx+voEzomqk
	 wL0gRsReiWtlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC29C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614399358.16180.12759307192808258975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0299fd241bcdc239025a65dde3419984ceeec96d2351ef0a4449151ecfd2d385
Date: Thu, 01 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746143993
