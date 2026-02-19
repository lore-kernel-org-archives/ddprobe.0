Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED4633A70F
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771503294; cv=none; b=WeEqJah6T1JOty8CWuBA5s1AXKFmjaAZ2r6f3b9aOQput09ESgLZVWhdLgw8qjhone/c+JJilhBplU4WmD5uzuutf1VR0DRfwCOSCjvo+tkz01RWPvRCYHwVwUFVnBZP2RW6JHrS9gEWo7ijcCZmfXGXWzVmznXXXzqRk8qlIi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771503294; c=relaxed/simple;
	bh=WVOROjaVcSYALHCWcPkSsiEnfJ1GBuf/9UiDgr4PTpw=;
	h=To:Subject:From:Message-Id:Date; b=EAZox72APRj4D6G7UWHNfT/Haw2XbGg8RbO7SDWJ1ezlctR5/68eyrAlrt3hk7Z7B87PiZU79LTjykdRpDXx3utB/Fhufm34VSyUKqJOyEXxctdvl4p2o9XsN3zwoRrfuFwFEgdwDkie5FapI1jdFFr2+S6wca0/XGoE9kT0QAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tR1DKLbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tR1DKLbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79C4C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771503293;
	bh=WVOROjaVcSYALHCWcPkSsiEnfJ1GBuf/9UiDgr4PTpw=;
	h=To:Subject:From:Date:From;
	b=tR1DKLbHFKDdWP64hGyvM3h4Hlk5xp+dtWBnbC+5VhldZcxTYuT0ZtGlRdqq16rLp
	 9Y7FoVRtlcKDhZQJPVBDfVKnYxZNgP3g2pzec/+r47JXFeJ3qz24r2uwgXbRKVfPNs
	 +dNJQasx4whdVkNIcawI/qU9VQbyBGhIfbJWd/PCiVXQvA19fXz4QbHPsjofae6jLS
	 +htp+LZEcvclSwhfW1Jm/4n75S3OJu2ZOzlpDOaJGK9AczLp5SDLWp7M9kYD1ybk8s
	 asUk5Yp00QWq9qaIlezT5pItGOwoJ7ptkUbSOG7wWke21T4evcMEHPIq6V2zCc0wHP
	 HGaHRwqDj+RRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77A5E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150329367.28320.16327710366577855088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb36cd13dd17c9f687b4d328aa70840f752cd14a8613a8dbe02c157ddf6bb49
Date: Thu, 19 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771503293
