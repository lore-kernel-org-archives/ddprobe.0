Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6E82343AF
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745572794; cv=none; b=QyFYZEOvbYVqDqahmYjL/3rWwIvgi3vnsztiwChUF/gUU0bASCSItU/aIhZDMlyn5M7QjvHE1L6TbYUQvfLqQ3aqIwavWF+cf+4IRJNYv5AjjewNKp5WILOtvwea3/n1fHSnkTx7fTIYv30ED20C4V7ZCCZycLLOyYwDS2T+QAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745572794; c=relaxed/simple;
	bh=hWSB7XVIEnLg7m2ZfDmT+hCyamQCjHK6uAlQOjZauX4=;
	h=To:Subject:From:Message-Id:Date; b=jgiiP0uiisy7+fBYT7QV9L6+J9xsU4aOgacyP2UYEHVRv42avq5ylmHsTfBpffRQXWPEvH4IXoWmrx/n7f+v+UNe7yG0p9arbUxlPWi1es9fKea6qGAb4orvTMi7u5WtYQrXNN7mAv8a5GMYURQs5X8cdLsfvJCwKfPVsR1feVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgH7lqRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgH7lqRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F540C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745572793;
	bh=hWSB7XVIEnLg7m2ZfDmT+hCyamQCjHK6uAlQOjZauX4=;
	h=To:Subject:From:Date:From;
	b=hgH7lqRwUS/jlOwvcvotzVOiA0hUjucEl4raexXr+zSso5F+PT8F6w+zROhg+p3XR
	 X118OMhs2bxbMgJZlR8PuQ0jTVg4uPSM9FMY1qY/KkOCJDkGLwE2eQhaDHTM2K3tGN
	 j8QBQXP4h/+d44C9H0lg/vmSFn5UvcY7u2w4GIsrg/y7R4WYSq1RF8WgA5KzGeXARy
	 qg4+sPd92TjOwa/s9QjpBKrnjgKy7Roec1Rr86C69gy0VteiZ6Qd3rvyfc1uMFs91Q
	 npXu+nTKmwqynYJEYXqmcJKzCeUiyP4dBii9FVvIpvIGPiS6Vs4q20Jy8+h8jWyZWq
	 /tLPM45PSnKqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE6C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557279358.7350.13207876553766190657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb235361d453c4cde556828e5e9c14b5eda35998a06244e0906a5396c1c4b98
Date: Fri, 25 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745572793
