Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418C376BF4
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774937094; cv=none; b=WoYEPwyzowyy4IZzLaEyDFMCSCTFnlJYcxlpHIUGpfdobE54OCu7Xz5ouRSt6Z7nB7ezA4xKGLQdH5RWgEiG2y+RYJvhH5c+LRJXDt95BS05ARJvOSC3cuFcy24d0DXNWrNIFeO+jfU+jJcokVZNc/5yBn22ZIE4hjn3y0Xg0uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774937094; c=relaxed/simple;
	bh=5781Mm/4Hfsb3fBDjBuzBfhDu8OK49fGygVwLcEUCn8=;
	h=To:Subject:From:Message-Id:Date; b=K7I80qp1XR/SD8rQV+z+Xlnl1854XETmFaEY0oq0Dsorc7bB0hAATUBsR/BA6+jo59pBhuAu6YAaPVv51E2hNYV4Sbbd+RvMvWvzy5luyR/I3hJXCOqlXA/CVqs8Hh7wob6rsxX2QQBTRFz2iZ6zsX5XLUWPCSo7eWg23TUb9xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYnd0JRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYnd0JRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF878C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774937093;
	bh=5781Mm/4Hfsb3fBDjBuzBfhDu8OK49fGygVwLcEUCn8=;
	h=To:Subject:From:Date:From;
	b=qYnd0JRSOWdtMcX6qzELlmvFjQeeADQEd/2YLDPbzI7w6Lnolsp0FyRSULOYUumtl
	 HuGWcDGHECLGaewQK7JOXVmdoYezfJ3Y+uTGkaukh5W5JGpWMCRlqJPbBRSgO8l9Fm
	 XXmTVRwKj+VeJKgh4f6wUmMFzR2z0vOgVz7YUitDa8C8HBtp5NZqmQjNepoh1bhSd1
	 rhGY3P0Bnzt64MN6323LspomBsbx+asMH8fYhL+Il6yX4oJN1+hDOHVzHOL0JC2JDA
	 4+5Pwt4Ld3FOBMg2Z0dZ5CmdF0h0GCuD/t1pee4Ku93b/YXrJ1X8YRZU3ddGUjYNo9
	 1XGJC6QZkbULw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6B5FF60CF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493709363.31678.17530493188340237635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431d28164323b00d34b337e5019acbf5ced2c067427f2cb7855bd7b73b9dfbc9
Date: Tue, 31 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774937093
