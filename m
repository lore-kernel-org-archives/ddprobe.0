Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FA341324C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770303834; cv=none; b=PYnUYv9Pf31Y2oOf78WO0wBYY+COzlwhRGX2UVsRaqSbc8CraQBGDMERaXlvnaS3scIo4XPDs5BEJhRYe2R33w0t7nmiiOe6eGY+1O+m7gcs/JUzYNdMGbbJonW/5UJEEpGK0hUOAhKdqqccXuNeae0fCQtJHuK9fk3iB9sqLM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770303834; c=relaxed/simple;
	bh=mTUQbSpIZ+dwr+wQ7il/8xhpVf1PrBO4LyA1HELC8dQ=;
	h=To:Subject:From:Message-Id:Date; b=ZhyoAAZyfA9z2q9iUE10rehl5ZMrFhdTqeB3kev6MHhKo1I+sbl2ZWLVTgYHyZ8/ShlXSUhqhuEe1MZWbsC1eWEUdn4jexISz0+7pNSlOykt9UD6mGqs2lgVLCmCjFi5SDwcdw+KuM7mLeGogk7nooR04dXGLzi6rnIuLFT1Oro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VExpaywK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VExpaywK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B873BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770303833;
	bh=mTUQbSpIZ+dwr+wQ7il/8xhpVf1PrBO4LyA1HELC8dQ=;
	h=To:Subject:From:Date:From;
	b=VExpaywKgSnipJF1hWlOchAOoW3ZX2d11dvhBbsrganKrxPgCOf+xz1WL50kF466N
	 fXEi0ZM+JdpRWYuY8xD7ZJgLglMk7OBZfbp96SICONIvtvctKU0UcEni3EkRWppI+4
	 upmREm7331Ey8vYjvETZXgrHRV49YdFDzT5WxMnXjyHV2iYIh0St1km1zE/hV+xSXI
	 5CcmScMhNE5GKQgyOK4zgEKRvcx/nfNFE+vVZA5inCsedfO4KBZWUV5ZJPDDAgMSWh
	 hR/8qKmq5/xm4n6iZxbNIXSSE0SLWfP889uT9iYOA4HJ10J0Y/05+s7bpgtRGijn8s
	 ao3kWi/QwJjRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFC9EC1EBC
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030383364.15405.16115320282295930091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f284a6befe5d14d28e23ff70f2de178b6923c4875f9715632420a0d1dfba46
Date: Thu, 05 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770303833
