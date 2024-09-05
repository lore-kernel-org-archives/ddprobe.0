Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F11B1925B5
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725522954; cv=none; b=QfdgIAPvuB6wCELUpyEQF9PfMpK+dMTdHoXonGLVGczg6VGP3NnMSrg/rbgCqx2t7aEHz0lgVjmGem5KXmWCh6udxcYCmD55FCUyxLSMuIps1Yt/nKPAi2ZZMjvz0VbJ3ttOkEFJrjXEsLYAV9/mtYxZHEIJDbVX4odfV3MP0ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725522954; c=relaxed/simple;
	bh=92xvZIQI+CxFwBHvmca+hDsi8Kt26t3kWt89wRWmif0=;
	h=To:Subject:From:Message-Id:Date; b=bj91KC0r8J+gnoFErjyQGvfZqW4qXmR0YZ/ivmvMH2ojdBUTk5lGa4f9OEeCdWHqPxOH1/T/9YsvjJGGg5IDJTjn5zAMzIu4imhVTrnIGlci06wVAy6b9YPp/dBRK0UU5i1F+XD6JDqbMCNzJVY6F3DxMNp9sQxNhfKO61sFE2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSV+xonp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSV+xonp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D4EC4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725522953;
	bh=92xvZIQI+CxFwBHvmca+hDsi8Kt26t3kWt89wRWmif0=;
	h=To:Subject:From:Date:From;
	b=QSV+xonpQBB9UiPgaBR8SO32tdt3+kgCn7fKAi33kEcEsU23euNZgSfFdx+JcHwT9
	 YCUpXBzskMwWFzJDvBOz1ED5IBnCSDZJmWLPJ+X/wLH1KSRemL5l6xD8KdRb4Fs+vg
	 OpmvSiHmSevyAu53J8g/6CQ18EDk9dl2LwHXFRiVcIBodrMhqpwIVZ/rxiqdIyiWVr
	 YiINsysDsCIAVj5Wk55CvuYUcZOtyqMfDmvhDKLyb8ALCoXK1DRSZ++PxUrxbHaPML
	 G0yC+SVc1dt6AVnO+b+CkMI+li5CUXQTVZRnOG6b+9O6y/KybrS3JNuEH3GrmISful
	 bkd1RHRerZ/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E98ECD4F5B
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172552295363.577.18318070581293309636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6607f784f5ddc4c108d9dd345ce324846902f60fe3ba21c977d83c319d578abf
Date: Thu, 05 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725522953
