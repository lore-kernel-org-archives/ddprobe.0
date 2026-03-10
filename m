Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4D1366824
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773183294; cv=none; b=e6NsAoc0H6YvCKXYaG1X624fOqSnVEIAGZ/MGl20iHIDha5WsYSFqDoWBbpL8WTyjLaNXiV9vcYcD220FYSfntScaG9kxayUYwkkzBw90kXHYmW4bOTscIgqQilTWPbDH4oq/vTOz6IjNd5l9wdVkMrG4ExafHh60ox1x0PVcKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773183294; c=relaxed/simple;
	bh=QqC9R/WNS9dXsqy79/HBW/wUE22mwP+wwUdMTMbxLRs=;
	h=To:Subject:From:Message-Id:Date; b=Th5XkhGqzhaTXjrnnv/VyL+p+xb/ZogOaJ5mXtsNQToBJ3PhgFN7QzqpCv3JX1zYZUys0XpdhG+MAkwF0BPXPf0vzstBWr6KWR2aMJuMNdSQtv26RrqcrowEehkx/xs88B4MTNq7LD+4mRbIwQ8LuRQEEd5F6kRUSAfc8IwZoR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZW17UvXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZW17UvXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90BEC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773183293;
	bh=QqC9R/WNS9dXsqy79/HBW/wUE22mwP+wwUdMTMbxLRs=;
	h=To:Subject:From:Date:From;
	b=ZW17UvXt4Kbe1Uogz32eMfH+uK6IvA+mSN5hTNasIEvIoFEx6udmsex4FDcRiue5P
	 IFa/UNANhKqYbsXnJW0RR21AGpPSS56Exw/lM5D/DvQyd74isHbD7q9K3vTFAZRPak
	 OuLvGJEhJdj3f5RkQ9PxT3m9vbhcMhJ1X4hxqZ79aiR+N/JHFRFFaH3ZNDShB/nJY0
	 sGs4uFtbtxgoRAjyE5MxJMjOGssVJUP1IPWto0XRc2iC9Wpr/v8VLKcHeoWSyCEXA7
	 ZffmopJPBn8PdSxl3lB3+pUGcZZh9mnW+9mfrnxbv9SbFgvoHrkv3c4a38mGGcXRmy
	 3wY/d04Q3NNqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC9FD88C5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318329359.707.11669931209207240059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7df8c87d87676b9c8342c3d88f56348717cb14d4d8ec5d1c3dcad13ac0b27c
Date: Tue, 10 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773183293
