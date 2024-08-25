Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286FB1D69E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724563554; cv=none; b=RJn4Fs3YjFzHmhZKfT5R05eqsOX9hLZTwusW9GibmOAxfnUsPoutZTLXDAVN85U8IQaJLghMdpwZqYHbbjWKDac6QXvInk3Ln/aJLEbkJnwNzxskmnE5aW7r6m+Ej3FvLmZWB8VZhfoA70M7gpaI3ES+ZFpmhnHQbB1UqfFKWNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724563554; c=relaxed/simple;
	bh=FSLLs86y1mgpzRM5Lmw18cST2LbqEh+KEn9Qna7RiWo=;
	h=To:Subject:From:Message-Id:Date; b=tqokMoyj/mFtsZhzdGlvUH2wXfdG9wnMM2AFDWYONReysDXAaFWwxqIVFTGxVXsPApBLxVrNzuZqCfW4tZ4T9gp5fz/5UHTKzzVk9TM4ivu5yu42ZPXsNJDOypOm7h/sy90Z7ze7TiWkflLytkzej4u/fxQPJWj8VakU7OuP1z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpl9gIzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpl9gIzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5132C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724563553;
	bh=FSLLs86y1mgpzRM5Lmw18cST2LbqEh+KEn9Qna7RiWo=;
	h=To:Subject:From:Date:From;
	b=mpl9gIzzRhkVX7TNN36pPpMHDKHiU/ajpKyjXJ+JFuXj3cn7YTBUt5kIU5u9VrPu0
	 gv0L4xfQl77slJjGBjhjy04Is3V/C3bitcZLQ3QUTUWOBi6e85G49KgfIEKju2QceP
	 qYkik/+G6XxakYXRjkOvTK8rozmwc8sgJkmOHQ8FxDL4rX5hvBl6esPAW4nZOkglyq
	 zVcaQed+B4kNAwkLoeq7QFsdYybbQt5uY8goemXiiUwFlrU7QcJKoaAn/bkOgemqwm
	 846+4OpP/RMrbhpjJdUS5hyL8I5O4SrZakeFXVztO1xHRbXSp1bFuyAz4OkMbhJqm9
	 rWIW12XcGpFgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D7C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172456355357.6979.17217416176790234978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe12e365d244bd6a4752b07b0d1b8409a344444b99af9867f2b9ffe12bf5e98b
Date: Sun, 25 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724563553
