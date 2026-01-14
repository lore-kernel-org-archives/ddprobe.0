Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B562FBDFF
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768426434; cv=none; b=lRq4f9U+3+wPdBSVl2Bp+v0L1FgHEqUU453Rdp3tdpfA1VjYwC6xl5fCcNHU1lsvk6eRD3pmN0WWO6LWT0epU7ygIFzoGfIPxGdLRPsGJu4dknPLJF8GfnNXWWe9o9MginBkv7MSLYrR6veMxwlVGamKmnLVze65NSpsMIqzYKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768426434; c=relaxed/simple;
	bh=UrfAUBu+iNDpEdZgYKxEPUeU/v8qYrISqRe6Wf4JniY=;
	h=To:Subject:From:Message-Id:Date; b=Cr+ATu0wEvXINAqYYPmbTAfcyzest71PHTT863ymrR9CAoV8C0AegAb+fIm+P6/T2Cz4gsxqLzIcwmU05gXQdO0LrwMDZln5rHCEOyQff2Eg2HaXROxu64lPnyEmlgyqULIrjL1jVJWpP0LZf8TEXQ0sImNSdBzRssLlRRkNGC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJqr79WE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJqr79WE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A71C19425
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768426433;
	bh=UrfAUBu+iNDpEdZgYKxEPUeU/v8qYrISqRe6Wf4JniY=;
	h=To:Subject:From:Date:From;
	b=dJqr79WEyDOjw4W1AuMvMh6mouGtIFd7ljLGB1ju9vG0P6ek1XBTXvz1cLUaqKoqe
	 r+5VzewQ1b9VEVaEpvAnFSyEAF78FLzun+5xl3+hTjSJ99GGmDwnAYhZaNnHeK2Cz+
	 iWIZ9azcggJS9gq6Wm5S6NA7rmRHFlf67fQwy79n9ZTV0dRK+UvE+pxO56M7jU+geL
	 icBcj3Z5vvbVOEGiiOqb5xjAvTDpktpgr23AVLv49EsdYRTGcfzsVqcuFFLCMnGY1o
	 lKRFek3+Z5PrngNv02rTTesP+kqQ0BFEiF5t+UQv11SMsB0WNWuB31IzBDg9iKDBgw
	 fDyTmB3AjEouA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92716D3901B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842643359.6820.1161658086816609328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e8b06a0a0e49fee99b424cc56c27bd101b9c59922411aab790057c4b2095ce
Date: Wed, 14 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768426433
