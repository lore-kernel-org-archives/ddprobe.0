Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2499B175BF
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759579794; cv=none; b=eDFZHqPo+/J1w72CJDxL7B+sgjhd/Tzds5FOHbynQiYShCOKeH2xhtKi7lzXcdEvEwiCk3cTlsf0VYFn9uQ61IbLaLtNXjhY1FewD18L5MkOAz3dnzOKEeO5cq1vuWaNfXEHySjqWFBVlRWQYmWWhvkTOHFThw4WQp1nbffRNZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759579794; c=relaxed/simple;
	bh=7MpyZf3I3g1lcOabTchD7+HHxHwVu5B83VcYiY9Lsx0=;
	h=To:Subject:From:Message-Id:Date; b=WTjzPZd1mxwavUiYNCAgD0i1RWSmi4hOhDWl/9gM6yq3YEHwjxu8jOgeN9hCaETI03ZZa5MuMNXaQF+zVHqmMX8ijzFaVYKkV+CWqaatIK6mrS8bLNtrAkmXnh2+Y8X5iUYdBPMW2heVC8XGQ9YaLPud0LB8APOeU9yukF+hUkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xmcgkhgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xmcgkhgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4B9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759579793;
	bh=7MpyZf3I3g1lcOabTchD7+HHxHwVu5B83VcYiY9Lsx0=;
	h=To:Subject:From:Date:From;
	b=XmcgkhgvowWbKOt+6VL3r+9N9ioZ7C99oWsif0v9GfBA90a4twcDu34lpqrGBBHs8
	 F+eaMmfPwo6ikNm4Ixyz5VUKe6gzoS+mFte56O9P5zt57SKsAZyK326xWAI/xaOgYY
	 CN1QQwNnk2Ws6cvxkyYoAlKTg3zU7kvudmv/gqAXBhS3aWsfJhXW4eTD/3P4gp9FCn
	 qsT6YlcMSib3LgP2vIM7gFRTlxkNj8fvagEf18OrirYxug3wPFzKA+kox3c+WKJuBq
	 RrPyRmRqCY/2xQgO7XGBguH8aQ7UZSXX13iXGeQC7wAXV+w0mMbPopOKRRQTIjIySF
	 3850c+q7xz8rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F15CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957979359.8154.15153841225208279357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325c7391d81c21f99e9f772f69f38ce77f153d43d63a44899580e221759551b9
Date: Sat, 04 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759579793
