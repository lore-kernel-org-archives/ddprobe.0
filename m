Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7EE13ACC
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 01:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721266523; cv=none; b=beDVSZaCReoOpYGcxC7Q+RakpjKcdUHef8qlxwcT2JLTZronAyvqviesZz0yyK3Tq9lCuvS1w4RFnzGIJo39LGT9ausaV43wfDsUqB/lzr3BJtDTTO5Qy8PW/ywQqIH63B2wwcuC6SsMyD08aVbXatqBwfc3PGvQ7OGuWRzXEN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721266523; c=relaxed/simple;
	bh=cIX0f/l8s0OK60XKTNyoyOBb/E7QqJRa0UWPyIZV1Pc=;
	h=To:Subject:From:Message-Id:Date; b=tOkBWtVSUfxslVL+7h/mB1GV+MXLm895mpVqEUHMvrds9izfATbx2owc5ycyL7vXfmmHZKA+YPvlttctmIU00cOl5RjbbUqpF7mTX33XUnYkxFEF3LypcHO8n1H/UWdlzWtIQdtJCVADuyiXpy4IoNdiXeQlh7MTGzCvwPHU5js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqoW2HQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqoW2HQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC6CC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 01:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721266522;
	bh=cIX0f/l8s0OK60XKTNyoyOBb/E7QqJRa0UWPyIZV1Pc=;
	h=To:Subject:From:Date:From;
	b=oqoW2HQmDlViogtG/wOr+1y7izuV95tDrnbMgrFc1bgVidr+iMjbr1eY+CEfnHZBY
	 fZ88oPlwvKYqQ6Pm20O0LfsOEv4efNccFj/O7uW/9Z+Xi6x7rISjgJt7vkfJ2mncCD
	 H3kAixQRSKrCIp2AdweC0dHXsJzuli4VYyxwJmdVC6g8lH/ACqdGanwCF6T+k601eF
	 y7VxDUDKs3mBAVC8FyqomI/I2ND8NgQHOkbkdZCNFFV+2eX+E9J5gzMHPb8l4c4AzI
	 qG4Nd3huxnL/uVsTg2+UrjssQ/f8dGXvkkcsah+1qyOuojkdaS5iZwrv3XaK+w9Mr7
	 P1V1qmEBFFj7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB79AC3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 01:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172126652275.18902.16464610613253455724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b597424edbb278169edce74258fe6d44658c727b4abc57a1a545197a7dc6b421
Date: Thu, 18 Jul 2024 01:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721266522
